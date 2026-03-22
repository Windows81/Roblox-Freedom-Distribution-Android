package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import com.google.ads.interactivemedia.v3.api.AdEvent;
import com.google.ads.interactivemedia.v3.api.player.AdProgressProvider;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface AdsManager extends AdProgressProvider {
    void addAdErrorListener(AdErrorEvent.AdErrorListener adErrorListener);

    void addAdEventListener(AdEvent.AdEventListener adEventListener);

    void destroy();

    void discardAdBreak();

    List<Float> getAdCuePoints();

    Ad getCurrentAd();

    String getStreamId();

    void init();

    void init(AdsRenderingSettings adsRenderingSettings);

    boolean isCustomPlaybackUsed();

    void pause();

    void removeAdErrorListener(AdErrorEvent.AdErrorListener adErrorListener);

    void removeAdEventListener(AdEvent.AdEventListener adEventListener);

    void resume();

    void skip();

    void start();
}
