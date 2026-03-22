package com.google.ads.interactivemedia.v3.impl;

import android.view.ViewGroup;
import com.google.ads.interactivemedia.v3.api.BaseDisplayContainer;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import com.google.c.b.y;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class o implements BaseDisplayContainer {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f2878d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ViewGroup f2879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Collection<CompanionAdSlot> f2880b = Collections.emptyList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, CompanionAdSlot> f2881c = null;

    @Override // com.google.ads.interactivemedia.v3.api.BaseDisplayContainer
    public ViewGroup getAdContainer() {
        return this.f2879a;
    }

    @Override // com.google.ads.interactivemedia.v3.api.BaseDisplayContainer
    public void setAdContainer(ViewGroup viewGroup) {
        this.f2879a = viewGroup;
    }

    @Override // com.google.ads.interactivemedia.v3.api.BaseDisplayContainer
    public Collection<CompanionAdSlot> getCompanionSlots() {
        return this.f2880b;
    }

    @Override // com.google.ads.interactivemedia.v3.api.BaseDisplayContainer
    public void setCompanionSlots(Collection<CompanionAdSlot> collection) {
        this.f2880b = collection;
    }

    public Map<String, CompanionAdSlot> a() {
        if (this.f2881c == null) {
            y.a aVar = new y.a();
            for (CompanionAdSlot companionAdSlot : this.f2880b) {
                if (companionAdSlot != null) {
                    int i = f2878d;
                    f2878d = i + 1;
                    aVar.a(new StringBuilder(20).append("compSlot_").append(i).toString(), companionAdSlot);
                }
            }
            this.f2881c = aVar.a();
        }
        return this.f2881c;
    }
}
