package com.google.android.gms.internal.ads;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
public final class ri extends hb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final sj f5509a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SSLSocketFactory f5510b;

    public ri() {
        this(null);
    }

    private ri(sj sjVar) {
        this(null, null);
    }

    private ri(sj sjVar, SSLSocketFactory sSLSocketFactory) {
        this.f5509a = null;
        this.f5510b = null;
    }

    private static InputStream a(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException e) {
            return httpURLConnection.getErrorStream();
        }
    }

    private static List<apn> a(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    arrayList.add(new apn(entry.getKey(), it.next()));
                }
            }
        }
        return arrayList;
    }

    private static void a(HttpURLConnection httpURLConnection, avg<?> avgVar) throws IOException, a {
        byte[] bArrA = avgVar.a();
        if (bArrA != null) {
            httpURLConnection.setDoOutput(true);
            String strValueOf = String.valueOf(Constants.UTF8_NAME);
            httpURLConnection.addRequestProperty("Content-Type", strValueOf.length() != 0 ? "application/x-www-form-urlencoded; charset=".concat(strValueOf) : new String("application/x-www-form-urlencoded; charset="));
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(bArrA);
            dataOutputStream.close();
        }
    }

    @Override // com.google.android.gms.internal.ads.hb
    public final pg a(avg<?> avgVar, Map<String, String> map) throws IOException, a {
        String strA;
        String strE = avgVar.e();
        HashMap map2 = new HashMap();
        map2.putAll(avgVar.b());
        map2.putAll(map);
        if (this.f5509a != null) {
            strA = this.f5509a.a(strE);
            if (strA == null) {
                String strValueOf = String.valueOf(strE);
                throw new IOException(strValueOf.length() != 0 ? "URL blocked by rewriter: ".concat(strValueOf) : new String("URL blocked by rewriter: "));
            }
        } else {
            strA = strE;
        }
        URL url = new URL(strA);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int i = avgVar.i();
        httpURLConnection.setConnectTimeout(i);
        httpURLConnection.setReadTimeout(i);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        "https".equals(url.getProtocol());
        for (String str : map2.keySet()) {
            httpURLConnection.addRequestProperty(str, (String) map2.get(str));
        }
        switch (avgVar.c()) {
            case -1:
                break;
            case 0:
                httpURLConnection.setRequestMethod(Constants.HTTP_GET);
                break;
            case 1:
                httpURLConnection.setRequestMethod(Constants.HTTP_POST);
                a(httpURLConnection, avgVar);
                break;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                a(httpURLConnection, avgVar);
                break;
            case 3:
                httpURLConnection.setRequestMethod("DELETE");
                break;
            case 4:
                httpURLConnection.setRequestMethod("HEAD");
                break;
            case 5:
                httpURLConnection.setRequestMethod("OPTIONS");
                break;
            case 6:
                httpURLConnection.setRequestMethod("TRACE");
                break;
            case 7:
                httpURLConnection.setRequestMethod("PATCH");
                a(httpURLConnection, avgVar);
                break;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == -1) {
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        }
        return !(avgVar.c() != 4 && ((100 > responseCode || responseCode >= 200) && responseCode != 204 && responseCode != 304)) ? new pg(responseCode, a(httpURLConnection.getHeaderFields())) : new pg(responseCode, a(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), a(httpURLConnection));
    }
}
