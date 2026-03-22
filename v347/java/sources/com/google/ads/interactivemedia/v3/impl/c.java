package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.api.AdError;
import com.google.ads.interactivemedia.v3.api.AdErrorEvent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c implements AdErrorEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AdError f2835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f2836b;

    c(AdError adError) {
        this.f2835a = adError;
        this.f2836b = null;
    }

    c(AdError adError, Object obj) {
        this.f2835a = adError;
        this.f2836b = obj;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdErrorEvent
    public AdError getError() {
        return this.f2835a;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdErrorEvent
    public Object getUserRequestContext() {
        return this.f2836b;
    }
}
