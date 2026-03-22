package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ft implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzjx f4365a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzdz f4366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ fe f4367c;

    ft(fe feVar, zzjx zzjxVar, zzdz zzdzVar) {
        this.f4367c = feVar;
        this.f4365a = zzjxVar;
        this.f4366b = zzdzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4367c.f4320a.H();
        this.f4367c.f4320a.a(this.f4365a, this.f4366b);
    }
}
