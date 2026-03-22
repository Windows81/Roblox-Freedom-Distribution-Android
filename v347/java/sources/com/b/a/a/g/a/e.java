package com.b.a.a.g.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e extends com.b.a.a.g.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2321d;

    public e() {
        super(com.b.a.a.g.i.COMMAND);
    }

    @Override // com.b.a.a.g.b
    protected void a() {
        this.f2321d = -1;
    }

    public int c() {
        return this.f2321d;
    }

    public void a(int i) {
        this.f2321d = i;
    }

    public String toString() {
        return "Command[" + this.f2321d + "]";
    }
}
