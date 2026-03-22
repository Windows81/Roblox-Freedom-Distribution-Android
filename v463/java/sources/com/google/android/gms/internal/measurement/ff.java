package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ff implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzdz f4323a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ fe f4324b;

    ff(fe feVar, zzdz zzdzVar) {
        this.f4324b = feVar;
        this.f4323a = zzdzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4324b.f4320a.H();
        this.f4324b.f4320a.a(this.f4323a);
    }
}
