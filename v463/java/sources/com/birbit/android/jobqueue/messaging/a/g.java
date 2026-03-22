package com.birbit.android.jobqueue.messaging.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g extends com.birbit.android.jobqueue.messaging.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f3001d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f3002e;

    public g() {
        super(com.birbit.android.jobqueue.messaging.g.JOB_CONSUMER_IDLE);
    }

    @Override // com.birbit.android.jobqueue.messaging.b
    protected void a() {
        this.f3001d = null;
    }

    public long c() {
        return this.f3002e;
    }

    public Object d() {
        return this.f3001d;
    }

    public void a(Object obj) {
        this.f3001d = obj;
    }

    public void a(long j) {
        this.f3002e = j;
    }
}
