package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class qj implements com.google.android.gms.ads.internal.overlay.m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private qd f5475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.google.android.gms.ads.internal.overlay.m f5476b;

    public qj(qd qdVar, com.google.android.gms.ads.internal.overlay.m mVar) {
        this.f5475a = qdVar;
        this.f5476b = mVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void d() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void e() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void n_() {
        this.f5476b.n_();
        this.f5475a.n();
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void o_() {
        this.f5476b.o_();
        this.f5475a.o();
    }
}
