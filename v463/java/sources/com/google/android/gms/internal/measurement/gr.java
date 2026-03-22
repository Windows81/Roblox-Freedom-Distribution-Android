package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gr implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ long f4427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gb f4428b;

    gr(gb gbVar, long j) {
        this.f4428b = gbVar;
        this.f4427a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4428b.r().k.a(this.f4427a);
        this.f4428b.q().B().a("Minimum session duration set", Long.valueOf(this.f4427a));
    }
}
