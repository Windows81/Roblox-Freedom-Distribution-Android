package com.roblox.platform.http.b;

import b.ab;
import b.t;
import b.z;
import com.roblox.platform.d;
import java.io.IOException;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c implements t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f8050b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f8051a = "rbx.platform";

    @Override // b.t
    public ab a(t.a aVar) throws IOException {
        String strA;
        ab abVarA = aVar.a(a(aVar.a(), a()));
        if (abVarA.b() == 403 && (strA = abVarA.a("X-CSRF-TOKEN")) != null) {
            d.a("rbx.platform").a().b("XSRFTokenInterceptor.intercept() new token:" + strA);
            a(strA);
        }
        return abVarA;
    }

    private z a(z zVar, String str) {
        if (str != null && zVar.b().equals(Constants.HTTP_POST)) {
            d.a("rbx.platform").a().b("XSRFTokenInterceptor.putXSRFTokenInRequest() token:" + a());
            return zVar.e().a("X-CSRF-TOKEN", str).a();
        }
        return zVar;
    }

    public static void a(String str) {
        f8050b = str;
    }

    public static String a() {
        return f8050b;
    }
}
