package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.api.player.AdProgressProvider;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class f extends ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final AdProgressProvider f2844a;

    public f(AdProgressProvider adProgressProvider, long j) {
        super(j);
        this.f2844a = adProgressProvider;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.ab
    public VideoProgressUpdate a() {
        return this.f2844a.getAdProgress();
    }
}
