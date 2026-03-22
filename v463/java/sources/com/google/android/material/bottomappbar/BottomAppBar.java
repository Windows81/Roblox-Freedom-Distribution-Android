package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.h.r;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.i.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    AnimatorListenerAdapter f4859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f4861c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f4862d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Animator f4863e;
    private Animator f;
    private Animator g;
    private int h;
    private boolean i;
    private boolean j;

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public int getFabAlignmentMode() {
        return this.h;
    }

    public void setFabAlignmentMode(int i) {
        a(i);
        a(i, this.j);
        this.h = i;
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        androidx.core.graphics.drawable.a.a(this.f4861c, colorStateList);
    }

    public ColorStateList getBackgroundTint() {
        return this.f4861c.a();
    }

    public float getFabCradleMargin() {
        return this.f4862d.d();
    }

    public void setFabCradleMargin(float f) {
        if (f != getFabCradleMargin()) {
            this.f4862d.d(f);
            this.f4861c.invalidateSelf();
        }
    }

    public float getFabCradleRoundedCornerRadius() {
        return this.f4862d.e();
    }

    public void setFabCradleRoundedCornerRadius(float f) {
        if (f != getFabCradleRoundedCornerRadius()) {
            this.f4862d.e(f);
            this.f4861c.invalidateSelf();
        }
    }

    public float getCradleVerticalOffset() {
        return this.f4862d.b();
    }

    public void setCradleVerticalOffset(float f) {
        if (f != getCradleVerticalOffset()) {
            this.f4862d.b(f);
            this.f4861c.invalidateSelf();
        }
    }

    public boolean getHideOnScroll() {
        return this.i;
    }

    public void setHideOnScroll(boolean z) {
        this.i = z;
    }

    void setFabDiameter(int i) {
        float f = i;
        if (f != this.f4862d.c()) {
            this.f4862d.c(f);
            this.f4861c.invalidateSelf();
        }
    }

    private void a(int i) {
        if (this.h == i || !r.w(this)) {
            return;
        }
        Animator animator = this.f;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        a(i, arrayList);
        b(i, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f = animatorSet;
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                BottomAppBar.this.f = null;
            }
        });
        this.f.start();
    }

    private void a(int i, List<Animator> list) {
        if (this.j) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f4862d.a(), b(i));
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BottomAppBar.this.f4862d.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    BottomAppBar.this.f4861c.invalidateSelf();
                }
            });
            valueAnimatorOfFloat.setDuration(300L);
            list.add(valueAnimatorOfFloat);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FloatingActionButton a() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).d(this)) {
            if (view instanceof FloatingActionButton) {
                return (FloatingActionButton) view;
            }
        }
        return null;
    }

    private boolean b() {
        FloatingActionButton floatingActionButtonA = a();
        return floatingActionButtonA != null && floatingActionButtonA.b();
    }

    private void b(int i, List<Animator> list) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(a(), "translationX", b(i));
        objectAnimatorOfFloat.setDuration(300L);
        list.add(objectAnimatorOfFloat);
    }

    private void a(int i, boolean z) {
        if (r.w(this)) {
            Animator animator = this.g;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (!b()) {
                i = 0;
                z = false;
            }
            a(i, z, arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.g = animatorSet;
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    BottomAppBar.this.g = null;
                }
            });
            this.g.start();
        }
    }

    private void a(final int i, final boolean z, List<Animator> list) {
        final ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        Animator animatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        if ((!this.j && (!z || !b())) || (this.h != 1 && i != 1)) {
            if (actionMenuView.getAlpha() < 1.0f) {
                list.add(animatorOfFloat);
            }
        } else {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
            objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.4

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public boolean f4867a;

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    this.f4867a = true;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (this.f4867a) {
                        return;
                    }
                    BottomAppBar.this.a(actionMenuView, i, z);
                }
            });
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(150L);
            animatorSet.playSequentially(objectAnimatorOfFloat, animatorOfFloat);
            list.add(animatorSet);
        }
    }

    private float a(boolean z) {
        FloatingActionButton floatingActionButtonA = a();
        if (floatingActionButtonA == null) {
            return 0.0f;
        }
        Rect rect = new Rect();
        floatingActionButtonA.a(rect);
        float fHeight = rect.height();
        if (fHeight == 0.0f) {
            fHeight = floatingActionButtonA.getMeasuredHeight();
        }
        float height = floatingActionButtonA.getHeight() - rect.bottom;
        float height2 = floatingActionButtonA.getHeight() - rect.height();
        float f = (-getCradleVerticalOffset()) + (fHeight / 2.0f) + height;
        float paddingBottom = height2 - floatingActionButtonA.getPaddingBottom();
        float f2 = -getMeasuredHeight();
        if (!z) {
            f = paddingBottom;
        }
        return f2 + f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationY() {
        return a(this.j);
    }

    private int b(int i) {
        boolean z = r.f(this) == 1;
        if (i == 1) {
            return ((getMeasuredWidth() / 2) - this.f4860b) * (z ? -1 : 1);
        }
        return 0;
    }

    private float getFabTranslationX() {
        return b(this.h);
    }

    private ActionMenuView getActionMenuView() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ActionMenuView actionMenuView, int i, boolean z) {
        boolean z2 = r.f(this) == 1;
        int iMax = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).gravity & 8388615) == 8388611) {
                iMax = Math.max(iMax, z2 ? childAt.getLeft() : childAt.getRight());
            }
        }
        actionMenuView.setTranslationX((i == 1 && z) ? iMax - (z2 ? actionMenuView.getRight() : actionMenuView.getLeft()) : 0.0f);
    }

    private void c() {
        Animator animator = this.f4863e;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.g;
        if (animator2 != null) {
            animator2.cancel();
        }
        Animator animator3 = this.f;
        if (animator3 != null) {
            animator3.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        Animator animator;
        Animator animator2;
        Animator animator3 = this.f4863e;
        return (animator3 != null && animator3.isRunning()) || ((animator = this.g) != null && animator.isRunning()) || ((animator2 = this.f) != null && animator2.isRunning());
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        c();
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.f4862d.a(getFabTranslationX());
        FloatingActionButton floatingActionButtonA = a();
        this.f4861c.a((this.j && b()) ? 1.0f : 0.0f);
        if (floatingActionButtonA != null) {
            floatingActionButtonA.setTranslationY(getFabTranslationY());
            floatingActionButtonA.setTranslationX(getFabTranslationX());
        }
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            actionMenuView.setAlpha(1.0f);
            if (!b()) {
                a(actionMenuView, 0, false);
            } else {
                a(actionMenuView, this.h, this.j);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(FloatingActionButton floatingActionButton) {
        b(floatingActionButton);
        floatingActionButton.c(this.f4859a);
        floatingActionButton.a(this.f4859a);
    }

    private void b(FloatingActionButton floatingActionButton) {
        floatingActionButton.d(this.f4859a);
        floatingActionButton.b(this.f4859a);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.a
    public CoordinatorLayout.b<BottomAppBar> getBehavior() {
        return new Behavior();
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Rect f4872a;

        public Behavior() {
            this.f4872a = new Rect();
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f4872a = new Rect();
        }

        private boolean a(FloatingActionButton floatingActionButton, BottomAppBar bottomAppBar) {
            ((CoordinatorLayout.e) floatingActionButton.getLayoutParams()).f1240d = 17;
            bottomAppBar.a(floatingActionButton);
            return true;
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i) {
            FloatingActionButton floatingActionButtonA = bottomAppBar.a();
            if (floatingActionButtonA != null) {
                a(floatingActionButtonA, bottomAppBar);
                floatingActionButtonA.b(this.f4872a);
                bottomAppBar.setFabDiameter(this.f4872a.height());
            }
            if (!bottomAppBar.d()) {
                bottomAppBar.e();
            }
            coordinatorLayout.a(bottomAppBar, i);
            return super.a(coordinatorLayout, bottomAppBar, i);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, View view, View view2, int i, int i2) {
            return bottomAppBar.getHideOnScroll() && super.a(coordinatorLayout, bottomAppBar, view, view2, i, i2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior
        public void a(BottomAppBar bottomAppBar) {
            super.a(bottomAppBar);
            FloatingActionButton floatingActionButtonA = bottomAppBar.a();
            if (floatingActionButtonA != null) {
                floatingActionButtonA.clearAnimation();
                floatingActionButtonA.animate().translationY(bottomAppBar.getFabTranslationY()).setInterpolator(com.google.android.material.a.a.f4778d).setDuration(225L);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior
        public void b(BottomAppBar bottomAppBar) {
            super.b(bottomAppBar);
            FloatingActionButton floatingActionButtonA = bottomAppBar.a();
            if (floatingActionButtonA != null) {
                floatingActionButtonA.a(this.f4872a);
                float measuredHeight = floatingActionButtonA.getMeasuredHeight() - this.f4872a.height();
                floatingActionButtonA.clearAnimation();
                floatingActionButtonA.animate().translationY((-floatingActionButtonA.getPaddingBottom()) + measuredHeight).setInterpolator(com.google.android.material.a.a.f4777c).setDuration(175L);
            }
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f4873a = this.h;
        savedState.f4874b = this.j;
        return savedState;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.h = savedState.f4873a;
        this.j = savedState.f4874b;
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.bottomappbar.BottomAppBar.SavedState.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f4873a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f4874b;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f4873a = parcel.readInt();
            this.f4874b = parcel.readInt() != 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f4873a);
            parcel.writeInt(this.f4874b ? 1 : 0);
        }
    }
}
