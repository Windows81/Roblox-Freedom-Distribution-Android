package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public interface MediationBannerAdapter extends b {
    View getBannerView();

    void requestBannerAd(Context context, c cVar, Bundle bundle, com.google.android.gms.ads.d dVar, a aVar, Bundle bundle2);
}
