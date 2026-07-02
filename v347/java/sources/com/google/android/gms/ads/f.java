package com.google.android.gms.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.anv;
import com.google.android.gms.internal.ads.aql;
import com.google.android.gms.internal.ads.mj;

/* JADX INFO: loaded from: classes.dex */
class f extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final aql f2961a;

    public f(Context context, int i) {
        super(context);
        this.f2961a = new aql(this, i);
    }

    public void a() {
        this.f2961a.i();
    }

    public void a(c cVar) {
        this.f2961a.a(cVar.a());
    }

    public void b() {
        this.f2961a.h();
    }

    public void c() {
        this.f2961a.a();
    }

    public a getAdListener() {
        return this.f2961a.b();
    }

    public d getAdSize() {
        return this.f2961a.c();
    }

    public String getAdUnitId() {
        return this.f2961a.e();
    }

    public String getMediationAdapterClassName() {
        return this.f2961a.j();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
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
    protected void onMeasure(int i, int i2) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public void setAdListener(a aVar) {
        this.f2961a.a(aVar);
        if (aVar == 0) {
            this.f2961a.a((anv) null);
            this.f2961a.a((com.google.android.gms.ads.doubleclick.a) null);
            return;
        }
        if (aVar instanceof anv) {
            this.f2961a.a((anv) aVar);
        }
        if (aVar instanceof com.google.android.gms.ads.doubleclick.a) {
            this.f2961a.a((com.google.android.gms.ads.doubleclick.a) aVar);
        }
    }

    public void setAdSize(d dVar) {
        this.f2961a.a(dVar);
    }

    public void setAdUnitId(String str) {
        this.f2961a.a(str);
    }
}
