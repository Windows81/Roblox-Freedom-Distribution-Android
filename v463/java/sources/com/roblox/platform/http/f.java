package com.roblox.platform.http;

import c.aa;
import c.ab;
import c.ac;
import c.v;
import c.x;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f {
    public ac a(x xVar, String str, String str2, Map<String, String> map, String str3) throws IOException {
        return a(xVar, str, str2, map, str3, false);
    }

    public ac a(x xVar, String str, String str2, Map<String, String> map, String str3, boolean z) throws IOException {
        return a(xVar, new aa.a(), str, str2, map, str3, false);
    }

    public ac a(x xVar, aa.a aVar, String str, String str2, Map<String, String> map, String str3, boolean z) throws IOException {
        String str4;
        aVar.a(str);
        if (map != null) {
            for (String str5 : map.keySet()) {
                String str6 = map.get(str5);
                if (str5 != null && str6 != null) {
                    aVar.a(str5, str6);
                }
            }
        }
        if (str2 != null) {
            String str7 = str3 == null ? "application/x-www-form-urlencoded;charset=UTF-8" : str3;
            aVar.a(ab.a(v.a(str7), str2));
            String strA = com.roblox.platform.http.b.c.a();
            if (strA != null) {
                aVar.a("X-CSRF-TOKEN", strA);
            }
            str4 = str7;
        } else {
            str4 = str3;
        }
        ac acVarB = xVar.a(aVar.a()).b();
        if (acVarB.b() == 403) {
            String strA2 = acVarB.a("X-CSRF-TOKEN");
            if (!z && strA2 != null) {
                com.roblox.platform.e.a("rbx.platform").a().b("XSRF: got token. retrying");
                com.roblox.platform.http.b.c.a(strA2);
                return a(xVar, str, str2, map, str4, true);
            }
            if (z) {
                com.roblox.platform.e.a("rbx.platform").a().e("XSRF Error: retry already attempted. Will not retry");
            } else {
                com.roblox.platform.e.a("rbx.platform").a().e("XSRF Error: token not present in response. Will not retry");
            }
        }
        return acVarB;
    }
}
