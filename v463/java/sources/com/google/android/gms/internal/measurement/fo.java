package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fo implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzdz f4351a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ fe f4352b;

    fo(fe feVar, zzdz zzdzVar) {
        this.f4352b = feVar;
        this.f4351a = zzdzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4352b.f4320a.H();
        this.f4352b.f4320a.b(this.f4351a);
    }
}
