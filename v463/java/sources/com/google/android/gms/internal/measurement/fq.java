package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fq implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzeu f4356a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ fe f4358c;

    fq(fe feVar, zzeu zzeuVar, String str) {
        this.f4358c = feVar;
        this.f4356a = zzeuVar;
        this.f4357b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4358c.f4320a.H();
        this.f4358c.f4320a.a(this.f4356a, this.f4357b);
    }
}
