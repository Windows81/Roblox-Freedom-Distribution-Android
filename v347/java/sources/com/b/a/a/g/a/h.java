package com.b.a.a.g.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class h extends com.b.a.a.g.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.b.a.a.h f2323d;
    private int e;
    private String f;

    public h() {
        super(com.b.a.a.g.i.PUBLIC_QUERY);
        this.e = -1;
    }

    public com.b.a.a.h c() {
        return this.f2323d;
    }

    public int d() {
        return this.e;
    }

    public String e() {
        return this.f;
    }

    @Override // com.b.a.a.g.b
    protected void a() {
        this.f2323d = null;
        this.e = -1;
    }

    public String toString() {
        return "PublicQuery[" + this.e + "]";
    }
}
