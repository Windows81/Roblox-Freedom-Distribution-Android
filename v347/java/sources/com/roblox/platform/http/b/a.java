package com.roblox.platform.http.b;

import b.ab;
import b.t;
import b.z;
import com.roblox.platform.d;
import com.roblox.platform.g;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class a implements t {
    @Override // b.t
    public ab a(t.a aVar) throws IOException {
        String strA = g.d().a();
        if (strA == null) {
            return aVar.a(aVar.a());
        }
        d.a("rbx.platform").a().b("DeviceHandleInterceptor.intercept()");
        z.a aVarE = aVar.a().e();
        aVarE.a("RBX-Device-Handle", strA);
        if (g.d().b() != null) {
            aVarE.a("X-Ablm", strA);
        }
        return aVar.a(aVarE.a());
    }
}
