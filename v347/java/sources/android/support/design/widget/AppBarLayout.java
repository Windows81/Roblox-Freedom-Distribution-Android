package android.support.design.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.design.a;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.aa;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@CoordinatorLayout.b(a = Behavior.class)
public class AppBarLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f258c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f259d;
    private int e;
    private aa f;
    private List<b> g;
    private boolean h;
    private boolean i;
    private int[] j;

    public interface b {
        void a(AppBarLayout appBarLayout, int i);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        f();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        f();
        this.f259d = false;
        int childCount = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount) {
                break;
            }
            if (((a) getChildAt(i5).getLayoutParams()).b() == null) {
                i5++;
            } else {
                this.f259d = true;
                break;
            }
        }
        e();
    }

    private void e() {
        boolean z;
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                z = false;
                break;
            } else if (!((a) getChildAt(i).getLayoutParams()).c()) {
                i++;
            } else {
                z = true;
                break;
            }
        }
        b(z);
    }

    private void f() {
        this.f256a = -1;
        this.f257b = -1;
        this.f258c = -1;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    public void setExpanded(boolean z) {
        a(z, android.support.v4.view.s.v(this));
    }

    public void a(boolean z, boolean z2) {
        a(z, z2, true);
    }

    private void a(boolean z, boolean z2, boolean z3) {
        this.e = (z3 ? 8 : 0) | (z2 ? 4 : 0) | (z ? 1 : 2);
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateDefaultLayoutParams() {
        return new a(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (Build.VERSION.SDK_INT >= 19 && (layoutParams instanceof LinearLayout.LayoutParams)) {
            return new a((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new a((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new a(layoutParams);
    }

    boolean b() {
        return this.f259d;
    }

    public final int getTotalScrollRange() {
        int i;
        if (this.f256a != -1) {
            return this.f256a;
        }
        int childCount = getChildCount();
        int i2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            a aVar = (a) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i4 = aVar.f269a;
            if ((i4 & 1) == 0) {
                break;
            }
            i2 += aVar.bottomMargin + measuredHeight + aVar.topMargin;
            if ((i4 & 2) != 0) {
                i = i2 - android.support.v4.view.s.i(childAt);
                break;
            }
        }
        i = i2;
        int iMax = Math.max(0, i - getTopInset());
        this.f256a = iMax;
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
        if (this.f257b != -1) {
            return this.f257b;
        }
        int childCount = getChildCount() - 1;
        int i = 0;
        while (childCount >= 0) {
            View childAt = getChildAt(childCount);
            a aVar = (a) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i2 = aVar.f269a;
            if ((i2 & 5) == 5) {
                int i3 = aVar.bottomMargin + aVar.topMargin + i;
                if ((i2 & 8) != 0) {
                    topInset = i3 + android.support.v4.view.s.i(childAt);
                } else if ((i2 & 2) != 0) {
                    topInset = i3 + (measuredHeight - android.support.v4.view.s.i(childAt));
                } else {
                    topInset = i3 + (measuredHeight - getTopInset());
                }
            } else {
                if (i > 0) {
                    break;
                }
                topInset = i;
            }
            childCount--;
            i = topInset;
        }
        int iMax = Math.max(0, i);
        this.f257b = iMax;
        return iMax;
    }

    int getDownNestedScrollRange() {
        int i;
        if (this.f258c != -1) {
            return this.f258c;
        }
        int childCount = getChildCount();
        int i2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            a aVar = (a) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + aVar.topMargin + aVar.bottomMargin;
            int i4 = aVar.f269a;
            if ((i4 & 1) == 0) {
                break;
            }
            i2 += measuredHeight;
            if ((i4 & 2) != 0) {
                i = i2 - (android.support.v4.view.s.i(childAt) + getTopInset());
                break;
            }
        }
        i = i2;
        int iMax = Math.max(0, i);
        this.f258c = iMax;
        return iMax;
    }

    void a(int i) {
        if (this.g != null) {
            int size = this.g.size();
            for (int i2 = 0; i2 < size; i2++) {
                b bVar = this.g.get(i2);
                if (bVar != null) {
                    bVar.a(this, i);
                }
            }
        }
    }

    final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int i = android.support.v4.view.s.i(this);
        if (i != 0) {
            return (i * 2) + topInset;
        }
        int childCount = getChildCount();
        int i2 = childCount >= 1 ? android.support.v4.view.s.i(getChildAt(childCount - 1)) : 0;
        if (i2 != 0) {
            return (i2 * 2) + topInset;
        }
        return getHeight() / 3;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        if (this.j == null) {
            this.j = new int[2];
        }
        int[] iArr = this.j;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(iArr.length + i);
        iArr[0] = this.h ? a.b.state_collapsible : -a.b.state_collapsible;
        iArr[1] = (this.h && this.i) ? a.b.state_collapsed : -a.b.state_collapsed;
        return mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    private boolean b(boolean z) {
        if (this.h == z) {
            return false;
        }
        this.h = z;
        refreshDrawableState();
        return true;
    }

    boolean a(boolean z) {
        if (this.i == z) {
            return false;
        }
        this.i = z;
        refreshDrawableState();
        return true;
    }

    @Deprecated
    public void setTargetElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            v.a(this, f);
        }
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    int getPendingAction() {
        return this.e;
    }

    void d() {
        this.e = 0;
    }

    final int getTopInset() {
        if (this.f != null) {
            return this.f.b();
        }
        return 0;
    }

    public static class a extends LinearLayout.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f269a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Interpolator f270b;

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f269a = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.AppBarLayout_Layout);
            this.f269a = typedArrayObtainStyledAttributes.getInt(a.j.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (typedArrayObtainStyledAttributes.hasValue(a.j.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.f270b = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(a.j.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public a(int i, int i2) {
            super(i, i2);
            this.f269a = 1;
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f269a = 1;
        }

        public a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f269a = 1;
        }

        public a(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f269a = 1;
        }

        public int a() {
            return this.f269a;
        }

        public Interpolator b() {
            return this.f270b;
        }

        boolean c() {
            return (this.f269a & 1) == 1 && (this.f269a & 10) != 0;
        }
    }

    public static class Behavior extends i<AppBarLayout> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f260b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ValueAnimator f261c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f262d;
        private boolean e;
        private float f;
        private WeakReference<View> g;
        private a h;

        public static abstract class a {
            public abstract boolean a(AppBarLayout appBarLayout);
        }

        @Override // android.support.design.widget.s
        public /* bridge */ /* synthetic */ boolean a(int i) {
            return super.a(i);
        }

        @Override // android.support.design.widget.s
        public /* bridge */ /* synthetic */ int b() {
            return super.b();
        }

        public Behavior() {
            this.f262d = -1;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f262d = -1;
        }

        @Override // android.support.design.widget.CoordinatorLayout.a
        public boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
            boolean z = (i & 2) != 0 && appBarLayout.c() && coordinatorLayout.getHeight() - view.getHeight() <= appBarLayout.getHeight();
            if (z && this.f261c != null) {
                this.f261c.cancel();
            }
            this.g = null;
            return z;
        }

        @Override // android.support.design.widget.CoordinatorLayout.a
        public void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            int downNestedPreScrollRange;
            if (i2 != 0) {
                if (i2 < 0) {
                    i4 = -appBarLayout.getTotalScrollRange();
                    downNestedPreScrollRange = i4 + appBarLayout.getDownNestedPreScrollRange();
                } else {
                    i4 = -appBarLayout.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                if (i4 != downNestedPreScrollRange) {
                    iArr[1] = b(coordinatorLayout, appBarLayout, i2, i4, downNestedPreScrollRange);
                }
            }
        }

        @Override // android.support.design.widget.CoordinatorLayout.a
        public void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5) {
            if (i4 < 0) {
                b(coordinatorLayout, appBarLayout, i4, -appBarLayout.getDownNestedScrollRange(), 0);
            }
        }

        @Override // android.support.design.widget.CoordinatorLayout.a
        public void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
            if (i == 0) {
                c(coordinatorLayout, appBarLayout);
            }
            this.g = new WeakReference<>(view);
        }

        private void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, float f) {
            int height;
            int iAbs = Math.abs(a() - i);
            float fAbs = Math.abs(f);
            if (fAbs > 0.0f) {
                height = Math.round((iAbs / fAbs) * 1000.0f) * 3;
            } else {
                height = (int) (((iAbs / appBarLayout.getHeight()) + 1.0f) * 150.0f);
            }
            a(coordinatorLayout, appBarLayout, i, height);
        }

        private void a(final CoordinatorLayout coordinatorLayout, final AppBarLayout appBarLayout, int i, int i2) {
            int iA = a();
            if (iA == i) {
                if (this.f261c != null && this.f261c.isRunning()) {
                    this.f261c.cancel();
                    return;
                }
                return;
            }
            if (this.f261c == null) {
                this.f261c = new ValueAnimator();
                this.f261c.setInterpolator(android.support.design.widget.a.e);
                this.f261c.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.AppBarLayout.Behavior.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        Behavior.this.a_(coordinatorLayout, appBarLayout, ((Integer) valueAnimator.getAnimatedValue()).intValue());
                    }
                });
            } else {
                this.f261c.cancel();
            }
            this.f261c.setDuration(Math.min(i2, 600));
            this.f261c.setIntValues(iA, i);
            this.f261c.start();
        }

        private int a(AppBarLayout appBarLayout, int i) {
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = appBarLayout.getChildAt(i2);
                if (childAt.getTop() <= (-i) && childAt.getBottom() >= (-i)) {
                    return i2;
                }
            }
            return -1;
        }

        private void c(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            int i;
            int iA = a();
            int iA2 = a(appBarLayout, iA);
            if (iA2 >= 0) {
                View childAt = appBarLayout.getChildAt(iA2);
                int iA3 = ((a) childAt.getLayoutParams()).a();
                if ((iA3 & 17) == 17) {
                    int i2 = -childAt.getTop();
                    int i3 = -childAt.getBottom();
                    if (iA2 == appBarLayout.getChildCount() - 1) {
                        i3 += appBarLayout.getTopInset();
                    }
                    if (a(iA3, 2)) {
                        i3 += android.support.v4.view.s.i(childAt);
                        i = i2;
                    } else if (a(iA3, 5)) {
                        i = android.support.v4.view.s.i(childAt) + i3;
                        if (iA >= i) {
                            i3 = i;
                            i = i2;
                        }
                    } else {
                        i = i2;
                    }
                    if (iA >= (i3 + i) / 2) {
                        i3 = i;
                    }
                    a(coordinatorLayout, appBarLayout, android.support.v4.d.a.a(i3, -appBarLayout.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        private static boolean a(int i, int i2) {
            return (i & i2) == i2;
        }

        @Override // android.support.design.widget.CoordinatorLayout.a
        public boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            if (((CoordinatorLayout.d) appBarLayout.getLayoutParams()).height != -2) {
                return super.a(coordinatorLayout, appBarLayout, i, i2, i3, i4);
            }
            coordinatorLayout.a(appBarLayout, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
            return true;
        }

        @Override // android.support.design.widget.s, android.support.design.widget.CoordinatorLayout.a
        public boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            int iRound;
            boolean zA = super.a(coordinatorLayout, appBarLayout, i);
            int pendingAction = appBarLayout.getPendingAction();
            if (this.f262d >= 0 && (pendingAction & 8) == 0) {
                View childAt = appBarLayout.getChildAt(this.f262d);
                int i2 = -childAt.getBottom();
                if (this.e) {
                    iRound = android.support.v4.view.s.i(childAt) + appBarLayout.getTopInset() + i2;
                } else {
                    iRound = Math.round(childAt.getHeight() * this.f) + i2;
                }
                a_(coordinatorLayout, appBarLayout, iRound);
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i3 = -appBarLayout.getUpNestedPreScrollRange();
                    if (z) {
                        a(coordinatorLayout, appBarLayout, i3, 0.0f);
                    } else {
                        a_(coordinatorLayout, appBarLayout, i3);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        a(coordinatorLayout, appBarLayout, 0, 0.0f);
                    } else {
                        a_(coordinatorLayout, appBarLayout, 0);
                    }
                }
            }
            appBarLayout.d();
            this.f262d = -1;
            a(android.support.v4.d.a.a(b(), -appBarLayout.getTotalScrollRange(), 0));
            a(coordinatorLayout, appBarLayout, b(), 0, true);
            appBarLayout.a(b());
            return zA;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // android.support.design.widget.i
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean c(AppBarLayout appBarLayout) {
            if (this.h != null) {
                return this.h.a(appBarLayout);
            }
            if (this.g == null) {
                return true;
            }
            View view = this.g.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // android.support.design.widget.i
        public void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            c(coordinatorLayout, appBarLayout);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // android.support.design.widget.i
        public int b(AppBarLayout appBarLayout) {
            return -appBarLayout.getDownNestedScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // android.support.design.widget.i
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int a(AppBarLayout appBarLayout) {
            return appBarLayout.getTotalScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // android.support.design.widget.i
        public int a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3) {
            int iA = a();
            if (i2 != 0 && iA >= i2 && iA <= i3) {
                int iA2 = android.support.v4.d.a.a(i, i2, i3);
                if (iA == iA2) {
                    return 0;
                }
                int iB = appBarLayout.b() ? b(appBarLayout, iA2) : iA2;
                boolean zA = a(iB);
                int i4 = iA - iA2;
                this.f260b = iA2 - iB;
                if (!zA && appBarLayout.b()) {
                    coordinatorLayout.b(appBarLayout);
                }
                appBarLayout.a(b());
                a(coordinatorLayout, appBarLayout, iA2, iA2 < iA ? -1 : 1, false);
                return i4;
            }
            this.f260b = 0;
            return 0;
        }

        private int b(AppBarLayout appBarLayout, int i) {
            int topInset;
            int iAbs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = appBarLayout.getChildAt(i2);
                a aVar = (a) childAt.getLayoutParams();
                Interpolator interpolatorB = aVar.b();
                if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                    if (interpolatorB != null) {
                        int iA = aVar.a();
                        if ((iA & 1) != 0) {
                            topInset = aVar.bottomMargin + childAt.getHeight() + aVar.topMargin + 0;
                            if ((iA & 2) != 0) {
                                topInset -= android.support.v4.view.s.i(childAt);
                            }
                        } else {
                            topInset = 0;
                        }
                        if (android.support.v4.view.s.o(childAt)) {
                            topInset -= appBarLayout.getTopInset();
                        }
                        if (topInset > 0) {
                            return Integer.signum(i) * (Math.round(interpolatorB.getInterpolation((iAbs - childAt.getTop()) / topInset) * topInset) + childAt.getTop());
                        }
                        return i;
                    }
                    return i;
                }
            }
            return i;
        }

        private void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, boolean z) {
            boolean z2 = false;
            View viewC = c(appBarLayout, i);
            if (viewC != null) {
                int iA = ((a) viewC.getLayoutParams()).a();
                if ((iA & 1) != 0) {
                    int i3 = android.support.v4.view.s.i(viewC);
                    if (i2 > 0 && (iA & 12) != 0) {
                        z2 = (-i) >= (viewC.getBottom() - i3) - appBarLayout.getTopInset();
                    } else if ((iA & 2) != 0) {
                        z2 = (-i) >= (viewC.getBottom() - i3) - appBarLayout.getTopInset();
                    }
                }
                boolean zA = appBarLayout.a(z2);
                if (Build.VERSION.SDK_INT >= 11) {
                    if (z || (zA && d(coordinatorLayout, appBarLayout))) {
                        appBarLayout.jumpDrawablesToCurrentState();
                    }
                }
            }
        }

        private boolean d(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            List<View> listD = coordinatorLayout.d(appBarLayout);
            int size = listD.size();
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.a aVarB = ((CoordinatorLayout.d) listD.get(i).getLayoutParams()).b();
                if (aVarB instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) aVarB).d() != 0;
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

        @Override // android.support.design.widget.i
        int a() {
            return b() + this.f260b;
        }

        @Override // android.support.design.widget.CoordinatorLayout.a
        public Parcelable b(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            Parcelable parcelableB = super.b(coordinatorLayout, appBarLayout);
            int iB = b();
            int childCount = appBarLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = appBarLayout.getChildAt(i);
                int bottom = childAt.getBottom() + iB;
                if (childAt.getTop() + iB <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(parcelableB);
                    savedState.f266a = i;
                    savedState.f268c = bottom == android.support.v4.view.s.i(childAt) + appBarLayout.getTopInset();
                    savedState.f267b = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return parcelableB;
        }

        @Override // android.support.design.widget.CoordinatorLayout.a
        public void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                super.a(coordinatorLayout, appBarLayout, savedState.getSuperState());
                this.f262d = savedState.f266a;
                this.f = savedState.f267b;
                this.e = savedState.f268c;
                return;
            }
            super.a(coordinatorLayout, appBarLayout, parcelable);
            this.f262d = -1;
        }

        protected static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.design.widget.AppBarLayout.Behavior.SavedState.1
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
            int f266a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            float f267b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            boolean f268c;

            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f266a = parcel.readInt();
                this.f267b = parcel.readFloat();
                this.f268c = parcel.readByte() != 0;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.f266a);
                parcel.writeFloat(this.f267b);
                parcel.writeByte((byte) (this.f268c ? 1 : 0));
            }
        }
    }

    public static class ScrollingViewBehavior extends j {
        @Override // android.support.design.widget.s
        public /* bridge */ /* synthetic */ boolean a(int i) {
            return super.a(i);
        }

        @Override // android.support.design.widget.s, android.support.design.widget.CoordinatorLayout.a
        public /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, int i) {
            return super.a(coordinatorLayout, view, i);
        }

        @Override // android.support.design.widget.j, android.support.design.widget.CoordinatorLayout.a
        public /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return super.a(coordinatorLayout, view, i, i2, i3, i4);
        }

        @Override // android.support.design.widget.s
        public /* bridge */ /* synthetic */ int b() {
            return super.b();
        }

        @Override // android.support.design.widget.j
        /* synthetic */ View b(List list) {
            return a((List<View>) list);
        }

        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.ScrollingViewBehavior_Layout);
            b(typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // android.support.design.widget.CoordinatorLayout.a
        public boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // android.support.design.widget.CoordinatorLayout.a
        public boolean b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            e(coordinatorLayout, view, view2);
            return false;
        }

        @Override // android.support.design.widget.CoordinatorLayout.a
        public boolean a(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout appBarLayoutA = a(coordinatorLayout.c(view));
            if (appBarLayoutA != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f424a;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    appBarLayoutA.a(false, !z);
                    return true;
                }
            }
            return false;
        }

        private void e(CoordinatorLayout coordinatorLayout, View view, View view2) {
            CoordinatorLayout.a aVarB = ((CoordinatorLayout.d) view2.getLayoutParams()).b();
            if (aVarB instanceof Behavior) {
                android.support.v4.view.s.c(view, ((((Behavior) aVarB).f260b + (view2.getBottom() - view.getTop())) + a()) - c(view2));
            }
        }

        @Override // android.support.design.widget.j
        float a(View view) {
            int i;
            if (!(view instanceof AppBarLayout)) {
                return 0.0f;
            }
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int totalScrollRange = appBarLayout.getTotalScrollRange();
            int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
            int iA = a(appBarLayout);
            if ((downNestedPreScrollRange == 0 || totalScrollRange + iA > downNestedPreScrollRange) && (i = totalScrollRange - downNestedPreScrollRange) != 0) {
                return 1.0f + (iA / i);
            }
            return 0.0f;
        }

        private static int a(AppBarLayout appBarLayout) {
            CoordinatorLayout.a aVarB = ((CoordinatorLayout.d) appBarLayout.getLayoutParams()).b();
            if (aVarB instanceof Behavior) {
                return ((Behavior) aVarB).a();
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

        @Override // android.support.design.widget.j
        int b(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.b(view);
        }
    }
}
