package com.google.android.gms.internal.measurement;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class il implements Callable<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzdz f4553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ii f4554b;

    il(ii iiVar, zzdz zzdzVar) {
        this.f4554b = iiVar;
        this.f4553a = zzdzVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        ct ctVarE = this.f4554b.b().i(this.f4553a.f4713a) ? this.f4554b.e(this.f4553a) : this.f4554b.D().b(this.f4553a.f4713a);
        if (ctVarE != null) {
            return ctVarE.c();
        }
        this.f4554b.q().y().a("App info was null when attempting to get app instance id");
        return null;
    }
}
