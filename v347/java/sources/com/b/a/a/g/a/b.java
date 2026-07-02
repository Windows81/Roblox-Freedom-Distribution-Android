package com.b.a.a.g.a;

/* JADX INFO: loaded from: classes.dex */
public class b extends com.b.a.a.g.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2318d;
    private int e;
    private boolean f;
    private com.b.a.a.i g;

    public b() {
        super(com.b.a.a.g.i.CALLBACK);
    }

    @Override // com.b.a.a.g.b
    protected void a() {
        this.g = null;
    }

    public void a(com.b.a.a.i iVar, int i) {
        this.f2318d = i;
        this.g = iVar;
    }

    public void a(com.b.a.a.i iVar, int i, int i2) {
        this.f2318d = i;
        this.e = i2;
        this.g = iVar;
    }

    public void a(com.b.a.a.i iVar, int i, boolean z) {
        this.f2318d = i;
        this.f = z;
        this.g = iVar;
    }

    public int c() {
        return this.f2318d;
    }

    public int d() {
        return this.e;
    }

    public boolean e() {
        return this.f;
    }

    public com.b.a.a.i f() {
        return this.g;
    }
}
