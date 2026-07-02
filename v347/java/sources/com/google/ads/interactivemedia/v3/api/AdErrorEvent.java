package com.google.ads.interactivemedia.v3.api;

/* JADX INFO: loaded from: classes.dex */
public interface AdErrorEvent {

    public interface AdErrorListener {
        void onAdError(AdErrorEvent adErrorEvent);
    }

    AdError getError();

    Object getUserRequestContext();
}
