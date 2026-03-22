package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzed f4333a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ fe f4334b;

    fj(fe feVar, zzed zzedVar) {
        this.f4334b = feVar;
        this.f4333a = zzedVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4334b.f4320a.H();
        ii iiVar = this.f4334b.f4320a;
        zzed zzedVar = this.f4333a;
        zzdz zzdzVarA = iiVar.a(zzedVar.f4718a);
        if (zzdzVarA != null) {
            iiVar.a(zzedVar, zzdzVarA);
        }
    }
}
