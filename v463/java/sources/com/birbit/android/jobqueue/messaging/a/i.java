package com.birbit.android.jobqueue.messaging.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i extends com.birbit.android.jobqueue.messaging.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.birbit.android.jobqueue.h f3005d;

    public i() {
        super(com.birbit.android.jobqueue.messaging.g.RUN_JOB);
    }

    public com.birbit.android.jobqueue.h c() {
        return this.f3005d;
    }

    public void a(com.birbit.android.jobqueue.h hVar) {
        this.f3005d = hVar;
    }

    @Override // com.birbit.android.jobqueue.messaging.b
    protected void a() {
        this.f3005d = null;
    }
}
