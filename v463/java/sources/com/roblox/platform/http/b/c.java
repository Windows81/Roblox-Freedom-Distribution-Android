package com.roblox.platform.http.b;

import c.aa;
import c.ac;
import c.u;
import com.roblox.platform.e;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c implements u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f7699b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7700a = "rbx.platform";

    @Override // c.u
    public ac a(u.a aVar) throws IOException {
        String strA;
        ac acVarA = aVar.a(a(aVar.a(), a()));
        if (acVarA.b() == 403 && (strA = acVarA.a("X-CSRF-TOKEN")) != null) {
            e.a("rbx.platform").a().b("XSRFTokenInterceptor.intercept() new token:" + strA);
            a(strA);
        }
        return acVarA;
    }

    private aa a(aa aaVar, String str) {
        if (str == null || !aaVar.b().equals("POST")) {
            return aaVar;
        }
        e.a("rbx.platform").a().b("XSRFTokenInterceptor.putXSRFTokenInRequest() token:" + a());
        return aaVar.e().a("X-CSRF-TOKEN", str).a();
    }

    public static void a(String str) {
        f7699b = str;
    }

    public static String a() {
        return f7699b;
    }
}
