package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.api.Ad;
import com.google.ads.interactivemedia.v3.api.AdPodInfo;
import com.google.ads.interactivemedia.v3.api.UiElement;
import java.util.Arrays;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b implements Ad {
    private String adId;
    private c adPodInfo = new c();
    private String adSystem;
    private String[] adWrapperIds;
    private String[] adWrapperSystems;
    private String clickThroughUrl;
    private String contentType;
    private String description;
    private double duration;
    private int height;
    private boolean linear;
    private boolean skippable;
    private String title;
    private String traffickingParameters;
    private Set<UiElement> uiElements;
    private int width;

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getAdId() {
        return this.adId;
    }

    public void setAdId(String str) {
        this.adId = str;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getAdSystem() {
        return this.adSystem;
    }

    public void setAdSystem(String str) {
        this.adSystem = str;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String[] getAdWrapperIds() {
        return this.adWrapperIds;
    }

    public void setAdWrapperIds(String[] strArr) {
        this.adWrapperIds = strArr;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String[] getAdWrapperSystems() {
        return this.adWrapperSystems;
    }

    public void setAdWrapperSystems(String[] strArr) {
        this.adWrapperSystems = strArr;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public boolean isLinear() {
        return this.linear;
    }

    public void setLinear(boolean z) {
        this.linear = z;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public boolean isSkippable() {
        return this.skippable;
    }

    public void setSkippable(boolean z) {
        this.skippable = z;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getContentType() {
        return this.contentType;
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getTraffickingParameters() {
        return this.traffickingParameters;
    }

    public void setTraffickingParameters(String str) {
        this.traffickingParameters = str;
    }

    public String getClickThruUrl() {
        return this.clickThroughUrl;
    }

    public void setClickThruUrl(String str) {
        this.clickThroughUrl = str;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public double getDuration() {
        return this.duration;
    }

    public void setDuration(double d2) {
        this.duration = d2;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public AdPodInfo getAdPodInfo() {
        return this.adPodInfo;
    }

    public void setAdPodInfo(c cVar) {
        this.adPodInfo = cVar;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public Set<UiElement> getUiElements() {
        return this.uiElements;
    }

    public void setUiElements(Set<UiElement> set) {
        this.uiElements = set;
    }

    public int hashCode() {
        return a.a.a.a.a.c.a(this, new String[0]);
    }

    public boolean equals(Object obj) {
        return a.a.a.a.a.b.a(this, obj, new String[0]);
    }

    public String toString() {
        String str = this.adId;
        String str2 = this.title;
        String str3 = this.description;
        String str4 = this.contentType;
        String strValueOf = String.valueOf(Arrays.toString(this.adWrapperIds));
        String strValueOf2 = String.valueOf(Arrays.toString(this.adWrapperSystems));
        String str5 = this.adSystem;
        boolean z = this.linear;
        boolean z2 = this.skippable;
        int i = this.width;
        int i2 = this.height;
        String str6 = this.traffickingParameters;
        String str7 = this.clickThroughUrl;
        double d2 = this.duration;
        String strValueOf3 = String.valueOf(this.adPodInfo);
        String strValueOf4 = String.valueOf(this.uiElements);
        return new StringBuilder(String.valueOf(str).length() + 263 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(strValueOf).length() + String.valueOf(strValueOf2).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length() + String.valueOf(strValueOf3).length() + String.valueOf(strValueOf4).length()).append("Ad [adId=").append(str).append(", title=").append(str2).append(", description=").append(str3).append(", contentType=").append(str4).append(", adWrapperIds=").append(strValueOf).append(", adWrapperSystems=").append(strValueOf2).append(", adSystem=").append(str5).append(", linear=").append(z).append(", skippable=").append(z2).append(", width=").append(i).append(", height=").append(i2).append(", traffickingParameters=").append(str6).append(", clickThroughUrl=").append(str7).append(", duration=").append(d2).append(", adPodInfo=").append(strValueOf3).append(", uiElements=").append(strValueOf4).append("]").toString();
    }
}
