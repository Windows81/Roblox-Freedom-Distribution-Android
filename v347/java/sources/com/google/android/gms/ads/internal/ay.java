package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import android.widget.ViewSwitcher;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.kg;
import com.google.android.gms.internal.ads.lx;
import com.google.android.gms.internal.ads.qd;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class ay extends ViewSwitcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kg f3038a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final lx f3039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3040c;

    public ay(Context context, String str, String str2, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        super(context);
        this.f3038a = new kg(context);
        this.f3038a.a(str);
        this.f3038a.b(str2);
        this.f3040c = true;
        if (context instanceof Activity) {
            this.f3039b = new lx((Activity) context, this, onGlobalLayoutListener, onScrollChangedListener);
        } else {
            this.f3039b = new lx(null, this, onGlobalLayoutListener, onScrollChangedListener);
        }
        this.f3039b.a();
    }

    public final kg a() {
        return this.f3038a;
    }

    public final void b() {
        jd.a("Disable position monitoring on adFrame.");
        if (this.f3039b != null) {
            this.f3039b.b();
        }
    }

    public final void c() {
        jd.a("Enable debug gesture detector on adFrame.");
        this.f3040c = true;
    }

    public final void d() {
        jd.a("Disable debug gesture detector on adFrame.");
        this.f3040c = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f3039b != null) {
            this.f3039b.c();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f3039b != null) {
            this.f3039b.d();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.f3040c) {
            return false;
        }
        this.f3038a.a(motionEvent);
        return false;
    }

    @Override // android.widget.ViewAnimator, android.view.ViewGroup
    public final void removeAllViews() {
        int i = 0;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            KeyEvent.Callback childAt = getChildAt(i2);
            if (childAt != null && (childAt instanceof qd)) {
                arrayList.add((qd) childAt);
            }
        }
        super.removeAllViews();
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            ((qd) obj).destroy();
        }
    }
}
