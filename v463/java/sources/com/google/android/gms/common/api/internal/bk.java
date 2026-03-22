package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class bk implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ LifecycleCallback f3538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f3539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ bj f3540c;

    bk(bj bjVar, LifecycleCallback lifecycleCallback, String str) {
        this.f3540c = bjVar;
        this.f3538a = lifecycleCallback;
        this.f3539b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f3540c.f3536c > 0) {
            this.f3538a.a(this.f3540c.f3537d != null ? this.f3540c.f3537d.getBundle(this.f3539b) : null);
        }
        if (this.f3540c.f3536c >= 2) {
            this.f3538a.b();
        }
        if (this.f3540c.f3536c >= 3) {
            this.f3538a.c();
        }
        if (this.f3540c.f3536c >= 4) {
            this.f3538a.d();
        }
        if (this.f3540c.f3536c >= 5) {
            this.f3538a.e();
        }
    }
}
