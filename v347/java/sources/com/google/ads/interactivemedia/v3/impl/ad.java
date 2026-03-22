package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.api.StreamDisplayContainer;
import com.google.ads.interactivemedia.v3.api.StreamRequest;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class ad implements StreamRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StreamDisplayContainer f2825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f2827c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2828d;
    private String e;
    private boolean f;
    private Map<String, String> g;
    private transient Object h;

    public void a(String str) {
        this.f2826b = str;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamRequest
    public String getAssetKey() {
        return this.f2826b;
    }

    public void b(String str) {
        this.f2828d = str;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamRequest
    public String getContentSourceId() {
        return this.f2828d;
    }

    public void c(String str) {
        this.e = str;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamRequest
    public String getVideoId() {
        return this.e;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamRequest
    public void setPrerollRequested(boolean z) {
        this.f = z;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamRequest
    public boolean isPrerollRequested() {
        return this.f;
    }

    public void d(String str) {
        this.f2827c = str;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamRequest
    public String getApiKey() {
        return this.f2827c;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamRequest
    public void setUserRequestContext(Object obj) {
        this.h = obj;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamRequest
    public Object getUserRequestContext() {
        return this.h;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamRequest
    public StreamDisplayContainer getStreamDisplayContainer() {
        return this.f2825a;
    }

    public void a(StreamDisplayContainer streamDisplayContainer) {
        this.f2825a = streamDisplayContainer;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamRequest
    public void setAdTagParameters(Map<String, String> map) {
        this.g = map;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamRequest
    public Map<String, String> getAdTagParameters() {
        return this.g;
    }
}
