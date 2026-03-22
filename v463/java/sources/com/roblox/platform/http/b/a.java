package com.roblox.platform.http.b;

import c.aa;
import c.ac;
import c.u;
import com.roblox.platform.e;
import com.roblox.platform.i;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements u {
    @Override // c.u
    public ac a(u.a aVar) throws IOException {
        String strA = i.d().a();
        if (strA == null) {
            return aVar.a(aVar.a());
        }
        e.a("rbx.platform").a().b("DeviceHandleInterceptor.intercept()");
        aa.a aVarE = aVar.a().e();
        aVarE.a("RBX-Device-Handle", strA);
        String strB = i.d().b();
        if (strB != null) {
            aVarE.a("X-Ablm", strB);
        }
        return aVar.a(aVarE.a());
    }
}
