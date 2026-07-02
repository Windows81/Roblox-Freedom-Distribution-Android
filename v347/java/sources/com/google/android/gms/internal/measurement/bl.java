package com.google.android.gms.internal.measurement;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.Locale;
import java.util.Map;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
final class bl extends p {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f5917c = "\n".getBytes();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final bw f5919b;

    bl(r rVar) {
        super(rVar);
        this.f5918a = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", "GoogleAnalytics", q.f6007a, Build.VERSION.RELEASE, ca.a(Locale.getDefault()), Build.MODEL, Build.ID);
        this.f5919b = new bw(rVar.c());
    }

    private final int a(URL url) {
        com.google.android.gms.common.internal.w.a(url);
        b("GET request", url);
        HttpURLConnection httpURLConnectionB = null;
        try {
            try {
                httpURLConnectionB = b(url);
                httpURLConnectionB.connect();
                a(httpURLConnectionB);
                int responseCode = httpURLConnectionB.getResponseCode();
                if (responseCode == 200) {
                    o().g();
                }
                b("GET status", Integer.valueOf(responseCode));
                if (httpURLConnectionB == null) {
                    return responseCode;
                }
                httpURLConnectionB.disconnect();
                return responseCode;
            } catch (IOException e) {
                d("Network GET connection error", e);
                if (httpURLConnectionB != null) {
                    httpURLConnectionB.disconnect();
                }
                return 0;
            }
        } catch (Throwable th) {
            if (httpURLConnectionB != null) {
                httpURLConnectionB.disconnect();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0089 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int a(java.net.URL r6, byte[] r7) throws java.lang.Throwable {
        /*
            r5 = this;
            r1 = 0
            com.google.android.gms.common.internal.w.a(r6)
            com.google.android.gms.common.internal.w.a(r7)
            java.lang.String r0 = "POST bytes, url"
            int r2 = r7.length
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r5.b(r0, r2, r6)
            boolean r0 = w()
            if (r0 == 0) goto L21
            java.lang.String r0 = "Post payload\n"
            java.lang.String r2 = new java.lang.String
            r2.<init>(r7)
            r5.a(r0, r2)
        L21:
            android.content.Context r0 = r5.j()     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L85
            r0.getPackageName()     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L85
            java.net.HttpURLConnection r2 = r5.b(r6)     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L85
            r0 = 1
            r2.setDoOutput(r0)     // Catch: java.lang.Throwable -> L99 java.io.IOException -> L9b
            int r0 = r7.length     // Catch: java.lang.Throwable -> L99 java.io.IOException -> L9b
            r2.setFixedLengthStreamingMode(r0)     // Catch: java.lang.Throwable -> L99 java.io.IOException -> L9b
            r2.connect()     // Catch: java.lang.Throwable -> L99 java.io.IOException -> L9b
            java.io.OutputStream r1 = r2.getOutputStream()     // Catch: java.lang.Throwable -> L99 java.io.IOException -> L9b
            r1.write(r7)     // Catch: java.lang.Throwable -> L99 java.io.IOException -> L9b
            r5.a(r2)     // Catch: java.lang.Throwable -> L99 java.io.IOException -> L9b
            int r0 = r2.getResponseCode()     // Catch: java.lang.Throwable -> L99 java.io.IOException -> L9b
            r3 = 200(0xc8, float:2.8E-43)
            if (r0 != r3) goto L50
            com.google.android.gms.internal.measurement.i r3 = r5.o()     // Catch: java.lang.Throwable -> L99 java.io.IOException -> L9b
            r3.g()     // Catch: java.lang.Throwable -> L99 java.io.IOException -> L9b
        L50:
            java.lang.String r3 = "POST status"
            java.lang.Integer r4 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L99 java.io.IOException -> L9b
            r5.b(r3, r4)     // Catch: java.lang.Throwable -> L99 java.io.IOException -> L9b
            if (r1 == 0) goto L5e
            r1.close()     // Catch: java.io.IOException -> L64
        L5e:
            if (r2 == 0) goto L63
            r2.disconnect()
        L63:
            return r0
        L64:
            r1 = move-exception
            java.lang.String r3 = "Error closing http post connection output stream"
            r5.e(r3, r1)
            goto L5e
        L6b:
            r0 = move-exception
            r2 = r1
        L6d:
            java.lang.String r3 = "Network POST connection error"
            r5.d(r3, r0)     // Catch: java.lang.Throwable -> L99
            if (r1 == 0) goto L77
            r1.close()     // Catch: java.io.IOException -> L7e
        L77:
            if (r2 == 0) goto L7c
            r2.disconnect()
        L7c:
            r0 = 0
            goto L63
        L7e:
            r0 = move-exception
            java.lang.String r1 = "Error closing http post connection output stream"
            r5.e(r1, r0)
            goto L77
        L85:
            r0 = move-exception
            r2 = r1
        L87:
            if (r1 == 0) goto L8c
            r1.close()     // Catch: java.io.IOException -> L92
        L8c:
            if (r2 == 0) goto L91
            r2.disconnect()
        L91:
            throw r0
        L92:
            r1 = move-exception
            java.lang.String r3 = "Error closing http post connection output stream"
            r5.e(r3, r1)
            goto L8c
        L99:
            r0 = move-exception
            goto L87
        L9b:
            r0 = move-exception
            goto L6d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.bl.a(java.net.URL, byte[]):int");
    }

    private final URL a(be beVar) {
        String strConcat;
        if (beVar.f()) {
            String strValueOf = String.valueOf(ar.h());
            String strValueOf2 = String.valueOf(ar.j());
            strConcat = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
        } else {
            String strValueOf3 = String.valueOf(ar.i());
            String strValueOf4 = String.valueOf(ar.j());
            strConcat = strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3);
        }
        try {
            return new URL(strConcat);
        } catch (MalformedURLException e) {
            e("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private final URL a(be beVar, String str) {
        String string;
        if (beVar.f()) {
            String strH = ar.h();
            String strJ = ar.j();
            string = new StringBuilder(String.valueOf(strH).length() + 1 + String.valueOf(strJ).length() + String.valueOf(str).length()).append(strH).append(strJ).append("?").append(str).toString();
        } else {
            String strI = ar.i();
            String strJ2 = ar.j();
            string = new StringBuilder(String.valueOf(strI).length() + 1 + String.valueOf(strJ2).length() + String.valueOf(str).length()).append(strI).append(strJ2).append("?").append(str).toString();
        }
        try {
            return new URL(string);
        } catch (MalformedURLException e) {
            e("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private static void a(StringBuilder sb, String str, String str2) throws UnsupportedEncodingException {
        if (sb.length() != 0) {
            sb.append('&');
        }
        sb.append(URLEncoder.encode(str, Constants.UTF8_NAME));
        sb.append('=');
        sb.append(URLEncoder.encode(str2, Constants.UTF8_NAME));
    }

    private final void a(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream = null;
        try {
            inputStream = httpURLConnection.getInputStream();
            do {
            } while (inputStream.read(new byte[1024]) > 0);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e("Error closing http connection input stream", e);
                }
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    e("Error closing http connection input stream", e2);
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int b(java.net.URL r11, byte[] r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 242
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.bl.b(java.net.URL, byte[]):int");
    }

    private final HttpURLConnection b(URL url) throws IOException {
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
            throw new IOException("Failed to obtain http connection");
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setDefaultUseCaches(false);
        httpURLConnection.setConnectTimeout(az.w.a().intValue());
        httpURLConnection.setReadTimeout(az.x.a().intValue());
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestProperty("User-Agent", this.f5918a);
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }

    private final URL d() {
        String strValueOf = String.valueOf(ar.h());
        String strValueOf2 = String.valueOf(az.n.a());
        try {
            return new URL(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
        } catch (MalformedURLException e) {
            e("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    final String a(be beVar, boolean z) {
        com.google.android.gms.common.internal.w.a(beVar);
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : beVar.b().entrySet()) {
                String key = entry.getKey();
                if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key) && !"z".equals(key) && !"_gmsv".equals(key)) {
                    a(sb, key, entry.getValue());
                }
            }
            a(sb, "ht", String.valueOf(beVar.d()));
            a(sb, "qt", String.valueOf(i().a() - beVar.d()));
            if (z) {
                long jG = beVar.g();
                a(sb, "z", jG != 0 ? String.valueOf(jG) : String.valueOf(beVar.c()));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            e("Failed to encode name or value", e);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<java.lang.Long> a(java.util.List<com.google.android.gms.internal.measurement.be> r10) {
        /*
            Method dump skipped, instruction units count: 450
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.bl.a(java.util.List):java.util.List");
    }

    @Override // com.google.android.gms.internal.measurement.p
    protected final void a() {
        a("Network initialized. User agent", this.f5918a);
    }

    public final boolean b() {
        NetworkInfo activeNetworkInfo;
        com.google.android.gms.analytics.s.d();
        y();
        try {
            activeNetworkInfo = ((ConnectivityManager) j().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException e) {
            activeNetworkInfo = null;
        }
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        b("No network connectivity");
        return false;
    }
}
