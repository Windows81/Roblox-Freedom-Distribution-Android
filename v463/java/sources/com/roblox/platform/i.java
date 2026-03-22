package com.roblox.platform;

import android.content.Context;
import android.os.Build;
import c.x;
import com.roblox.platform.k;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f7735a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f7736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static x f7737c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static com.roblox.platform.http.e f7738d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static h f7739e = new a();
    private static f f;
    private static b g;
    private static b h;

    public static f a() {
        if (f == null) {
            synchronized (i.class) {
                if (f == null) {
                    f = f7739e.a();
                }
            }
        }
        return f;
    }

    public static void a(h hVar) {
        f7739e = hVar;
        synchronized (i.class) {
            f = null;
        }
    }

    public static void a(com.roblox.platform.http.e eVar) {
        f7738d = eVar;
    }

    public static String a(Context context, String str, String str2, String str3, String str4, boolean z, boolean z2) {
        return new k.a().a(com.roblox.platform.a.a.a()).a(com.roblox.platform.a.a.a(context)).b(com.roblox.platform.a.a.b(context)).c(com.roblox.platform.a.a.c(context)).a(com.roblox.platform.a.a.b()).b(Build.VERSION.RELEASE).c(str2).d(str).e(str3).f(str4).a(z).b(z2).a();
    }

    public static void a(String str) {
        f7735a = str;
    }

    public static String b() {
        return f7735a;
    }

    public static void a(com.roblox.platform.http.a aVar) {
        com.roblox.platform.http.i.a(aVar);
    }

    public static c c() {
        return f7736b;
    }

    public static void a(c cVar) {
        f7736b = cVar;
    }

    public static b d() {
        b bVar = g;
        if (bVar != null) {
            return bVar;
        }
        if (h == null) {
            h = new b() { // from class: com.roblox.platform.i.1
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
        return h;
    }

    public static void a(b bVar) {
        g = bVar;
    }

    public static x e() {
        if (f7737c == null) {
            synchronized (i.class) {
                if (f7737c == null) {
                    if (f7738d == null) {
                        f7738d = new com.roblox.platform.http.c();
                    }
                    f7737c = f7738d.a();
                }
            }
        }
        return f7737c;
    }
}
