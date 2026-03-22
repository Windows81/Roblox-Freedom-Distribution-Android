package com.b.a.a.g.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class j extends com.b.a.a.g.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.b.a.a.j f2325d;
    private Object e;
    private int f;

    public j() {
        super(com.b.a.a.g.i.RUN_JOB_RESULT);
    }

    public com.b.a.a.j c() {
        return this.f2325d;
    }

    public void a(com.b.a.a.j jVar) {
        this.f2325d = jVar;
    }

    @Override // com.b.a.a.g.b
    protected void a() {
        this.f2325d = null;
    }

    public void a(int i) {
        this.f = i;
    }

    public int d() {
        return this.f;
    }

    public Object e() {
        return this.e;
    }

    public void a(Object obj) {
        this.e = obj;
    }
}
