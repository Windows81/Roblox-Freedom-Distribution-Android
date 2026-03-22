package com.google.ads.interactivemedia.v3.api;

import android.view.ViewGroup;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface CompanionAdSlot {
    ViewGroup getContainer();

    int getHeight();

    int getWidth();

    boolean isFilled();

    void setContainer(ViewGroup viewGroup);

    void setSize(int i, int i2);
}
