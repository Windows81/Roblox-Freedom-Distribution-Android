package com.roblox.client.http;

import android.content.Context;
import android.webkit.CookieSyncManager;
import c.ac;
import c.x;
import com.roblox.client.http.j;
import java.io.File;
import java.io.IOException;
import java.net.CookieHandler;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLHandshakeException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static com.roblox.platform.http.h f6333a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f6334a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f6335b;
    }

    public static void a(Context context) {
        if (f6333a == null) {
            CookieSyncManager.createInstance(context);
            CookieSyncManager.getInstance().startSync();
            com.roblox.platform.http.h hVarB = com.roblox.platform.http.h.b();
            f6333a = hVarB;
            CookieHandler.setDefault(hVarB);
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

    public static j a(String str, String str2, a[] aVarArr, String str3) {
        return c(str, str2, aVarArr, str3);
    }

    public static j a(String str, String str2, a[] aVarArr, String str3, int i, int i2) {
        return b(str, str2, aVarArr, str3, i, i2);
    }

    public static j a(String str, String str2, a[] aVarArr) {
        return a(str, str2, aVarArr, null);
    }

    public static j b(String str, String str2, a[] aVarArr, String str3) {
        return a(str, str2, aVarArr, str3);
    }

    private static j c(String str, String str2, a[] aVarArr, String str3) {
        return a(com.roblox.platform.i.e(), str, str2, aVarArr, str3);
    }

    private static j b(String str, String str2, a[] aVarArr, String str3, int i, int i2) {
        x xVarE = com.roblox.platform.i.e();
        if (i >= 0 || i2 >= 0) {
            x.a aVarX = xVarE.x();
            if (i >= 0) {
                aVarX.a(i, TimeUnit.MILLISECONDS);
            }
            if (i2 >= 0) {
                aVarX.b(i2, TimeUnit.MILLISECONDS);
            }
            xVarE = aVarX.a();
        }
        return a(xVarE, str, str2, aVarArr, str3);
    }

    private static j a(x xVar, String str, String str2, a[] aVarArr, String str3) {
        HashMap map = new HashMap();
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                if (aVar.f6334a != null && aVar.f6335b != null) {
                    map.put(aVar.f6334a, aVar.f6335b);
                }
            }
        }
        j jVar = new j();
        jVar.f6337a = str2 == null ? j.a.GET : j.a.POST;
        jVar.f6338b = str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            ac acVarA = new com.roblox.platform.http.f().a(xVar, str, str2, map, str3);
            jVar.f6339c = acVarA.b();
            jVar.a(acVarA.g().g());
        } catch (NullPointerException unused) {
            com.roblox.client.ae.k.d("rbx.httpagent", "null url in newCall()");
        } catch (SSLHandshakeException e2) {
            com.roblox.client.ae.k.d("rbx.httpagent", "SSLHandshakeException initial newCall(): url = " + str + ", exception = " + e2);
            jVar.f6341e = true;
        } catch (IOException e3) {
            com.roblox.client.ae.k.d("rbx.httpagent", "IOException initial newCall(): url = " + str + ", exception = " + e3);
        }
        jVar.f6340d = System.currentTimeMillis() - jCurrentTimeMillis;
        return jVar;
    }
}
