package com.google.ads.interactivemedia.v3.api;

import android.content.Context;
import android.net.Uri;
import com.google.ads.interactivemedia.v3.impl.ac;
import com.google.ads.interactivemedia.v3.impl.ad;
import com.google.ads.interactivemedia.v3.impl.b;
import com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration;
import com.google.ads.interactivemedia.v3.impl.g;
import com.google.ads.interactivemedia.v3.impl.k;
import com.google.ads.interactivemedia.v3.impl.l;
import com.google.ads.interactivemedia.v3.impl.p;
import com.google.ads.interactivemedia.v3.impl.u;

/* JADX INFO: loaded from: classes.dex */
public class ImaSdkFactory {
    private static ImaSdkFactory instance;

    private ImaSdkFactory() {
    }

    public static ImaSdkFactory getInstance() {
        if (instance == null) {
            instance = new ImaSdkFactory();
        }
        return instance;
    }

    public ImaSdkSettings createImaSdkSettings() {
        return new ImaSdkSettings();
    }

    public AdsLoader createAdsLoader(Context context) {
        return createAdsLoader(context, createImaSdkSettings());
    }

    public AdsLoader createAdsLoader(Context context, ImaSdkSettings imaSdkSettings) {
        return new g(context, u.f2897b, imaSdkSettings);
    }

    private AdsLoader createAdsLoader(Context context, ImaSdkSettings imaSdkSettings, TestingConfiguration testingConfiguration) {
        return createAdsLoader(context, u.f2897b, imaSdkSettings, testingConfiguration);
    }

    private AdsLoader createAdsLoader(Context context, Uri uri, ImaSdkSettings imaSdkSettings, TestingConfiguration testingConfiguration) {
        g gVar = new g(context, uri, imaSdkSettings, testingConfiguration);
        gVar.a();
        return gVar;
    }

    public AdDisplayContainer createAdDisplayContainer() {
        return new b();
    }

    public StreamDisplayContainer createStreamDisplayContainer() {
        return new ac();
    }

    public AdsRenderingSettings createAdsRenderingSettings() {
        return new k();
    }

    public AdsRequest createAdsRequest() {
        return new l();
    }

    public StreamRequest createLiveStreamRequest(String str, String str2, StreamDisplayContainer streamDisplayContainer) {
        ad adVar = new ad();
        adVar.a(str);
        adVar.d(str2);
        adVar.a(streamDisplayContainer);
        return adVar;
    }

    public StreamRequest createVodStreamRequest(String str, String str2, String str3, StreamDisplayContainer streamDisplayContainer) {
        ad adVar = new ad();
        adVar.b(str);
        adVar.c(str2);
        adVar.d(str3);
        adVar.a(streamDisplayContainer);
        return adVar;
    }

    public CompanionAdSlot createCompanionAdSlot() {
        return new p();
    }
}
