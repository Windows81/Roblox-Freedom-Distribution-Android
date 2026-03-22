package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fv implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzdz f4370a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ fe f4371b;

    fv(fe feVar, zzdz zzdzVar) {
        this.f4371b = feVar;
        this.f4370a = zzdzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4371b.f4320a.H();
        this.f4371b.f4320a.c(this.f4370a);
    }
}
