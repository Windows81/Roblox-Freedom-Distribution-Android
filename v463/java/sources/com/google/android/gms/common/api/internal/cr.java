package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class cr implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ cq f3620a;

    cr(cq cqVar) {
        this.f3620a = cqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3620a.m.lock();
        try {
            this.f3620a.e();
        } finally {
            this.f3620a.m.unlock();
        }
    }
}
