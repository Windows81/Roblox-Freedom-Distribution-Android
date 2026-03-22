package com.google.ads.interactivemedia.v3.api.player;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface VideoAdPlayer extends AdProgressProvider {

    public interface VideoAdPlayerCallback {
        void onEnded();

        void onError();

        void onPause();

        void onPlay();

        void onResume();

        void onVolumeChanged(int i);
    }

    void addCallback(VideoAdPlayerCallback videoAdPlayerCallback);

    void loadAd(String str);

    void pauseAd();

    void playAd();

    void removeCallback(VideoAdPlayerCallback videoAdPlayerCallback);

    void resumeAd();

    void stopAd();
}
