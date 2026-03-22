package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gs implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ long f4429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gb f4430b;

    gs(gb gbVar, long j) {
        this.f4430b = gbVar;
        this.f4429a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4430b.r().l.a(this.f4429a);
        this.f4430b.q().B().a("Session timeout duration set", Long.valueOf(this.f4429a));
    }
}
