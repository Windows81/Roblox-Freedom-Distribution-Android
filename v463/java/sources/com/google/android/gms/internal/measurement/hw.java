package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class hw implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ii f4519a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Runnable f4520b;

    hw(ht htVar, ii iiVar, Runnable runnable) {
        this.f4519a = iiVar;
        this.f4520b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4519a.H();
        this.f4519a.a(this.f4520b);
        this.f4519a.G();
    }
}
