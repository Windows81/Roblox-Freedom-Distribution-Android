package com.birbit.android.jobqueue.messaging;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g f3010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    b f3011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f3012c = Long.MIN_VALUE;

    protected abstract void a();

    protected b(g gVar) {
        this.f3010a = gVar;
    }

    final void b() {
        this.f3011b = null;
        this.f3012c = Long.MIN_VALUE;
        a();
    }
}
