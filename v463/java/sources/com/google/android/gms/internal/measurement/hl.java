package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class hl implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ boolean f4492a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzjx f4493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ zzdz f4494c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ gz f4495d;

    hl(gz gzVar, boolean z, zzjx zzjxVar, zzdz zzdzVar) {
        this.f4495d = gzVar;
        this.f4492a = z;
        this.f4493b = zzjxVar;
        this.f4494c = zzdzVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        dp dpVar = this.f4495d.f4453b;
        if (dpVar == null) {
            this.f4495d.q().v().a("Discarding data. Failed to set user attribute");
        } else {
            this.f4495d.a(dpVar, this.f4492a ? null : this.f4493b, this.f4494c);
            this.f4495d.C();
        }
    }
}
