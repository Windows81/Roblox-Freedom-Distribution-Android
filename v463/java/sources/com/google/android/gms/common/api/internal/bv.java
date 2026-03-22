package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class bv implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ LifecycleCallback f3561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f3562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ bu f3563c;

    bv(bu buVar, LifecycleCallback lifecycleCallback, String str) {
        this.f3563c = buVar;
        this.f3561a = lifecycleCallback;
        this.f3562b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f3563c.f3559c > 0) {
            this.f3561a.a(this.f3563c.f3560d != null ? this.f3563c.f3560d.getBundle(this.f3562b) : null);
        }
        if (this.f3563c.f3559c >= 2) {
            this.f3561a.b();
        }
        if (this.f3563c.f3559c >= 3) {
            this.f3561a.c();
        }
        if (this.f3563c.f3559c >= 4) {
            this.f3561a.d();
        }
        if (this.f3563c.f3559c >= 5) {
            this.f3561a.e();
        }
    }
}
