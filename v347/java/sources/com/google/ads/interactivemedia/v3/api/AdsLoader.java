package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.AdErrorEvent;

/* JADX INFO: loaded from: classes.dex */
public interface AdsLoader {

    public interface AdsLoadedListener {
        void onAdsManagerLoaded(AdsManagerLoadedEvent adsManagerLoadedEvent);
    }

    void addAdErrorListener(AdErrorEvent.AdErrorListener adErrorListener);

    void addAdsLoadedListener(AdsLoadedListener adsLoadedListener);

    void contentComplete();

    ImaSdkSettings getSettings();

    void removeAdErrorListener(AdErrorEvent.AdErrorListener adErrorListener);

    void removeAdsLoadedListener(AdsLoadedListener adsLoadedListener);

    void requestAds(AdsRequest adsRequest);

    String requestStream(StreamRequest streamRequest);
}
