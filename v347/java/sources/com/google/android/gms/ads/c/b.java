package com.google.android.gms.ads.c;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.d;
import com.google.android.gms.internal.ads.aql;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.mj;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class b extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aql f2952a;

    public final com.google.android.gms.ads.a getAdListener() {
        return this.f2952a.b();
    }

    public final d getAdSize() {
        return this.f2952a.c();
    }

    public final String getAdUnitId() {
        return this.f2952a.e();
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
        d adSize;
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
        this.f2952a.a(aVar);
    }

    public final void setAdSize(d dVar) {
        this.f2952a.a(dVar);
    }

    public final void setAdUnitId(String str) {
        this.f2952a.a(str);
    }
}
