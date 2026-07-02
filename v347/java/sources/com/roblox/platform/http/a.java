package com.roblox.platform.http;

import b.aa;
import b.ab;
import b.u;
import b.w;
import b.z;
import com.roblox.platform.d;
import com.roblox.platform.http.b.c;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public ab a(w wVar, String str, String str2, Map<String, String> map, String str3) throws IOException {
        return a(wVar, str, str2, map, str3, false);
    }

    public ab a(w wVar, String str, String str2, Map<String, String> map, String str3, boolean z) throws IOException {
        return a(wVar, new z.a(), str, str2, map, str3, false);
    }

    public ab a(w wVar, z.a aVar, String str, String str2, Map<String, String> map, String str3, boolean z) throws IOException {
        aVar.a(str);
        if (map != null) {
            for (String str4 : map.keySet()) {
                String str5 = map.get(str4);
                if (str4 != null && str5 != null) {
                    aVar.a(str4, str5);
                }
            }
        }
        if (str2 != null) {
            if (str3 == null) {
                str3 = "application/x-www-form-urlencoded;charset=UTF-8";
            }
            aVar.a(aa.a(u.a(str3), str2));
            String strA = c.a();
            if (strA != null) {
                aVar.a("X-CSRF-TOKEN", strA);
            }
        }
        String str6 = str3;
        ab abVarA = wVar.a(aVar.a()).a();
        if (abVarA.b() == 403) {
            String strA2 = abVarA.a("X-CSRF-TOKEN");
            if (!z && strA2 != null) {
                d.a("rbx.platform").a().b("XSRF: got token. retrying");
                c.a(strA2);
                return a(wVar, str, str2, map, str6, true);
            }
            if (z) {
                d.a("rbx.platform").a().e("XSRF Error: retry already attempted. Will not retry");
                return abVarA;
            }
            d.a("rbx.platform").a().e("XSRF Error: token not present in response. Will not retry");
            return abVarA;
        }
        return abVarA;
    }
}
