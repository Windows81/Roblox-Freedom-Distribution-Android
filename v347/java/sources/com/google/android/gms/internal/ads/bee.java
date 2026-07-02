package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

/* JADX INFO: loaded from: classes.dex */
final class bee implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AdOverlayInfoParcel f4833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzzv f4834b;

    bee(zzzv zzzvVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f4834b = zzzvVar;
        this.f4833a = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.aw.c();
        com.google.android.gms.ads.internal.overlay.k.a(this.f4834b.f5826a, this.f4833a, true);
    }
}
