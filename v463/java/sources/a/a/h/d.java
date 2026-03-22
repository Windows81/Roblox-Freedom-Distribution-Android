package a.a.h;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f481a = d.class.getSimpleName();

    d() {
    }

    static a.a.g.c a(String str, String str2, List<String> list, a.a.g.b.d dVar, a.a.d.b bVar) throws Throwable {
        a.a.g.c cVarA;
        HttpURLConnection httpURLConnection;
        int responseCode;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                try {
                    httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                } catch (Exception e2) {
                    a.a.f.a.a(f481a, "Disconnecting HttpUrlConnection failed", e2);
                    return a.a.g.c.a(dVar, e2);
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setChunkedStreamingMode(131072);
            httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
            httpURLConnection.setRequestProperty("Cache-Control", "no-cache");
            httpURLConnection.setRequestProperty("Content-Type", a.a.b.d.a());
            a.a.f.a.a(f481a, "HttpURLConnection successfully initialized");
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            a.a.b.d.a(dataOutputStream, str2);
            a.a.b.d.a(dataOutputStream, list);
            a.a.b.d.a(dataOutputStream);
            dataOutputStream.flush();
            dataOutputStream.close();
            responseCode = httpURLConnection.getResponseCode();
            a.a.f.a.a(f481a, "Received response status from Backtrace API for HTTP request is: " + Integer.toString(responseCode));
        } catch (Exception e4) {
            e = e4;
            httpURLConnection2 = httpURLConnection;
            if (bVar != null) {
                a.a.f.a.a(f481a, "Custom handler on server error");
                bVar.a(e);
            }
            a.a.f.a.a(f481a, "Sending HTTP request failed to Backtrace API", e);
            cVarA = a.a.g.c.a(dVar, e);
            if (httpURLConnection2 == null) {
                return cVarA;
            }
            httpURLConnection2.disconnect();
            a.a.f.a.a(f481a, "Disconnecting HttpUrlConnection successful");
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection2 = httpURLConnection;
            if (httpURLConnection2 != null) {
                try {
                    httpURLConnection2.disconnect();
                    a.a.f.a.a(f481a, "Disconnecting HttpUrlConnection successful");
                } catch (Exception e5) {
                    a.a.f.a.a(f481a, "Disconnecting HttpUrlConnection failed", e5);
                    a.a.g.c.a(dVar, e5);
                }
            }
            throw th;
        }
        if (responseCode == 200) {
            cVarA = a.a.b.a.a(a(httpURLConnection));
            cVarA.a(dVar);
            if (httpURLConnection == null) {
                return cVarA;
            }
            httpURLConnection.disconnect();
            a.a.f.a.a(f481a, "Disconnecting HttpUrlConnection successful");
            return cVarA;
        }
        String strA = a(httpURLConnection);
        if (strA == null || strA.equals("")) {
            strA = httpURLConnection.getResponseMessage();
        }
        throw new a.a.g.c.b(Integer.valueOf(responseCode), String.format("%s: %s", Integer.toString(responseCode), strA));
    }

    private static String a(HttpURLConnection httpURLConnection) throws IOException {
        InputStream errorStream;
        a.a.f.a.a(f481a, "Reading response from HTTP request");
        if (httpURLConnection.getResponseCode() < 400) {
            errorStream = httpURLConnection.getInputStream();
        } else {
            errorStream = httpURLConnection.getErrorStream();
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line != null) {
                sb.append(line);
            } else {
                bufferedReader.close();
                return sb.toString();
            }
        }
    }
}
