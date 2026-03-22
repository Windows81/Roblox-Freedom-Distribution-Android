package com.roblox.client.b;

import com.google.android.gms.analytics.e;
import com.google.android.gms.analytics.h;
import com.roblox.client.util.g;
import com.roblox.client.util.n;
import com.roblox.engine.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {
    public static void a(String str) {
        a(str, false);
    }

    public static void a(String str, boolean z) {
        h hVarB = com.roblox.client.i.c.a().b();
        if (hVarB != null) {
            g.b("rbx.GA", "sendException: " + str + ", isFatal: " + z);
            hVarB.a(new e.b().a(str).a(z).a());
        }
    }

    public static void a(String str, String str2) {
        a(str, str2, null, null);
    }

    public static void a(String str, String str2, String str3) {
        a(str, str2, str3, null);
    }

    public static void a(String str, String str2, String str3, Long l) {
        h hVarB;
        if (((str != null && !str.isEmpty()) || (str2 != null && !str2.isEmpty())) && (hVarB = com.roblox.client.i.c.a().b()) != null) {
            e.a aVarB = new e.a().a(str).b(str2);
            if (str3 != null && !str3.isEmpty()) {
                aVarB.c(str3);
            } else {
                str3 = "NO_LABEL";
            }
            if (l != null) {
                aVarB.a(l.longValue());
            } else {
                l = 0L;
            }
            hVarB.a(aVarB.a());
            g.b("rbx.GA", n.a("sendAnalytics: %s %s %s %s", str, str2, str3, l.toString()));
        }
    }

    public static void a(String str, String str2, long j) {
        h hVarB = com.roblox.client.i.c.a().b();
        if (hVarB != null) {
            hVarB.a(new e.d().b(str).a(str2).a(j).a());
            g.b("rbx.GA", n.a("sendTiming: %s %s %d", str, str2, Long.valueOf(j)));
        }
    }

    public static f.b a() {
        return new f.b() { // from class: com.roblox.client.b.c.1
            @Override // com.roblox.engine.f.b
            public void a() {
                c.a("EngineAssets", "Fingerprint", "ErrorNotFoundObbFile");
            }

            @Override // com.roblox.engine.f.b
            public void a(boolean z) {
                c.a("EngineAssets", "UnzipContainer", z ? "OK" : "Error");
            }
        };
    }
}
