package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.api.AdsRenderingSettings;
import com.google.ads.interactivemedia.v3.api.UiElement;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class k implements AdsRenderingSettings {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @com.google.ads.interactivemedia.v3.a.a.c(a = "uiElements")
    private Set<UiElement> f2872c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @com.google.ads.interactivemedia.v3.a.a.c(a = "enablePreloading")
    private boolean f2873d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @com.google.ads.interactivemedia.v3.a.a.c(a = "bitrate")
    private int f2870a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @com.google.ads.interactivemedia.v3.a.a.c(a = "mimeTypes")
    private List<String> f2871b = null;

    @com.google.ads.interactivemedia.v3.a.a.c(a = "playAdsAfterTime")
    private double e = -1.0d;

    @com.google.ads.interactivemedia.v3.a.a.c(a = "loadVideoTimeout")
    private int f = -1;
    private boolean g = true;

    @Override // com.google.ads.interactivemedia.v3.api.AdsRenderingSettings
    public int getBitrateKbps() {
        return this.f2870a;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRenderingSettings
    public void setBitrateKbps(int i) {
        this.f2870a = i;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRenderingSettings
    public List<String> getMimeTypes() {
        return this.f2871b;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRenderingSettings
    public void setMimeTypes(List<String> list) {
        this.f2871b = list;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRenderingSettings
    public void setUiElements(Set<UiElement> set) {
        this.f2872c = set;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRenderingSettings
    public boolean getEnablePreloading() {
        return this.f2873d;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRenderingSettings
    public void setEnablePreloading(boolean z) {
        this.f2873d = z;
    }

    public String toString() {
        int i = this.f2870a;
        String strValueOf = String.valueOf(this.f2871b);
        String strValueOf2 = String.valueOf(this.f2872c);
        boolean z = this.f2873d;
        return new StringBuilder(String.valueOf(strValueOf).length() + 134 + String.valueOf(strValueOf2).length()).append("AdsRenderingSettings [bitrate=").append(i).append(", mimeTypes=").append(strValueOf).append(", uiElements=").append(strValueOf2).append(", enablePreloading=").append(z).append(", playAdsAfterTime=").append(this.e).append("]").toString();
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRenderingSettings
    public boolean isRenderCompanions() {
        return this.g;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRenderingSettings
    public void setRenderCompanions(boolean z) {
        this.g = z;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsRenderingSettings
    public void setPlayAdsAfterTime(double d2) {
        this.e = d2;
    }
}
