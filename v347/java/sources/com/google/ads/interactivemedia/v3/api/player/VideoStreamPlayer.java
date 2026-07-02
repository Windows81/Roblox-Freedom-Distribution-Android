package com.google.ads.interactivemedia.v3.api.player;

/* JADX INFO: loaded from: classes.dex */
public interface VideoStreamPlayer extends ContentProgressProvider {

    public interface VideoStreamPlayerCallback {
        void onUserTextReceived(String str);
    }

    void addCallback(VideoStreamPlayerCallback videoStreamPlayerCallback);

    void loadUrl(String str);

    void onAdBreakEnded();

    void onAdBreakStarted();

    void removeCallback(VideoStreamPlayerCallback videoStreamPlayerCallback);
}
