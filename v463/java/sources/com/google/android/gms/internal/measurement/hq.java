package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class hq implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ dp f4507a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ hn f4508b;

    hq(hn hnVar, dp dpVar) {
        this.f4508b = hnVar;
        this.f4507a = dpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4508b) {
            hn.a(this.f4508b, false);
            if (!this.f4508b.f4500a.v()) {
                this.f4508b.f4500a.q().B().a("Connected to remote service");
                this.f4508b.f4500a.a(this.f4507a);
            }
        }
    }
}
