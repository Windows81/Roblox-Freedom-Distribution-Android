package com.roblox.platform.http;

import c.b.a;
import c.m;
import c.x;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m f7701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7703c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7704d;

    public c() {
        this(null);
    }

    public c(m mVar) {
        this(mVar, 30, 30, com.roblox.platform.i.b());
    }

    public c(m mVar, int i, int i2, String str) {
        this.f7701a = mVar;
        this.f7702b = i;
        this.f7703c = i2;
        this.f7704d = str;
    }

    @Override // com.roblox.platform.http.e
    public x a() {
        c.b.a aVar = new c.b.a(new a.b() { // from class: com.roblox.platform.http.c.1
            @Override // c.b.a.b
            public void a(String str) {
                com.roblox.platform.e.a("rbx.http").a().a(str);
            }
        });
        aVar.a(a.EnumC0059a.BODY);
        x.a aVar2 = new x.a();
        aVar2.a(aVar);
        String str = this.f7704d;
        if (str != null) {
            aVar2.b(new com.roblox.platform.http.b.b(str));
        }
        aVar2.b(new com.roblox.platform.http.b.a());
        aVar2.b(new com.roblox.platform.http.b.c());
        aVar2.a(this.f7702b, TimeUnit.SECONDS);
        aVar2.b(this.f7703c, TimeUnit.SECONDS);
        m mVarB = this.f7701a;
        if (mVarB == null) {
            mVarB = h.b();
        }
        aVar2.a(mVarB);
        aVar2.a(false);
        return aVar2.a();
    }
}
