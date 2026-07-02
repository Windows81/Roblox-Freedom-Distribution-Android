package com.roblox.client.login.mvp;

import com.roblox.client.login.mvp.b;
import com.roblox.client.login.mvp.d;

/* JADX INFO: loaded from: classes.dex */
public class e implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f7482a;

    e(d dVar) {
        this.f7482a = dVar;
    }

    @Override // com.roblox.client.login.mvp.b.a
    public void a(String str, String str2, String str3, final f fVar) {
        this.f7482a.a(str, str2, str3, new d.a() { // from class: com.roblox.client.login.mvp.e.1
            @Override // com.roblox.client.login.mvp.d.a
            public void a() {
                fVar.a();
            }

            @Override // com.roblox.client.login.mvp.d.a
            public void a(String str4, String str5, String str6) {
                fVar.a(str4, str5, str6);
            }

            @Override // com.roblox.client.login.mvp.d.a
            public void b() {
                fVar.b();
            }

            @Override // com.roblox.client.login.mvp.d.a
            public void c() {
                fVar.c();
            }

            @Override // com.roblox.client.login.mvp.d.a
            public void d() {
                fVar.d();
            }

            @Override // com.roblox.client.login.mvp.d.a
            public void a(c cVar) {
                fVar.a(cVar);
            }
        });
    }

    @Override // com.roblox.client.login.mvp.b.a
    public void e() {
        this.f7482a.e();
    }

    @Override // com.roblox.client.login.mvp.b.a
    public void f() {
        this.f7482a.f();
    }

    @Override // com.roblox.client.login.mvp.b.a
    public String c() {
        return this.f7482a.c();
    }

    @Override // com.roblox.client.login.mvp.b.a
    public String d() {
        return this.f7482a.d();
    }

    @Override // com.roblox.client.login.mvp.b.a
    public String a() {
        return this.f7482a.a();
    }

    @Override // com.roblox.client.login.mvp.b.a
    public String b() {
        return this.f7482a.b();
    }
}
