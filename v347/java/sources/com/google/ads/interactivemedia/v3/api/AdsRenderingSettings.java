package com.google.ads.interactivemedia.v3.api;

import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface AdsRenderingSettings {
    int getBitrateKbps();

    boolean getEnablePreloading();

    List<String> getMimeTypes();

    boolean isRenderCompanions();

    void setBitrateKbps(int i);

    void setEnablePreloading(boolean z);

    void setMimeTypes(List<String> list);

    void setPlayAdsAfterTime(double d2);

    void setRenderCompanions(boolean z);

    void setUiElements(Set<UiElement> set);
}
