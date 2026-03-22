package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fp implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzeu f4353a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzdz f4354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ fe f4355c;

    fp(fe feVar, zzeu zzeuVar, zzdz zzdzVar) {
        this.f4355c = feVar;
        this.f4353a = zzeuVar;
        this.f4354b = zzdzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4355c.f4320a.H();
        this.f4355c.f4320a.a(this.f4353a, this.f4354b);
    }
}
