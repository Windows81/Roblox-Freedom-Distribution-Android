package com.google.ads.interactivemedia.v3.api;

import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface Ad {
    String getAdId();

    AdPodInfo getAdPodInfo();

    String getAdSystem();

    String[] getAdWrapperIds();

    String[] getAdWrapperSystems();

    String getContentType();

    String getDescription();

    double getDuration();

    int getHeight();

    String getTitle();

    String getTraffickingParameters();

    Set<UiElement> getUiElements();

    int getWidth();

    boolean isLinear();

    boolean isSkippable();
}
