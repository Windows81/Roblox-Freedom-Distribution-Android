package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.api.AdsRequest;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import com.google.ads.interactivemedia.v3.api.ImaSdkSettings;
import com.google.ads.interactivemedia.v3.api.StreamRequest;
import com.google.ads.interactivemedia.v3.impl.ac;
import com.google.ads.interactivemedia.v3.impl.data.g;
import com.google.ads.interactivemedia.v3.impl.g;
import com.google.ads.interactivemedia.v3.impl.l;
import com.google.ads.interactivemedia.v3.impl.o;
import com.google.c.b.y;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    public interface a {
        a adTagParameters(Map<String, String> map);

        a adTagUrl(String str);

        a adsResponse(String str);

        a apiKey(String str);

        a assetKey(String str);

        a attemptPreroll(Boolean bool);

        i build();

        a companionSlots(Map<String, String> map);

        a contentSourceId(String str);

        a env(String str);

        a extraParameters(Map<String, String> map);

        a isTv(Boolean bool);

        a marketAppInfo(g.b bVar);

        a msParameter(String str);

        a network(String str);

        a settings(ImaSdkSettings imaSdkSettings);

        a videoId(String str);

        a videoPlayActivation(l.a aVar);
    }

    public abstract Map<String, String> adTagParameters();

    public abstract String adTagUrl();

    public abstract String adsResponse();

    public abstract String apiKey();

    public abstract String assetKey();

    public abstract Boolean attemptPreroll();

    public abstract Map<String, String> companionSlots();

    public abstract String contentSourceId();

    public abstract String env();

    public abstract Map<String, String> extraParameters();

    public abstract Boolean isTv();

    public abstract g.b marketAppInfo();

    public abstract String msParameter();

    public abstract String network();

    public abstract ImaSdkSettings settings();

    public abstract String videoId();

    public abstract l.a videoPlayActivation();

    public static i create(AdsRequest adsRequest, String str, String str2, ImaSdkSettings imaSdkSettings, g.b bVar, boolean z) {
        String adTagUrl = adsRequest.getAdTagUrl();
        String adsResponse = adsRequest.getAdsResponse();
        Map<String, String> extraParameters = adsRequest.getExtraParameters();
        l.a aVarA = ((l) adsRequest).a();
        return builder().adTagUrl(adTagUrl).adsResponse(adsResponse).env(str).network(str2).extraParameters(extraParameters).settings(imaSdkSettings).videoPlayActivation(aVarA).companionSlots(getCompanionSlots((com.google.ads.interactivemedia.v3.impl.b) adsRequest.getAdDisplayContainer())).marketAppInfo(bVar).isTv(Boolean.valueOf(z)).build();
    }

    public static i createFromStreamRequest(StreamRequest streamRequest, String str, String str2, ImaSdkSettings imaSdkSettings, g.b bVar, boolean z, String str3) {
        return builder().assetKey(streamRequest.getAssetKey()).contentSourceId(streamRequest.getContentSourceId()).videoId(streamRequest.getVideoId()).apiKey(streamRequest.getApiKey()).attemptPreroll(Boolean.valueOf(streamRequest.isPrerollRequested())).adTagParameters(streamRequest.getAdTagParameters()).env(str).network(str2).settings(imaSdkSettings).companionSlots(getCompanionSlots((ac) streamRequest.getStreamDisplayContainer())).marketAppInfo(bVar).isTv(Boolean.valueOf(z)).msParameter(str3).build();
    }

    public static a builder() {
        return new g.a();
    }

    private static Map<String, String> getCompanionSlots(o oVar) {
        Map<String, CompanionAdSlot> mapA = oVar.a();
        if (mapA == null || mapA.isEmpty()) {
            return null;
        }
        y.a aVar = new y.a();
        for (String str : mapA.keySet()) {
            CompanionAdSlot companionAdSlot = mapA.get(str);
            int width = companionAdSlot.getWidth();
            aVar.a(str, new StringBuilder(23).append(width).append("x").append(companionAdSlot.getHeight()).toString());
        }
        return aVar.a();
    }
}
