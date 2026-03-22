package com.roblox.client.analytics;

import com.appsflyer.internal.referrer.Payload;
import com.roblox.engine.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    public enum a {
        DEFAULT_TRACKER,
        VIP_TRACKER
    }

    public static void a(String str) {
        a(str, false);
    }

    public static void a(String str, boolean z) {
        e eVarE = com.roblox.client.s.c.d().e();
        if (eVarE != null) {
            eVarE.a(str, z);
        }
    }

    public static void a(String str, String str2) {
        a(str, str2, null, null);
    }

    public static void a(String str, String str2, String str3) {
        a(str, str2, str3, null);
    }

    public static void a(String str, String str2, String str3, Long l) {
        e eVarE = com.roblox.client.s.c.d().e();
        if (eVarE != null) {
            eVarE.a(a.DEFAULT_TRACKER, str, str2, str3, l);
        }
    }

    public static void b(String str, String str2, String str3) {
        b(str, str2, str3, null);
    }

    public static void b(String str, String str2, String str3, Long l) {
        e eVarE = com.roblox.client.s.c.d().e();
        if (eVarE != null) {
            eVarE.a(a.VIP_TRACKER, str, str2, str3, l);
        }
    }

    public static void a(String str, String str2, long j) {
        e eVarE = com.roblox.client.s.c.d().e();
        if (eVarE != null) {
            eVarE.a(str, str2, j);
        }
    }

    public static f.d a() {
        return new f.d() { // from class: com.roblox.client.analytics.d.1
            @Override // com.roblox.engine.f.d
            public void a() {
                d.a("EngineAssets", "Fingerprint", "ErrorNotFoundObbFile");
            }

            @Override // com.roblox.engine.f.d
            public void a(boolean z) {
                d.a("EngineAssets", "UnzipContainer", z ? Payload.RESPONSE_OK : "Error");
            }
        };
    }
}
