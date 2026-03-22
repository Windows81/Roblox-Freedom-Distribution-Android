package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fi implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzed f4331a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ fe f4332b;

    fi(fe feVar, zzed zzedVar) {
        this.f4332b = feVar;
        this.f4331a = zzedVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4332b.f4320a.H();
        ii iiVar = this.f4332b.f4320a;
        zzed zzedVar = this.f4331a;
        zzdz zzdzVarA = iiVar.a(zzedVar.f4718a);
        if (zzdzVarA != null) {
            iiVar.b(zzedVar, zzdzVarA);
        }
    }
}
