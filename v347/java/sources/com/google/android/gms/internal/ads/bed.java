package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class bed implements com.google.android.gms.ads.internal.overlay.m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzzv f4832a;

    bed(zzzv zzzvVar) {
        this.f4832a = zzzvVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void d() {
        mj.b("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void e() {
        mj.b("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void n_() {
        mj.b("AdMobCustomTabsAdapter overlay is closed.");
        this.f4832a.f5827b.c(this.f4832a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void o_() {
        mj.b("Opening AdMobCustomTabsAdapter overlay.");
        this.f4832a.f5827b.b(this.f4832a);
    }
}
