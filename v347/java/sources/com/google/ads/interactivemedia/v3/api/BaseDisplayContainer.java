package com.google.ads.interactivemedia.v3.api;

import android.view.ViewGroup;
import java.util.Collection;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface BaseDisplayContainer {
    ViewGroup getAdContainer();

    Collection<CompanionAdSlot> getCompanionSlots();

    void setAdContainer(ViewGroup viewGroup);

    void setCompanionSlots(Collection<CompanionAdSlot> collection);
}
