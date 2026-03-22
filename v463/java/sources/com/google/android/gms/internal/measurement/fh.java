package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fh implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzed f4328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzdz f4329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ fe f4330c;

    fh(fe feVar, zzed zzedVar, zzdz zzdzVar) {
        this.f4330c = feVar;
        this.f4328a = zzedVar;
        this.f4329b = zzdzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4330c.f4320a.H();
        this.f4330c.f4320a.a(this.f4328a, this.f4329b);
    }
}
