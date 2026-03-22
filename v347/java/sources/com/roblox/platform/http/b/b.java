package com.roblox.platform.http.b;

import b.ab;
import b.t;
import com.roblox.platform.d;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f8049a;

    public b(String str) {
        this.f8049a = str;
    }

    @Override // b.t
    public ab a(t.a aVar) throws IOException {
        d.a("rbx.platform").a().b("UserAgentInterceptor.intercept()");
        return aVar.a(aVar.a().e().a("User-Agent", this.f8049a).a());
    }
}
