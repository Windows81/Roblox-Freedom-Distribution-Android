package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class hf extends df {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ gz f4469a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    hf(gz gzVar, fz fzVar) {
        super(fzVar);
        this.f4469a = gzVar;
    }

    @Override // com.google.android.gms.internal.measurement.df
    public final void a() {
        this.f4469a.q().y().a("Tasks have been queued for a long time");
    }
}
