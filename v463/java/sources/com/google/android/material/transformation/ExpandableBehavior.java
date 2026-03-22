package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.h.r;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class ExpandableBehavior extends CoordinatorLayout.b<View> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f5091a;

    protected abstract boolean a(View view, View view2, boolean z, boolean z2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public abstract boolean a(CoordinatorLayout coordinatorLayout, View view, View view2);

    public ExpandableBehavior() {
        this.f5091a = 0;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5091a = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(CoordinatorLayout coordinatorLayout, final View view, int i) {
        final com.google.android.material.d.b bVarE;
        if (r.w(view) || (bVarE = e(coordinatorLayout, view)) == null || !a(bVarE.a())) {
            return false;
        }
        final int i2 = bVarE.a() ? 1 : 2;
        this.f5091a = i2;
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.transformation.ExpandableBehavior.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                view.getViewTreeObserver().removeOnPreDrawListener(this);
                if (ExpandableBehavior.this.f5091a == i2) {
                    ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                    com.google.android.material.d.b bVar = bVarE;
                    expandableBehavior.a((View) bVar, view, bVar.a(), false);
                }
                return false;
            }
        });
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean b(CoordinatorLayout coordinatorLayout, View view, View view2) {
        com.google.android.material.d.b bVar = (com.google.android.material.d.b) view2;
        if (!a(bVar.a())) {
            return false;
        }
        this.f5091a = bVar.a() ? 1 : 2;
        return a((View) bVar, view, bVar.a(), true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected com.google.android.material.d.b e(CoordinatorLayout coordinatorLayout, View view) {
        List<View> listC = coordinatorLayout.c(view);
        int size = listC.size();
        for (int i = 0; i < size; i++) {
            View view2 = listC.get(i);
            if (a(coordinatorLayout, view, view2)) {
                return (com.google.android.material.d.b) view2;
            }
        }
        return null;
    }

    private boolean a(boolean z) {
        if (!z) {
            return this.f5091a == 1;
        }
        int i = this.f5091a;
        return i == 0 || i == 2;
    }
}
