package com.google.ads.interactivemedia.v3.impl;

import android.view.ViewGroup;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class p implements CompanionAdSlot {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ViewGroup f2884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2885d;

    @Override // com.google.ads.interactivemedia.v3.api.CompanionAdSlot
    public boolean isFilled() {
        return this.f2884c.findViewWithTag(this.f2885d) != null;
    }

    @Override // com.google.ads.interactivemedia.v3.api.CompanionAdSlot
    public int getWidth() {
        return this.f2882a;
    }

    @Override // com.google.ads.interactivemedia.v3.api.CompanionAdSlot
    public int getHeight() {
        return this.f2883b;
    }

    @Override // com.google.ads.interactivemedia.v3.api.CompanionAdSlot
    public void setSize(int i, int i2) {
        this.f2882a = i;
        this.f2883b = i2;
    }

    public void a(String str) {
        this.f2885d = str;
    }

    @Override // com.google.ads.interactivemedia.v3.api.CompanionAdSlot
    public ViewGroup getContainer() {
        return this.f2884c;
    }

    @Override // com.google.ads.interactivemedia.v3.api.CompanionAdSlot
    public void setContainer(ViewGroup viewGroup) {
        this.f2884c = viewGroup;
    }
}
