package com.roblox.client.login.mvp;

import com.roblox.client.login.mvp.b;
import com.roblox.client.login.mvp.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f6585a;

    e(d dVar) {
        this.f6585a = dVar;
    }

    @Override // com.roblox.client.login.mvp.b.a
    public void a(String str, String str2, String str3, String str4, String str5, final f fVar) {
        this.f6585a.a(str, str2, str3, str4, str5, new d.a() { // from class: com.roblox.client.login.mvp.e.1
            @Override // com.roblox.client.login.mvp.d.a
            public void a() {
                fVar.a();
            }

            @Override // com.roblox.client.login.mvp.d.a
            public void a(String str6, String str7, String str8) {
                fVar.a(str6, str7, str8);
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
    public void d() {
        this.f6585a.d();
    }

    @Override // com.roblox.client.login.mvp.b.a
    public void e() {
        this.f6585a.e();
    }

    @Override // com.roblox.client.login.mvp.b.a
    public String c() {
        return this.f6585a.c();
    }

    @Override // com.roblox.client.login.mvp.b.a
    public String a() {
        return this.f6585a.a();
    }

    @Override // com.roblox.client.login.mvp.b.a
    public String b() {
        return this.f6585a.b();
    }

    @Override // com.roblox.client.login.mvp.b.a
    public void a(String str, String str2, String str3) {
        this.f6585a.a(str, str2, str3);
    }
}
