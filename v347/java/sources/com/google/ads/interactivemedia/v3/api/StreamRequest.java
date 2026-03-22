package com.google.ads.interactivemedia.v3.api;

import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface StreamRequest {
    Map<String, String> getAdTagParameters();

    String getApiKey();

    String getAssetKey();

    String getContentSourceId();

    StreamDisplayContainer getStreamDisplayContainer();

    Object getUserRequestContext();

    String getVideoId();

    boolean isPrerollRequested();

    void setAdTagParameters(Map<String, String> map);

    void setPrerollRequested(boolean z);

    void setUserRequestContext(Object obj);
}
