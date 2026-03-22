package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.h.r;
import androidx.core.h.z;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class b extends c<View> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Rect f4822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Rect f4823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4824c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4825d;

    private static int c(int i) {
        if (i == 0) {
            return 8388659;
        }
        return i;
    }

    float a(View view) {
        return 1.0f;
    }

    abstract View b(List<View> list);

    public b() {
        this.f4822a = new Rect();
        this.f4823b = new Rect();
        this.f4824c = 0;
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4822a = new Rect();
        this.f4823b = new Rect();
        this.f4824c = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        View viewB;
        int i5 = view.getLayoutParams().height;
        if ((i5 != -1 && i5 != -2) || (viewB = b(coordinatorLayout.c(view))) == null) {
            return false;
        }
        if (r.p(viewB) && !r.p(view)) {
            r.b(view, true);
            if (r.p(view)) {
                view.requestLayout();
                return true;
            }
        }
        int size = View.MeasureSpec.getSize(i3);
        if (size == 0) {
            size = coordinatorLayout.getHeight();
        }
        coordinatorLayout.a(view, i, i2, View.MeasureSpec.makeMeasureSpec((size - viewB.getMeasuredHeight()) + b(viewB), i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
        return true;
    }

    @Override // com.google.android.material.appbar.c
    protected void b(CoordinatorLayout coordinatorLayout, View view, int i) {
        View viewB = b(coordinatorLayout.c(view));
        if (viewB != null) {
            CoordinatorLayout.e eVar = (CoordinatorLayout.e) view.getLayoutParams();
            Rect rect = this.f4822a;
            rect.set(coordinatorLayout.getPaddingLeft() + eVar.leftMargin, viewB.getBottom() + eVar.topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - eVar.rightMargin, ((coordinatorLayout.getHeight() + viewB.getBottom()) - coordinatorLayout.getPaddingBottom()) - eVar.bottomMargin);
            z lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && r.p(coordinatorLayout) && !r.p(view)) {
                rect.left += lastWindowInsets.a();
                rect.right -= lastWindowInsets.c();
            }
            Rect rect2 = this.f4823b;
            androidx.core.h.c.a(c(eVar.f1239c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
            int iC = c(viewB);
            view.layout(rect2.left, rect2.top - iC, rect2.right, rect2.bottom - iC);
            this.f4824c = rect2.top - viewB.getBottom();
            return;
        }
        super.b(coordinatorLayout, view, i);
        this.f4824c = 0;
    }

    final int c(View view) {
        if (this.f4825d == 0) {
            return 0;
        }
        float fA = a(view);
        int i = this.f4825d;
        return androidx.core.c.a.a((int) (fA * i), 0, i);
    }

    int b(View view) {
        return view.getMeasuredHeight();
    }

    final int b() {
        return this.f4824c;
    }

    public final void b(int i) {
        this.f4825d = i;
    }

    public final int d() {
        return this.f4825d;
    }
}
