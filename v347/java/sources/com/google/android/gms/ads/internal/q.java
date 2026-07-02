package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

/* JADX INFO: loaded from: classes.dex */
final class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AdOverlayInfoParcel f3186a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ p f3187b;

    q(p pVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f3187b = pVar;
        this.f3186a = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aw.c();
        com.google.android.gms.ads.internal.overlay.k.a(this.f3187b.f3184a.e.f3036c, this.f3186a, true);
    }
}
