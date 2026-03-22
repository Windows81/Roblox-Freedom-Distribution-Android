package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fs implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzjx f4362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzdz f4363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ fe f4364c;

    fs(fe feVar, zzjx zzjxVar, zzdz zzdzVar) {
        this.f4364c = feVar;
        this.f4362a = zzjxVar;
        this.f4363b = zzdzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4364c.f4320a.H();
        this.f4364c.f4320a.b(this.f4362a, this.f4363b);
    }
}
