package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.g;
import com.google.android.gms.ads.j;
import com.google.android.gms.ads.k;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.internal.ads.aql;
import com.google.android.gms.internal.ads.mj;

/* JADX INFO: loaded from: classes.dex */
public final class PublisherAdView extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aql f2957a;

    public PublisherAdView(Context context) {
        super(context);
        this.f2957a = new aql(this);
    }

    public PublisherAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2957a = new aql(this, attributeSet, true);
        w.a(context, "Context cannot be null");
    }

    public PublisherAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2957a = new aql(this, attributeSet, true);
    }

    public final com.google.android.gms.ads.a getAdListener() {
        return this.f2957a.b();
    }

    public final com.google.android.gms.ads.d getAdSize() {
        return this.f2957a.c();
    }

    public final com.google.android.gms.ads.d[] getAdSizes() {
        return this.f2957a.d();
    }

    public final String getAdUnitId() {
        return this.f2957a.e();
    }

    public final a getAppEventListener() {
        return this.f2957a.f();
    }

    public final String getMediationAdapterClassName() {
        return this.f2957a.j();
    }

    public final c getOnCustomRenderedAdLoadedListener() {
        return this.f2957a.g();
    }

    public final j getVideoController() {
        return this.f2957a.k();
    }

    public final k getVideoOptions() {
        return this.f2957a.m();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int i5 = ((i3 - i) - measuredWidth) / 2;
        int i6 = ((i4 - i2) - measuredHeight) / 2;
        childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        com.google.android.gms.ads.d adSize;
        int iB;
        int iA = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            try {
                adSize = getAdSize();
            } catch (NullPointerException e) {
                mj.b("Unable to retrieve ad size.", e);
                adSize = null;
            }
            if (adSize != null) {
                Context context = getContext();
                iB = adSize.b(context);
                iA = adSize.a(context);
            } else {
                iB = 0;
            }
        } else {
            measureChild(childAt, i, i2);
            iB = childAt.getMeasuredWidth();
            iA = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(iB, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(iA, getSuggestedMinimumHeight()), i2));
    }

    public final void setAdListener(com.google.android.gms.ads.a aVar) {
        this.f2957a.a(aVar);
    }

    public final void setAdSizes(com.google.android.gms.ads.d... dVarArr) {
        if (dVarArr == null || dVarArr.length <= 0) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.f2957a.b(dVarArr);
    }

    public final void setAdUnitId(String str) {
        this.f2957a.a(str);
    }

    public final void setAppEventListener(a aVar) {
        this.f2957a.a(aVar);
    }

    public final void setCorrelator(g gVar) {
        this.f2957a.a(gVar);
    }

    public final void setManualImpressionsEnabled(boolean z) {
        this.f2957a.a(z);
    }

    public final void setOnCustomRenderedAdLoadedListener(c cVar) {
        this.f2957a.a(cVar);
    }

    public final void setVideoOptions(k kVar) {
        this.f2957a.a(kVar);
    }
}
