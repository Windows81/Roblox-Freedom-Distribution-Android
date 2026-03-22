package com.google.android.gms.internal.measurement;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.if, reason: invalid class name */
/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class Cif extends df {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ii f4541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ie f4542b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Cif(ie ieVar, fz fzVar, ii iiVar) {
        super(fzVar);
        this.f4542b = ieVar;
        this.f4541a = iiVar;
    }

    @Override // com.google.android.gms.internal.measurement.df
    public final void a() {
        this.f4542b.u();
        this.f4542b.q().C().a("Starting upload from DelayedRunnable");
        this.f4541a.G();
    }
}
