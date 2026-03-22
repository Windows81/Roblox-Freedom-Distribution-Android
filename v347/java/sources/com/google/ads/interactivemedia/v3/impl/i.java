package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.api.AdsManager;
import com.google.ads.interactivemedia.v3.api.AdsManagerLoadedEvent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class i implements AdsManagerLoadedEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AdsManager f2863a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f2864b;

    i(AdsManager adsManager, Object obj) {
        this.f2863a = adsManager;
        this.f2864b = obj;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManagerLoadedEvent
    public AdsManager getAdsManager() {
        return this.f2863a;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManagerLoadedEvent
    public Object getUserRequestContext() {
        return this.f2864b;
    }
}
