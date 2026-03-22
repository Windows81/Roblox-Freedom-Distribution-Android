package com.birbit.android.jobqueue.messaging.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends com.birbit.android.jobqueue.messaging.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.birbit.android.jobqueue.g f2993d;

    public a() {
        super(com.birbit.android.jobqueue.messaging.g.ADD_JOB);
    }

    public com.birbit.android.jobqueue.g c() {
        return this.f2993d;
    }

    public void a(com.birbit.android.jobqueue.g gVar) {
        this.f2993d = gVar;
    }

    @Override // com.birbit.android.jobqueue.messaging.b
    protected void a() {
        this.f2993d = null;
    }
}
