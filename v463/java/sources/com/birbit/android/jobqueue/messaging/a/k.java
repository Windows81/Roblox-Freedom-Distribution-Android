package com.birbit.android.jobqueue.messaging.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class k extends com.birbit.android.jobqueue.messaging.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3008d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.birbit.android.jobqueue.scheduling.a f3009e;

    public k() {
        super(com.birbit.android.jobqueue.messaging.g.SCHEDULER);
    }

    public void a(int i, com.birbit.android.jobqueue.scheduling.a aVar) {
        this.f3008d = i;
        this.f3009e = aVar;
    }

    public int c() {
        return this.f3008d;
    }

    public com.birbit.android.jobqueue.scheduling.a d() {
        return this.f3009e;
    }

    @Override // com.birbit.android.jobqueue.messaging.b
    protected void a() {
        this.f3009e = null;
    }
}
