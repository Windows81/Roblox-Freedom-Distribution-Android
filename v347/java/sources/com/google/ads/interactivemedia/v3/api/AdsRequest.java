package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.player.ContentProgressProvider;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface AdsRequest {
    AdDisplayContainer getAdDisplayContainer();

    String getAdTagUrl();

    String getAdsResponse();

    ContentProgressProvider getContentProgressProvider();

    String getExtraParameter(String str);

    Map<String, String> getExtraParameters();

    Object getUserRequestContext();

    void setAdDisplayContainer(AdDisplayContainer adDisplayContainer);

    void setAdTagUrl(String str);

    void setAdWillAutoPlay(boolean z);

    void setAdsResponse(String str);

    void setContentProgressProvider(ContentProgressProvider contentProgressProvider);

    void setExtraParameter(String str, String str2);

    void setUserRequestContext(Object obj);
}
