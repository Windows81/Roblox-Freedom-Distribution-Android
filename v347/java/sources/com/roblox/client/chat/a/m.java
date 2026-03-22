package com.roblox.client.chat.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class m implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f6524a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6525b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6526c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6527d;

    public m(long j, String str) {
        this.f6524a = j;
        this.f6525b = str == null ? "" : str;
        this.f6526c = "";
        this.f6527d = "";
    }

    public m(long j, String str, String str2) {
        this.f6524a = j;
        this.f6525b = str == null ? "" : str;
        this.f6526c = str2;
        this.f6527d = "";
    }

    public long a() {
        return this.f6524a;
    }

    public void a(long j) {
        this.f6524a = j;
    }

    public String b() {
        return this.f6525b != null ? this.f6525b : "User " + a();
    }

    public void a(String str) {
        this.f6525b = str;
    }

    public String c() {
        return this.f6526c;
    }

    public void b(String str) {
        this.f6526c = str;
    }

    public String d() {
        return this.f6527d;
    }

    public void c(String str) {
        this.f6527d = str;
    }

    public void a(m mVar) {
        if (mVar != this) {
            if (this.f6524a != mVar.a() && mVar.a() != -1) {
                a(mVar.a());
            }
            if (!this.f6525b.equals(mVar.b()) && !mVar.b().isEmpty()) {
                a(mVar.b());
            }
            if (!this.f6526c.equals(mVar.c()) && !mVar.c().isEmpty()) {
                b(mVar.c());
            }
            if (!this.f6527d.equals(mVar.d()) && !mVar.d().isEmpty()) {
                c(mVar.d());
            }
        }
    }

    @Override // com.roblox.client.chat.a.f
    public String k() {
        return b(a());
    }

    public static String b(long j) {
        return "User" + j;
    }
}
