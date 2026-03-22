package com.birbit.android.jobqueue.messaging.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class j extends com.birbit.android.jobqueue.messaging.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.birbit.android.jobqueue.h f3006d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Object f3007e;
    private int f;

    public j() {
        super(com.birbit.android.jobqueue.messaging.g.RUN_JOB_RESULT);
    }

    public com.birbit.android.jobqueue.h c() {
        return this.f3006d;
    }

    public void a(com.birbit.android.jobqueue.h hVar) {
        this.f3006d = hVar;
    }

    @Override // com.birbit.android.jobqueue.messaging.b
    protected void a() {
        this.f3006d = null;
    }

    public void a(int i) {
        this.f = i;
    }

    public int d() {
        return this.f;
    }

    public Object e() {
        return this.f3007e;
    }

    public void a(Object obj) {
        this.f3007e = obj;
    }
}
