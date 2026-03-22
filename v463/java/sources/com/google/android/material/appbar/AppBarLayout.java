package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.h.i;
import androidx.core.h.r;
import androidx.core.h.z;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.a;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
@CoordinatorLayout.c(a = Behavior.class)
public class AppBarLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4799c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4800d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4801e;
    private z f;
    private List<a> g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private int[] l;

    public interface a<T extends AppBarLayout> {
        void a(T t, int i);
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        g();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        g();
        this.f4800d = false;
        int childCount = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount) {
                break;
            }
            if (((b) getChildAt(i5).getLayoutParams()).b() != null) {
                this.f4800d = true;
                break;
            }
            i5++;
        }
        if (this.h) {
            return;
        }
        b(this.k || f());
    }

    private boolean f() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((b) getChildAt(i).getLayoutParams()).c()) {
                return true;
            }
        }
        return false;
    }

    private void g() {
        this.f4797a = -1;
        this.f4798b = -1;
        this.f4799c = -1;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    public void setExpanded(boolean z) {
        a(z, r.w(this));
    }

    public void a(boolean z, boolean z2) {
        a(z, z2, true);
    }

    private void a(boolean z, boolean z2, boolean z3) {
        this.f4801e = (z ? 1 : 2) | (z2 ? 4 : 0) | (z3 ? 8 : 0);
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public b generateDefaultLayoutParams() {
        return new b(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public b generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (Build.VERSION.SDK_INT >= 19 && (layoutParams instanceof LinearLayout.LayoutParams)) {
            return new b((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new b((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new b(layoutParams);
    }

    boolean b() {
        return this.f4800d;
    }

    public final int getTotalScrollRange() {
        int i = this.f4797a;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int iJ = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            b bVar = (b) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = bVar.f4812a;
            if ((i3 & 1) == 0) {
                break;
            }
            iJ += measuredHeight + bVar.topMargin + bVar.bottomMargin;
            if ((i3 & 2) != 0) {
                iJ -= r.j(childAt);
                break;
            }
            i2++;
        }
        int iMax = Math.max(0, iJ - getTopInset());
        this.f4797a = iMax;
        return iMax;
    }

    boolean c() {
        return getTotalScrollRange() != 0;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    int getDownNestedPreScrollRange() {
        int topInset;
        int i = this.f4798b;
        if (i != -1) {
            return i;
        }
        int iJ = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            b bVar = (b) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i2 = bVar.f4812a;
            if ((i2 & 5) != 5) {
                if (iJ > 0) {
                    break;
                }
            } else {
                int i3 = iJ + bVar.topMargin + bVar.bottomMargin;
                if ((i2 & 8) != 0) {
                    iJ = i3 + r.j(childAt);
                } else {
                    if ((i2 & 2) != 0) {
                        topInset = r.j(childAt);
                    } else {
                        topInset = getTopInset();
                    }
                    iJ = i3 + (measuredHeight - topInset);
                }
            }
        }
        int iMax = Math.max(0, iJ);
        this.f4798b = iMax;
        return iMax;
    }

    int getDownNestedScrollRange() {
        int i = this.f4799c;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int iJ = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            b bVar = (b) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + bVar.topMargin + bVar.bottomMargin;
            int i3 = bVar.f4812a;
            if ((i3 & 1) == 0) {
                break;
            }
            iJ += measuredHeight;
            if ((i3 & 2) != 0) {
                iJ -= r.j(childAt) + getTopInset();
                break;
            }
            i2++;
        }
        int iMax = Math.max(0, iJ);
        this.f4799c = iMax;
        return iMax;
    }

    void a(int i) {
        List<a> list = this.g;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = this.g.get(i2);
                if (aVar != null) {
                    aVar.a(this, i);
                }
            }
        }
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int iJ = r.j(this);
        if (iJ == 0) {
            int childCount = getChildCount();
            iJ = childCount >= 1 ? r.j(getChildAt(childCount - 1)) : 0;
            if (iJ == 0) {
                return getHeight() / 3;
            }
        }
        return (iJ * 2) + topInset;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        if (this.l == null) {
            this.l = new int[4];
        }
        int[] iArr = this.l;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        iArr[0] = this.i ? a.b.state_liftable : -a.b.state_liftable;
        iArr[1] = (this.i && this.j) ? a.b.state_lifted : -a.b.state_lifted;
        iArr[2] = this.i ? a.b.state_collapsible : -a.b.state_collapsible;
        iArr[3] = (this.i && this.j) ? a.b.state_collapsed : -a.b.state_collapsed;
        return mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    private boolean b(boolean z) {
        if (this.i == z) {
            return false;
        }
        this.i = z;
        refreshDrawableState();
        return true;
    }

    boolean a(boolean z) {
        if (this.j == z) {
            return false;
        }
        this.j = z;
        refreshDrawableState();
        return true;
    }

    public void setLiftOnScroll(boolean z) {
        this.k = z;
    }

    public boolean d() {
        return this.k;
    }

    @Deprecated
    public void setTargetElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            e.a(this, f);
        }
    }

    int getPendingAction() {
        return this.f4801e;
    }

    void e() {
        this.f4801e = 0;
    }

    final int getTopInset() {
        z zVar = this.f;
        if (zVar != null) {
            return zVar.b();
        }
        return 0;
    }

    public static class b extends LinearLayout.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f4812a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Interpolator f4813b;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f4812a = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.i.AppBarLayout_Layout);
            this.f4812a = typedArrayObtainStyledAttributes.getInt(a.i.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (typedArrayObtainStyledAttributes.hasValue(a.i.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.f4813b = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(a.i.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public b(int i, int i2) {
            super(i, i2);
            this.f4812a = 1;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f4812a = 1;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f4812a = 1;
        }

        public b(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f4812a = 1;
        }

        public int a() {
            return this.f4812a;
        }

        public Interpolator b() {
            return this.f4813b;
        }

        boolean c() {
            int i = this.f4812a;
            return (i & 1) == 1 && (i & 10) != 0;
        }
    }

    public static class Behavior extends BaseBehavior<AppBarLayout> {
        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            super.a(coordinatorLayout, appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
            super.a(coordinatorLayout, appBarLayout, view, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5) {
            super.a(coordinatorLayout, appBarLayout, view, i, i2, i3, i4, i5);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
            super.a(coordinatorLayout, appBarLayout, view, i, i2, iArr, i3);
        }

        @Override // com.google.android.material.appbar.c
        public /* bridge */ /* synthetic */ boolean a(int i) {
            return super.a(i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            return super.a(coordinatorLayout, appBarLayout, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            return super.a(coordinatorLayout, appBarLayout, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
            return super.a(coordinatorLayout, appBarLayout, view, view2, i, i2);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: b */
        public /* bridge */ /* synthetic */ Parcelable d(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            return super.d(coordinatorLayout, appBarLayout);
        }

        @Override // com.google.android.material.appbar.c
        public /* bridge */ /* synthetic */ int c() {
            return super.c();
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    protected static class BaseBehavior<T extends AppBarLayout> extends com.google.android.material.appbar.a<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f4802b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f4803c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ValueAnimator f4804d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f4805e;
        private boolean f;
        private float g;
        private WeakReference<View> h;
        private a i;

        public static abstract class a<T extends AppBarLayout> {
            public abstract boolean a(T t);
        }

        private static boolean a(int i, int i2) {
            return (i & i2) == i2;
        }

        public BaseBehavior() {
            this.f4805e = -1;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f4805e = -1;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(CoordinatorLayout coordinatorLayout, T t, View view, View view2, int i, int i2) {
            ValueAnimator valueAnimator;
            boolean z = (i & 2) != 0 && (t.d() || a(coordinatorLayout, (AppBarLayout) t, view));
            if (z && (valueAnimator = this.f4804d) != null) {
                valueAnimator.cancel();
            }
            this.h = null;
            this.f4803c = i2;
            return z;
        }

        private boolean a(CoordinatorLayout coordinatorLayout, T t, View view) {
            return t.c() && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public void a(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            int downNestedPreScrollRange;
            if (i2 != 0) {
                if (i2 < 0) {
                    int i5 = -t.getTotalScrollRange();
                    i4 = i5;
                    downNestedPreScrollRange = t.getDownNestedPreScrollRange() + i5;
                } else {
                    i4 = -t.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                if (i4 != downNestedPreScrollRange) {
                    iArr[1] = b(coordinatorLayout, t, i2, i4, downNestedPreScrollRange);
                    a(i2, t, view, i3);
                }
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public void a(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int i3, int i4, int i5) {
            if (i4 < 0) {
                b(coordinatorLayout, t, i4, -t.getDownNestedScrollRange(), 0);
                a(i4, t, view, i5);
            }
            if (t.d()) {
                t.a(view.getScrollY() > 0);
            }
        }

        private void a(int i, T t, View view, int i2) {
            if (i2 == 1) {
                int iB = b();
                if ((i >= 0 || iB != 0) && (i <= 0 || iB != (-t.getDownNestedScrollRange()))) {
                    return;
                }
                r.c(view, 1);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public void a(CoordinatorLayout coordinatorLayout, T t, View view, int i) {
            if (this.f4803c == 0 || i == 1) {
                c(coordinatorLayout, (AppBarLayout) t);
            }
            this.h = new WeakReference<>(view);
        }

        private void a(CoordinatorLayout coordinatorLayout, T t, int i, float f) {
            int height;
            int iAbs = Math.abs(b() - i);
            float fAbs = Math.abs(f);
            if (fAbs > 0.0f) {
                height = Math.round((iAbs / fAbs) * 1000.0f) * 3;
            } else {
                height = (int) (((iAbs / t.getHeight()) + 1.0f) * 150.0f);
            }
            a(coordinatorLayout, (AppBarLayout) t, i, height);
        }

        private void a(final CoordinatorLayout coordinatorLayout, final T t, int i, int i2) {
            int iB = b();
            if (iB == i) {
                ValueAnimator valueAnimator = this.f4804d;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.f4804d.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.f4804d;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f4804d = valueAnimator3;
                valueAnimator3.setInterpolator(com.google.android.material.a.a.f4779e);
                this.f4804d.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator4) {
                        BaseBehavior.this.a_(coordinatorLayout, t, ((Integer) valueAnimator4.getAnimatedValue()).intValue());
                    }
                });
            } else {
                valueAnimator2.cancel();
            }
            this.f4804d.setDuration(Math.min(i2, 600));
            this.f4804d.setIntValues(iB, i);
            this.f4804d.start();
        }

        private int a(T t, int i) {
            int childCount = t.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = t.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                b bVar = (b) childAt.getLayoutParams();
                if (a(bVar.a(), 32)) {
                    top -= bVar.topMargin;
                    bottom += bVar.bottomMargin;
                }
                int i3 = -i;
                if (top <= i3 && bottom >= i3) {
                    return i2;
                }
            }
            return -1;
        }

        private void c(CoordinatorLayout coordinatorLayout, T t) {
            int iB = b();
            int iA = a(t, iB);
            if (iA >= 0) {
                View childAt = t.getChildAt(iA);
                b bVar = (b) childAt.getLayoutParams();
                int iA2 = bVar.a();
                if ((iA2 & 17) == 17) {
                    int i = -childAt.getTop();
                    int iJ = -childAt.getBottom();
                    if (iA == t.getChildCount() - 1) {
                        iJ += t.getTopInset();
                    }
                    if (a(iA2, 2)) {
                        iJ += r.j(childAt);
                    } else if (a(iA2, 5)) {
                        int iJ2 = r.j(childAt) + iJ;
                        if (iB < iJ2) {
                            i = iJ2;
                        } else {
                            iJ = iJ2;
                        }
                    }
                    if (a(iA2, 32)) {
                        i += bVar.topMargin;
                        iJ -= bVar.bottomMargin;
                    }
                    if (iB < (iJ + i) / 2) {
                        i = iJ;
                    }
                    a(coordinatorLayout, (AppBarLayout) t, androidx.core.c.a.a(i, -t.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3, int i4) {
            if (((CoordinatorLayout.e) t.getLayoutParams()).height == -2) {
                coordinatorLayout.a(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
                return true;
            }
            return super.a(coordinatorLayout, t, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.c, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(CoordinatorLayout coordinatorLayout, T t, int i) {
            int iRound;
            boolean zA = super.a(coordinatorLayout, t, i);
            int pendingAction = t.getPendingAction();
            int i2 = this.f4805e;
            if (i2 >= 0 && (pendingAction & 8) == 0) {
                View childAt = t.getChildAt(i2);
                int i3 = -childAt.getBottom();
                if (this.f) {
                    iRound = r.j(childAt) + t.getTopInset();
                } else {
                    iRound = Math.round(childAt.getHeight() * this.g);
                }
                a_(coordinatorLayout, t, i3 + iRound);
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i4 = -t.getUpNestedPreScrollRange();
                    if (z) {
                        a(coordinatorLayout, (AppBarLayout) t, i4, 0.0f);
                    } else {
                        a_(coordinatorLayout, t, i4);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        a(coordinatorLayout, (AppBarLayout) t, 0, 0.0f);
                    } else {
                        a_(coordinatorLayout, t, 0);
                    }
                }
            }
            t.e();
            this.f4805e = -1;
            a(androidx.core.c.a.a(c(), -t.getTotalScrollRange(), 0));
            a(coordinatorLayout, (AppBarLayout) t, c(), 0, true);
            t.a(c());
            return zA;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean c(T t) {
            a aVar = this.i;
            if (aVar != null) {
                return aVar.a(t);
            }
            WeakReference<View> weakReference = this.h;
            if (weakReference == null) {
                return true;
            }
            View view = weakReference.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void e(CoordinatorLayout coordinatorLayout, T t) {
            c(coordinatorLayout, (AppBarLayout) t);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.a
        public int b(T t) {
            return -t.getDownNestedScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int a(T t) {
            return t.getTotalScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.a
        public int a(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3) {
            int iB = b();
            int i4 = 0;
            if (i2 != 0 && iB >= i2 && iB <= i3) {
                int iA = androidx.core.c.a.a(i, i2, i3);
                if (iB != iA) {
                    int iB2 = t.b() ? b(t, iA) : iA;
                    boolean zA = a(iB2);
                    i4 = iB - iA;
                    this.f4802b = iA - iB2;
                    if (!zA && t.b()) {
                        coordinatorLayout.b(t);
                    }
                    t.a(c());
                    a(coordinatorLayout, (AppBarLayout) t, iA, iA < iB ? -1 : 1, false);
                }
            } else {
                this.f4802b = 0;
            }
            return i4;
        }

        private int b(T t, int i) {
            int iAbs = Math.abs(i);
            int childCount = t.getChildCount();
            int topInset = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                View childAt = t.getChildAt(i2);
                b bVar = (b) childAt.getLayoutParams();
                Interpolator interpolatorB = bVar.b();
                if (iAbs < childAt.getTop() || iAbs > childAt.getBottom()) {
                    i2++;
                } else if (interpolatorB != null) {
                    int iA = bVar.a();
                    if ((iA & 1) != 0) {
                        topInset = 0 + childAt.getHeight() + bVar.topMargin + bVar.bottomMargin;
                        if ((iA & 2) != 0) {
                            topInset -= r.j(childAt);
                        }
                    }
                    if (r.p(childAt)) {
                        topInset -= t.getTopInset();
                    }
                    if (topInset > 0) {
                        float f = topInset;
                        return Integer.signum(i) * (childAt.getTop() + Math.round(f * interpolatorB.getInterpolation((iAbs - childAt.getTop()) / f)));
                    }
                }
            }
            return i;
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0041  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private void a(androidx.coordinatorlayout.widget.CoordinatorLayout r6, T r7, int r8, int r9, boolean r10) {
            /*
                r5 = this;
                android.view.View r0 = c(r7, r8)
                if (r0 == 0) goto L6e
                android.view.ViewGroup$LayoutParams r1 = r0.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$b r1 = (com.google.android.material.appbar.AppBarLayout.b) r1
                int r1 = r1.a()
                r2 = r1 & 1
                r3 = 1
                r4 = 0
                if (r2 == 0) goto L41
                int r2 = androidx.core.h.r.j(r0)
                if (r9 <= 0) goto L2f
                r9 = r1 & 12
                if (r9 == 0) goto L2f
                int r8 = -r8
                int r9 = r0.getBottom()
                int r9 = r9 - r2
                int r0 = r7.getTopInset()
                int r9 = r9 - r0
                if (r8 < r9) goto L41
            L2d:
                r8 = 1
                goto L42
            L2f:
                r9 = r1 & 2
                if (r9 == 0) goto L41
                int r8 = -r8
                int r9 = r0.getBottom()
                int r9 = r9 - r2
                int r0 = r7.getTopInset()
                int r9 = r9 - r0
                if (r8 < r9) goto L41
                goto L2d
            L41:
                r8 = 0
            L42:
                boolean r9 = r7.d()
                if (r9 == 0) goto L57
                android.view.View r9 = r5.a(r6)
                if (r9 == 0) goto L57
                int r8 = r9.getScrollY()
                if (r8 <= 0) goto L55
                goto L56
            L55:
                r3 = 0
            L56:
                r8 = r3
            L57:
                boolean r8 = r7.a(r8)
                int r9 = android.os.Build.VERSION.SDK_INT
                r0 = 11
                if (r9 < r0) goto L6e
                if (r10 != 0) goto L6b
                if (r8 == 0) goto L6e
                boolean r6 = r5.d(r6, r7)
                if (r6 == 0) goto L6e
            L6b:
                r7.jumpDrawablesToCurrentState()
            L6e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.a(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        private boolean d(CoordinatorLayout coordinatorLayout, T t) {
            List<View> listD = coordinatorLayout.d(t);
            int size = listD.size();
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.b bVarB = ((CoordinatorLayout.e) listD.get(i).getLayoutParams()).b();
                if (bVarB instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) bVarB).d() != 0;
                }
            }
            return false;
        }

        private static View c(AppBarLayout appBarLayout, int i) {
            int iAbs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = appBarLayout.getChildAt(i2);
                if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        private View a(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt instanceof i) {
                    return childAt;
                }
            }
            return null;
        }

        @Override // com.google.android.material.appbar.a
        int b() {
            return c() + this.f4802b;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable d(CoordinatorLayout coordinatorLayout, T t) {
            Parcelable parcelableD = super.d(coordinatorLayout, t);
            int iC = c();
            int childCount = t.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + iC;
                if (childAt.getTop() + iC <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(parcelableD);
                    savedState.f4809a = i;
                    savedState.f4811c = bottom == r.j(childAt) + t.getTopInset();
                    savedState.f4810b = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return parcelableD;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public void a(CoordinatorLayout coordinatorLayout, T t, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                super.a(coordinatorLayout, t, savedState.getSuperState());
                this.f4805e = savedState.f4809a;
                this.g = savedState.f4810b;
                this.f = savedState.f4811c;
                return;
            }
            super.a(coordinatorLayout, t, parcelable);
            this.f4805e = -1;
        }

        protected static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.SavedState.1
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
            int f4809a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            float f4810b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            boolean f4811c;

            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f4809a = parcel.readInt();
                this.f4810b = parcel.readFloat();
                this.f4811c = parcel.readByte() != 0;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.f4809a);
                parcel.writeFloat(this.f4810b);
                parcel.writeByte(this.f4811c ? (byte) 1 : (byte) 0);
            }
        }
    }

    public static class ScrollingViewBehavior extends com.google.android.material.appbar.b {
        @Override // com.google.android.material.appbar.c
        public /* bridge */ /* synthetic */ boolean a(int i) {
            return super.a(i);
        }

        @Override // com.google.android.material.appbar.c, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, int i) {
            return super.a(coordinatorLayout, view, i);
        }

        @Override // com.google.android.material.appbar.b, androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return super.a(coordinatorLayout, view, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.b
        /* synthetic */ View b(List list) {
            return a((List<View>) list);
        }

        @Override // com.google.android.material.appbar.c
        public /* bridge */ /* synthetic */ int c() {
            return super.c();
        }

        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.i.ScrollingViewBehavior_Layout);
            b(typedArrayObtainStyledAttributes.getDimensionPixelSize(a.i.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            a(view, view2);
            b(view, view2);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
        public boolean a(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout appBarLayoutA = a(coordinatorLayout.c(view));
            if (appBarLayoutA != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f4822a;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    appBarLayoutA.a(false, !z);
                    return true;
                }
            }
            return false;
        }

        private void a(View view, View view2) {
            CoordinatorLayout.b bVarB = ((CoordinatorLayout.e) view2.getLayoutParams()).b();
            if (bVarB instanceof BaseBehavior) {
                r.d(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) bVarB).f4802b) + b()) - c(view2));
            }
        }

        @Override // com.google.android.material.appbar.b
        float a(View view) {
            int i;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int iA = a(appBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + iA > downNestedPreScrollRange) && (i = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (iA / i) + 1.0f;
                }
            }
            return 0.0f;
        }

        private static int a(AppBarLayout appBarLayout) {
            CoordinatorLayout.b bVarB = ((CoordinatorLayout.e) appBarLayout.getLayoutParams()).b();
            if (bVarB instanceof BaseBehavior) {
                return ((BaseBehavior) bVarB).b();
            }
            return 0;
        }

        AppBarLayout a(List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // com.google.android.material.appbar.b
        int b(View view) {
            if (view instanceof AppBarLayout) {
                return ((AppBarLayout) view).getTotalScrollRange();
            }
            return super.b(view);
        }

        private void b(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.d()) {
                    appBarLayout.a(view.getScrollY() > 0);
                }
            }
        }
    }
}
