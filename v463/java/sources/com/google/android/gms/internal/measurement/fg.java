package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fg implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzed f4325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzdz f4326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ fe f4327c;

    fg(fe feVar, zzed zzedVar, zzdz zzdzVar) {
        this.f4327c = feVar;
        this.f4325a = zzedVar;
        this.f4326b = zzdzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4327c.f4320a.H();
        this.f4327c.f4320a.b(this.f4325a, this.f4326b);
    }
}
