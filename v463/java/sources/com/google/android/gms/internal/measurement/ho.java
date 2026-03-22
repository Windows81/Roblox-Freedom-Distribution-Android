package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ho implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ dp f4503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ hn f4504b;

    ho(hn hnVar, dp dpVar) {
        this.f4504b = hnVar;
        this.f4503a = dpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4504b) {
            hn.a(this.f4504b, false);
            if (!this.f4504b.f4500a.v()) {
                this.f4504b.f4500a.q().C().a("Connected to service");
                this.f4504b.f4500a.a(this.f4503a);
            }
        }
    }
}
