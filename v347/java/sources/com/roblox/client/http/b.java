package com.roblox.client.http;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import b.ab;
import b.w;
import com.roblox.client.RobloxSettings;
import com.roblox.client.http.j;
import java.io.File;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.lang.reflect.Array;
import java.net.CookieHandler;
import java.net.CookiePolicy;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f7085a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static com.roblox.platform.http.b f7086b = null;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f7087a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f7088b;
    }

    public static void a(Context context) {
        if (f7086b == null) {
            CookieSyncManager.createInstance(context);
            CookieManager.getInstance().setAcceptCookie(true);
            CookieSyncManager.getInstance().startSync();
            f7086b = new com.roblox.platform.http.b(CookiePolicy.ACCEPT_ALL);
            CookieHandler.setDefault(f7086b);
        }
    }

    public static void a(File file, String str) {
        CookieSyncManager.getInstance().stopSync();
    }

    public static void a() {
        CookieSyncManager.getInstance().startSync();
    }

    public static void b() {
        CookieSyncManager.getInstance().sync();
    }

    @Deprecated
    public static HttpURLConnection a(String str, String str2, a[] aVarArr, boolean z, String str3, int i, int i2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        if (aVarArr != null && Array.getLength(aVarArr) > 0) {
            for (a aVar : aVarArr) {
                httpURLConnection.setRequestProperty(aVar.f7087a, aVar.f7088b);
            }
        }
        httpURLConnection.setRequestProperty("User-Agent", RobloxSettings.userAgent());
        if (com.roblox.client.b.aB()) {
            httpURLConnection.setRequestProperty("RBX-Device-Handle", com.roblox.client.c.a().c());
        }
        if (com.roblox.client.b.aD()) {
            httpURLConnection.setRequestProperty("X-Ablm", com.roblox.client.c.a().e());
        }
        httpURLConnection.setConnectTimeout(i);
        httpURLConnection.setReadTimeout(i2);
        if (str2 != null) {
            if (str3 == null) {
                str3 = "application/x-www-form-urlencoded;charset=UTF-8";
            }
            httpURLConnection.setRequestMethod(Constants.HTTP_POST);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestProperty("Content-Type", str3);
            if (f7085a != null) {
                httpURLConnection.setRequestProperty("X-CSRF-TOKEN", f7085a);
            }
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream(), Constants.UTF8_NAME);
            outputStreamWriter.write(str2);
            outputStreamWriter.close();
        }
        String str4 = str3;
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 403) {
            String headerField = httpURLConnection.getHeaderField("X-CSRF-TOKEN");
            if (!z && headerField != null) {
                com.roblox.client.util.g.b("rbx.httpagent", "XSRF: got token. retrying");
                f7085a = headerField;
                return a(str, str2, aVarArr, true, str4, i, i2);
            }
            if (z) {
                com.roblox.client.util.g.e("rbx.httpagent", "XSRF Error: retry already attempted. Will not retry");
            } else {
                com.roblox.client.util.g.e("rbx.httpagent", "XSRF Error: token not present in response. Will not retry");
            }
        }
        if (responseCode != 200) {
            com.roblox.client.util.g.b("rbx.httpagent", "User-Agent:" + httpURLConnection.getRequestProperty("User-Agent"));
            com.roblox.client.util.g.b("rbx.httpagent", "URL:" + str);
            com.roblox.client.util.g.b("rbx.httpagent", "HTTP Status:" + responseCode);
            return httpURLConnection;
        }
        CookieSyncManager.getInstance().sync();
        return httpURLConnection;
    }

    public static j a(String str, String str2, a[] aVarArr, String str3) {
        return com.roblox.client.b.aA() ? c(str, str2, aVarArr, str3) : b(str, str2, aVarArr, str3, 60000, 60000);
    }

    public static j a(String str, String str2, a[] aVarArr, String str3, int i, int i2) {
        return com.roblox.client.b.aA() ? c(str, str2, aVarArr, str3, i, i2) : b(str, str2, aVarArr, str3, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009f  */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.roblox.client.http.j b(java.lang.String r12, java.lang.String r13, com.roblox.client.http.b.a[] r14, java.lang.String r15, int r16, int r17) throws java.lang.Throwable {
        /*
            if (r16 >= 0) goto Lac
            r5 = 60000(0xea60, float:8.4078E-41)
        L5:
            if (r17 >= 0) goto La8
            r6 = 60000(0xea60, float:8.4078E-41)
        La:
            r7 = 0
            com.roblox.client.http.j r8 = new com.roblox.client.http.j
            r8.<init>()
            long r10 = java.lang.System.currentTimeMillis()
            if (r13 != 0) goto L88
            com.roblox.client.http.j$a r0 = com.roblox.client.http.j.a.GET
            r8.f7090a = r0
        L1a:
            r8.f7091b = r12
            r3 = 0
            r0 = r12
            r1 = r13
            r2 = r14
            r4 = r15
            java.net.HttpURLConnection r0 = a(r0, r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> La3 java.io.IOException -> La5
            int r1 = r0.getResponseCode()     // Catch: java.io.IOException -> L44 java.lang.Throwable -> L9a
            r8.f7092c = r1     // Catch: java.io.IOException -> L44 java.lang.Throwable -> L9a
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: java.io.IOException -> L44 java.lang.Throwable -> L9a
            r1.<init>()     // Catch: java.io.IOException -> L44 java.lang.Throwable -> L9a
            r2 = 1024(0x400, float:1.435E-42)
            byte[] r2 = new byte[r2]     // Catch: java.io.IOException -> L44 java.lang.Throwable -> L9a
        L34:
            java.io.InputStream r3 = r0.getInputStream()     // Catch: java.io.IOException -> L44 java.lang.Throwable -> L9a
            int r3 = r3.read(r2)     // Catch: java.io.IOException -> L44 java.lang.Throwable -> L9a
            r4 = -1
            if (r3 == r4) goto L8d
            r4 = 0
            r1.write(r2, r4, r3)     // Catch: java.io.IOException -> L44 java.lang.Throwable -> L9a
            goto L34
        L44:
            r1 = move-exception
        L45:
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L9a
            r1.<init>()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L9a
            r2 = 1024(0x400, float:1.435E-42)
            byte[] r2 = new byte[r2]     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L9a
        L4e:
            java.io.InputStream r3 = r0.getErrorStream()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L9a
            int r3 = r3.read(r2)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L9a
            r4 = -1
            if (r3 == r4) goto L96
            r4 = 0
            r1.write(r2, r4, r3)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L9a
            goto L4e
        L5e:
            r1 = move-exception
            java.lang.String r2 = "rbx.httpagent"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L9a
            r3.<init>()     // Catch: java.lang.Throwable -> L9a
            java.lang.String r4 = "readUrlToBytes also failed to get errorStream, "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> L9a
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L9a
            java.lang.StringBuilder r1 = r3.append(r1)     // Catch: java.lang.Throwable -> L9a
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L9a
            com.roblox.client.util.g.b(r2, r1)     // Catch: java.lang.Throwable -> L9a
        L7b:
            if (r0 == 0) goto L80
            r0.disconnect()
        L80:
            long r0 = java.lang.System.currentTimeMillis()
            long r0 = r0 - r10
            r8.f7093d = r0
            return r8
        L88:
            com.roblox.client.http.j$a r0 = com.roblox.client.http.j.a.POST
            r8.f7090a = r0
            goto L1a
        L8d:
            r8.a(r1)     // Catch: java.io.IOException -> L44 java.lang.Throwable -> L9a
            if (r0 == 0) goto L80
            r0.disconnect()
            goto L80
        L96:
            r8.a(r1)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L9a
            goto L7b
        L9a:
            r1 = move-exception
            r7 = r0
            r0 = r1
        L9d:
            if (r7 == 0) goto La2
            r7.disconnect()
        La2:
            throw r0
        La3:
            r0 = move-exception
            goto L9d
        La5:
            r0 = move-exception
            r0 = r7
            goto L45
        La8:
            r6 = r17
            goto La
        Lac:
            r5 = r16
            goto L5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.http.b.b(java.lang.String, java.lang.String, com.roblox.client.http.b$a[], java.lang.String, int, int):com.roblox.client.http.j");
    }

    public static String a(String str, String str2, a[] aVarArr) {
        return a(str, str2, aVarArr, null).a();
    }

    public static j b(String str, String str2, a[] aVarArr) {
        return a(str, str2, aVarArr, null);
    }

    public static j b(String str, String str2, a[] aVarArr, String str3) {
        return a(str, str2, aVarArr, str3);
    }

    private static j c(String str, String str2, a[] aVarArr, String str3) {
        return a(com.roblox.platform.g.e(), str, str2, aVarArr, str3);
    }

    private static j c(String str, String str2, a[] aVarArr, String str3, int i, int i2) {
        w wVarE = com.roblox.platform.g.e();
        if (i >= 0 || i2 >= 0) {
            w.a aVarX = wVarE.x();
            if (i >= 0) {
                aVarX.a(i, TimeUnit.MILLISECONDS);
            }
            if (i2 >= 0) {
                aVarX.b(i2, TimeUnit.MILLISECONDS);
            }
            wVarE = aVarX.a();
        }
        return a(wVarE, str, str2, aVarArr, str3);
    }

    private static j a(w wVar, String str, String str2, a[] aVarArr, String str3) {
        HashMap map = new HashMap();
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                if (aVar.f7087a != null && aVar.f7088b != null) {
                    map.put(aVar.f7087a, aVar.f7088b);
                }
            }
        }
        j jVar = new j();
        jVar.f7090a = str2 == null ? j.a.GET : j.a.POST;
        jVar.f7091b = str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            ab abVarA = new com.roblox.platform.http.a().a(wVar, str, str2, map, str3);
            jVar.f7092c = abVarA.b();
            jVar.a(abVarA.g().g());
        } catch (IOException e) {
            com.roblox.client.util.g.d("rbx.httpagent", "IOException initial newCall()");
        } catch (NullPointerException e2) {
            com.roblox.client.util.g.d("rbx.httpagent", "null url in newCall()");
        }
        jVar.f7093d = System.currentTimeMillis() - jCurrentTimeMillis;
        return jVar;
    }

    public static com.roblox.platform.http.b c() {
        return f7086b;
    }
}
