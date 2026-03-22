package com.birbit.android.jobqueue.messaging.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends com.birbit.android.jobqueue.messaging.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2994d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2995e;
    private boolean f;
    private com.birbit.android.jobqueue.g g;

    public b() {
        super(com.birbit.android.jobqueue.messaging.g.CALLBACK);
    }

    @Override // com.birbit.android.jobqueue.messaging.b
    protected void a() {
        this.g = null;
    }

    public void a(com.birbit.android.jobqueue.g gVar, int i) {
        this.f2994d = i;
        this.g = gVar;
    }

    public void a(com.birbit.android.jobqueue.g gVar, int i, int i2) {
        this.f2994d = i;
        this.f2995e = i2;
        this.g = gVar;
    }

    public void a(com.birbit.android.jobqueue.g gVar, int i, boolean z) {
        this.f2994d = i;
        this.f = z;
        this.g = gVar;
    }

    public int c() {
        return this.f2994d;
    }

    public int d() {
        return this.f2995e;
    }

    public boolean e() {
        return this.f;
    }

    public com.birbit.android.jobqueue.g f() {
        return this.g;
    }
}
