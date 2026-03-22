package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.api.AdDisplayContainer;
import com.google.ads.interactivemedia.v3.api.AdsRequest;
import com.google.ads.interactivemedia.v3.api.player.ContentProgressProvider;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class l implements AdsRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2874a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AdDisplayContainer f2875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, String> f2876c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2877d;
    private ContentProgressProvider e;
    private a f = a.UNKNOWN;
    private transient Object g;

    public enum a {
        AUTO,
        CLICK,
        UNKNOWN
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRequest
    public void setAdTagUrl(String str) {
        this.f2874a = str;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRequest
    public String getAdTagUrl() {
        return this.f2874a;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRequest
    public void setExtraParameter(String str, String str2) {
        if (this.f2876c == null) {
            this.f2876c = new HashMap();
        }
        this.f2876c.put(str, str2);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRequest
    public String getExtraParameter(String str) {
        if (this.f2876c == null) {
            return null;
        }
        return this.f2876c.get(str);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRequest
    public Map<String, String> getExtraParameters() {
        return this.f2876c;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRequest
    public void setUserRequestContext(Object obj) {
        this.g = obj;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRequest
    public Object getUserRequestContext() {
        return this.g;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRequest
    public AdDisplayContainer getAdDisplayContainer() {
        return this.f2875b;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRequest
    public void setAdDisplayContainer(AdDisplayContainer adDisplayContainer) {
        this.f2875b = adDisplayContainer;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRequest
    public ContentProgressProvider getContentProgressProvider() {
        return this.e;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRequest
    public void setContentProgressProvider(ContentProgressProvider contentProgressProvider) {
        this.e = contentProgressProvider;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRequest
    public String getAdsResponse() {
        return this.f2877d;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRequest
    public void setAdsResponse(String str) {
        this.f2877d = str;
    }

    public a a() {
        return this.f;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRequest
    public void setAdWillAutoPlay(boolean z) {
        if (z) {
            this.f = a.AUTO;
        } else {
            this.f = a.CLICK;
        }
    }
}
