package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.j;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class awi extends avt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j.a f4552a;

    public awi(j.a aVar) {
        this.f4552a = aVar;
    }

    @Override // com.google.android.gms.internal.ads.avs
    public final void a(avx avxVar) {
        this.f4552a.onUnifiedNativeAdLoaded(new awa(avxVar));
    }
}
