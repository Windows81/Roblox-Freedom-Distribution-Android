package com.google.ads.mediation;

import com.google.android.gms.ads.h;
import com.google.android.gms.ads.reward.a;
import com.google.android.gms.ads.reward.b;

/* JADX INFO: loaded from: classes.dex */
final class zza implements b {
    private final /* synthetic */ AbstractAdViewAdapter zzhd;

    zza(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.zzhd = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.b
    public final void onRewarded(a aVar) {
        this.zzhd.zzhb.a(this.zzhd, aVar);
    }

    @Override // com.google.android.gms.ads.reward.b
    public final void onRewardedVideoAdClosed() {
        this.zzhd.zzhb.e(this.zzhd);
        AbstractAdViewAdapter.zza(this.zzhd, (h) null);
    }

    @Override // com.google.android.gms.ads.reward.b
    public final void onRewardedVideoAdFailedToLoad(int i) {
        this.zzhd.zzhb.a(this.zzhd, i);
    }

    @Override // com.google.android.gms.ads.reward.b
    public final void onRewardedVideoAdLeftApplication() {
        this.zzhd.zzhb.f(this.zzhd);
    }

    @Override // com.google.android.gms.ads.reward.b
    public final void onRewardedVideoAdLoaded() {
        this.zzhd.zzhb.b(this.zzhd);
    }

    @Override // com.google.android.gms.ads.reward.b
    public final void onRewardedVideoAdOpened() {
        this.zzhd.zzhb.c(this.zzhd);
    }

    @Override // com.google.android.gms.ads.reward.b
    public final void onRewardedVideoCompleted() {
        this.zzhd.zzhb.g(this.zzhd);
    }

    @Override // com.google.android.gms.ads.reward.b
    public final void onRewardedVideoStarted() {
        this.zzhd.zzhb.d(this.zzhd);
    }
}
