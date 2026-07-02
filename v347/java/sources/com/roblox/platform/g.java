package com.roblox.platform;

import android.content.Context;
import b.b.a;
import b.m;
import b.w;
import java.net.CookiePolicy;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f8026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f8027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static w f8028c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static f f8029d = new a();
    private static e e;
    private static b f;
    private static b g;

    public static e a() {
        if (e == null) {
            synchronized (g.class) {
                if (e == null) {
                    e = f8029d.a();
                }
            }
        }
        return e;
    }

    public static String a(Context context, String str, String str2, String str3, boolean z) {
        return new i(context, str, str2, str3, z).toString();
    }

    public static void a(String str) {
        f8026a = str;
    }

    public static String b() {
        return f8026a;
    }

    public static c c() {
        return f8027b;
    }

    public static void a(c cVar) {
        f8027b = cVar;
    }

    public static b d() {
        if (f != null) {
            return f;
        }
        if (g == null) {
            g = new b() { // from class: com.roblox.platform.g.1
                @Override // com.roblox.platform.b
                public String a() {
                    return null;
                }

                @Override // com.roblox.platform.b
                public String b() {
                    return null;
                }
            };
        }
        return g;
    }

    public static void a(b bVar) {
        f = bVar;
    }

    public static w e() {
        if (f8028c == null) {
            synchronized (g.class) {
                if (f8028c == null) {
                    f8028c = a((m) null);
                }
            }
        }
        return f8028c;
    }

    public static w a(m mVar) {
        return a(mVar, 30, 30);
    }

    public static w a(m mVar, int i, int i2) {
        b.b.a aVar = new b.b.a(new a.b() { // from class: com.roblox.platform.g.2
            @Override // b.b.a.b
            public void a(String str) {
                d.a("rbx.http").a().a(str);
            }
        });
        aVar.a(a.EnumC0041a.BODY);
        w.a aVar2 = new w.a();
        aVar2.a(aVar);
        if (b() != null) {
            aVar2.b(new com.roblox.platform.http.b.b(b()));
        }
        aVar2.b(new com.roblox.platform.http.b.a());
        aVar2.b(new com.roblox.platform.http.b.c());
        aVar2.a(i, TimeUnit.SECONDS);
        aVar2.b(i2, TimeUnit.SECONDS);
        if (mVar == null) {
            mVar = new com.roblox.platform.http.b(CookiePolicy.ACCEPT_ALL);
        }
        aVar2.a(mVar);
        aVar2.a(false);
        return aVar2.a();
    }
}
