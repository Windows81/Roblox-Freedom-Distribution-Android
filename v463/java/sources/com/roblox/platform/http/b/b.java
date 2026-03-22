package com.roblox.platform.http.b;

import c.ac;
import c.u;
import com.roblox.platform.e;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7698a;

    public b(String str) {
        this.f7698a = str;
    }

    @Override // c.u
    public ac a(u.a aVar) throws IOException {
        e.a("rbx.platform").a().b("UserAgentInterceptor.intercept()");
        return aVar.a(aVar.a().e().a("User-Agent", this.f7698a).a());
    }
}
