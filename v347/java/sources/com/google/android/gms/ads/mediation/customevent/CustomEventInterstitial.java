package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public interface CustomEventInterstitial extends a {
    void requestInterstitialAd(Context context, d dVar, String str, com.google.android.gms.ads.mediation.a aVar, Bundle bundle);

    void showInterstitial();
}
