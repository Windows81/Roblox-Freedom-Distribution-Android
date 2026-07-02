package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class rw implements com.google.android.gms.ads.internal.overlay.m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private qd f5528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.google.android.gms.ads.internal.overlay.m f5529b;

    public rw(qd qdVar, com.google.android.gms.ads.internal.overlay.m mVar) {
        this.f5528a = qdVar;
        this.f5529b = mVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void d() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void e() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void n_() {
        this.f5529b.n_();
        this.f5528a.n();
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void o_() {
        this.f5529b.o_();
        this.f5528a.o();
    }
}
