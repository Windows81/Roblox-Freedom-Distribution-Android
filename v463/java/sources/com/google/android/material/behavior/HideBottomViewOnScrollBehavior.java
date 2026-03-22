package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.a.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.b<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4844a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4845b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ViewPropertyAnimator f4846c;

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        return i == 2;
    }

    public HideBottomViewOnScrollBehavior() {
        this.f4844a = 0;
        this.f4845b = 2;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4844a = 0;
        this.f4845b = 2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(CoordinatorLayout coordinatorLayout, V v, int i) {
        this.f4844a = v.getMeasuredHeight();
        return super.a(coordinatorLayout, v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        if (this.f4845b != 1 && i2 > 0) {
            b(v);
        } else {
            if (this.f4845b == 2 || i2 >= 0) {
                return;
            }
            a(v);
        }
    }

    protected void a(V v) {
        ViewPropertyAnimator viewPropertyAnimator = this.f4846c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f4845b = 2;
        a(v, 0, 225L, a.f4778d);
    }

    protected void b(V v) {
        ViewPropertyAnimator viewPropertyAnimator = this.f4846c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f4845b = 1;
        a(v, this.f4844a, 175L, a.f4777c);
    }

    private void a(V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.f4846c = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.behavior.HideBottomViewOnScrollBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                HideBottomViewOnScrollBehavior.this.f4846c = null;
            }
        });
    }
}
