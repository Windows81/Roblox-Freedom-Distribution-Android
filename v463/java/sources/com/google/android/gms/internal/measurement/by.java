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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class by extends ac {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f4112c = "\n".getBytes();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final cj f4114b;

    by(ae aeVar) {
        super(aeVar);
        this.f4113a = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", "GoogleAnalytics", ad.f4008a, Build.VERSION.RELEASE, cn.a(Locale.getDefault()), Build.MODEL, Build.ID);
        this.f4114b = new cj(aeVar.c());
    }

    private final int a(URL url) {
        com.google.android.gms.common.internal.aa.a(url);
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
                if (httpURLConnectionB != null) {
                    httpURLConnectionB.disconnect();
                }
                return responseCode;
            } catch (IOException e2) {
                d("Network GET connection error", e2);
                if (httpURLConnectionB == null) {
                    return 0;
                }
                httpURLConnectionB.disconnect();
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
    /* JADX WARN: Removed duplicated region for block: B:43:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, java.net.URL] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.net.HttpURLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int a(java.net.URL r5, byte[] r6) throws java.lang.Throwable {
        /*
            r4 = this;
            java.lang.String r0 = "Error closing http post connection output stream"
            com.google.android.gms.common.internal.aa.a(r5)
            com.google.android.gms.common.internal.aa.a(r6)
            int r1 = r6.length
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.String r2 = "POST bytes, url"
            r4.b(r2, r1, r5)
            boolean r1 = w()
            if (r1 == 0) goto L22
            java.lang.String r1 = new java.lang.String
            r1.<init>(r6)
            java.lang.String r2 = "Post payload\n"
            r4.a(r2, r1)
        L22:
            r1 = 0
            android.content.Context r2 = r4.j()     // Catch: java.lang.Throwable -> L6d java.io.IOException -> L70
            r2.getPackageName()     // Catch: java.lang.Throwable -> L6d java.io.IOException -> L70
            java.net.HttpURLConnection r5 = r4.b(r5)     // Catch: java.lang.Throwable -> L6d java.io.IOException -> L70
            r2 = 1
            r5.setDoOutput(r2)     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L88
            int r2 = r6.length     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L88
            r5.setFixedLengthStreamingMode(r2)     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L88
            r5.connect()     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L88
            java.io.OutputStream r1 = r5.getOutputStream()     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L88
            r1.write(r6)     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L88
            r4.a(r5)     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L88
            int r6 = r5.getResponseCode()     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L88
            r2 = 200(0xc8, float:2.8E-43)
            if (r6 != r2) goto L52
            com.google.android.gms.internal.measurement.v r2 = r4.o()     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L88
            r2.g()     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L88
        L52:
            java.lang.String r2 = "POST status"
            java.lang.Integer r3 = java.lang.Integer.valueOf(r6)     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L88
            r4.b(r2, r3)     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L88
            if (r1 == 0) goto L65
            r1.close()     // Catch: java.io.IOException -> L61
            goto L65
        L61:
            r1 = move-exception
            r4.e(r0, r1)
        L65:
            if (r5 == 0) goto L6a
            r5.disconnect()
        L6a:
            return r6
        L6b:
            r6 = move-exception
            goto L72
        L6d:
            r6 = move-exception
            r5 = r1
            goto L89
        L70:
            r6 = move-exception
            r5 = r1
        L72:
            java.lang.String r2 = "Network POST connection error"
            r4.d(r2, r6)     // Catch: java.lang.Throwable -> L88
            if (r1 == 0) goto L81
            r1.close()     // Catch: java.io.IOException -> L7d
            goto L81
        L7d:
            r6 = move-exception
            r4.e(r0, r6)
        L81:
            if (r5 == 0) goto L86
            r5.disconnect()
        L86:
            r5 = 0
            return r5
        L88:
            r6 = move-exception
        L89:
            if (r1 == 0) goto L93
            r1.close()     // Catch: java.io.IOException -> L8f
            goto L93
        L8f:
            r1 = move-exception
            r4.e(r0, r1)
        L93:
            if (r5 == 0) goto L98
            r5.disconnect()
        L98:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.by.a(java.net.URL, byte[]):int");
    }

    private final URL a(br brVar) {
        String strValueOf;
        String strValueOf2;
        String str;
        String strConcat;
        if (brVar.f()) {
            strValueOf = String.valueOf(be.h());
            strValueOf2 = String.valueOf(be.j());
            if (strValueOf2.length() == 0) {
                str = new String(strValueOf);
                strConcat = str;
            }
            strConcat = strValueOf.concat(strValueOf2);
        } else {
            strValueOf = String.valueOf(be.i());
            strValueOf2 = String.valueOf(be.j());
            if (strValueOf2.length() == 0) {
                str = new String(strValueOf);
                strConcat = str;
            }
            strConcat = strValueOf.concat(strValueOf2);
        }
        try {
            return new URL(strConcat);
        } catch (MalformedURLException e2) {
            e("Error trying to parse the hardcoded host url", e2);
            return null;
        }
    }

    private final URL a(br brVar, String str) {
        String strI;
        String strJ;
        StringBuilder sb;
        if (brVar.f()) {
            strI = be.h();
            strJ = be.j();
            sb = new StringBuilder(String.valueOf(strI).length() + 1 + String.valueOf(strJ).length() + String.valueOf(str).length());
        } else {
            strI = be.i();
            strJ = be.j();
            sb = new StringBuilder(String.valueOf(strI).length() + 1 + String.valueOf(strJ).length() + String.valueOf(str).length());
        }
        sb.append(strI);
        sb.append(strJ);
        sb.append("?");
        sb.append(str);
        try {
            return new URL(sb.toString());
        } catch (MalformedURLException e2) {
            e("Error trying to parse the hardcoded host url", e2);
            return null;
        }
    }

    private static void a(StringBuilder sb, String str, String str2) throws UnsupportedEncodingException {
        if (sb.length() != 0) {
            sb.append('&');
        }
        sb.append(URLEncoder.encode(str, "UTF-8"));
        sb.append('=');
        sb.append(URLEncoder.encode(str2, "UTF-8"));
    }

    private final void a(HttpURLConnection httpURLConnection) throws Throwable {
        InputStream inputStream;
        try {
            inputStream = httpURLConnection.getInputStream();
            try {
                do {
                } while (inputStream.read(new byte[1024]) > 0);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                        e("Error closing http connection input stream", e2);
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e3) {
                        e("Error closing http connection input stream", e3);
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00e8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int b(java.net.URL r11, byte[] r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.by.b(java.net.URL, byte[]):int");
    }

    private final HttpURLConnection b(URL url) throws IOException {
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
            throw new IOException("Failed to obtain http connection");
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setDefaultUseCaches(false);
        httpURLConnection.setConnectTimeout(bm.w.a().intValue());
        httpURLConnection.setReadTimeout(bm.x.a().intValue());
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestProperty("User-Agent", this.f4113a);
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }

    private final URL d() {
        String strValueOf = String.valueOf(be.h());
        String strValueOf2 = String.valueOf(bm.n.a());
        try {
            return new URL(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
        } catch (MalformedURLException e2) {
            e("Error trying to parse the hardcoded host url", e2);
            return null;
        }
    }

    final String a(br brVar, boolean z) {
        com.google.android.gms.common.internal.aa.a(brVar);
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : brVar.b().entrySet()) {
                String key = entry.getKey();
                if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key) && !"z".equals(key) && !"_gmsv".equals(key)) {
                    a(sb, key, entry.getValue());
                }
            }
            a(sb, "ht", String.valueOf(brVar.d()));
            a(sb, "qt", String.valueOf(i().a() - brVar.d()));
            if (z) {
                long jG = brVar.g();
                a(sb, "z", jG != 0 ? String.valueOf(jG) : String.valueOf(brVar.c()));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e2) {
            e("Failed to encode name or value", e2);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01a6 A[EDGE_INSN: B:78:0x01a6->B:75:0x01a6 BREAK  A[LOOP:1: B:43:0x010c->B:81:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<java.lang.Long> a(java.util.List<com.google.android.gms.internal.measurement.br> r9) {
        /*
            Method dump skipped, instruction units count: 423
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.by.a(java.util.List):java.util.List");
    }

    @Override // com.google.android.gms.internal.measurement.ac
    protected final void a() {
        a("Network initialized. User agent", this.f4113a);
    }

    public final boolean b() {
        NetworkInfo activeNetworkInfo;
        com.google.android.gms.analytics.s.d();
        y();
        try {
            activeNetworkInfo = ((ConnectivityManager) j().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException unused) {
            activeNetworkInfo = null;
        }
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        b("No network connectivity");
        return false;
    }
}
