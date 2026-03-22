package com.roblox.client.e.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f5985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5987c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5988d;

    public a(long j, String str) {
        this.f5985a = j;
        this.f5986b = str == null ? "" : str;
        this.f5987c = "";
        this.f5988d = "";
    }

    public long a() {
        return this.f5985a;
    }

    public void a(long j) {
        this.f5985a = j;
    }

    public String b() {
        String str = this.f5986b;
        if (str != null) {
            return str;
        }
        return "User " + a();
    }

    public void a(String str) {
        this.f5986b = str;
    }

    public String c() {
        return this.f5987c;
    }

    public void b(String str) {
        this.f5987c = str;
    }

    public String d() {
        return this.f5988d;
    }

    public void c(String str) {
        this.f5988d = str;
    }

    public void a(a aVar) {
        if (aVar == this) {
            return;
        }
        if (this.f5985a != aVar.a() && aVar.a() != -1) {
            a(aVar.a());
        }
        if (!this.f5986b.equals(aVar.b()) && !aVar.b().isEmpty()) {
            a(aVar.b());
        }
        if (!this.f5987c.equals(aVar.c()) && !aVar.c().isEmpty()) {
            b(aVar.c());
        }
        if (this.f5988d.equals(aVar.d()) || aVar.d().isEmpty()) {
            return;
        }
        c(aVar.d());
    }
}
