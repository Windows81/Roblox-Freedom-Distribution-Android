package android.support.v4.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.s;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;

/* JADX INFO: loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements android.support.v4.view.j, android.support.v4.view.l {
    private static final a w = new a();
    private static final int[] x = {R.attr.fillViewport};
    private float A;
    private b B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f1118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Rect f1119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private OverScroller f1120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private EdgeEffect f1121d;
    private EdgeEffect e;
    private int f;
    private boolean g;
    private boolean h;
    private View i;
    private boolean j;
    private VelocityTracker k;
    private boolean l;
    private boolean m;
    private int n;
    private int o;
    private int p;
    private int q;
    private final int[] r;
    private final int[] s;
    private int t;
    private int u;
    private SavedState v;
    private final android.support.v4.view.n y;
    private final android.support.v4.view.k z;

    public interface b {
        void a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4);
    }

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1119b = new Rect();
        this.g = true;
        this.h = false;
        this.i = null;
        this.j = false;
        this.m = true;
        this.q = -1;
        this.r = new int[2];
        this.s = new int[2];
        a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, x, i, 0);
        setFillViewport(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
        this.y = new android.support.v4.view.n(this);
        this.z = new android.support.v4.view.k(this);
        setNestedScrollingEnabled(true);
        s.a(this, w);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.z.a(z);
    }

    @Override // android.view.View, android.support.v4.view.i
    public boolean isNestedScrollingEnabled() {
        return this.z.a();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.z.b(i);
    }

    public boolean a(int i, int i2) {
        return this.z.a(i, i2);
    }

    @Override // android.view.View, android.support.v4.view.i
    public void stopNestedScroll() {
        this.z.c();
    }

    public void a(int i) {
        this.z.c(i);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.z.b();
    }

    public boolean b(int i) {
        return this.z.a(i);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.z.a(i, i2, i3, i4, iArr);
    }

    public boolean a(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return this.z.a(i, i2, i3, i4, iArr, i5);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.z.a(i, i2, iArr, iArr2);
    }

    public boolean a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.z.a(i, i2, iArr, iArr2, i3);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.z.a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.z.a(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.y.a(view, view2, i);
        startNestedScroll(2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public void onStopNestedScroll(View view) {
        this.y.a(view);
        stopNestedScroll();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int scrollY = getScrollY();
        scrollBy(0, i4);
        int scrollY2 = getScrollY() - scrollY;
        dispatchNestedScroll(0, scrollY2, 0, i4 - scrollY2, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        dispatchNestedPreScroll(i, i2, iArr, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (z) {
            return false;
        }
        h((int) f2);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.y.a();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = (getChildAt(0).getBottom() - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (0.5f * getHeight());
    }

    private void a() {
        this.f1120c = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.n = viewConfiguration.getScaledTouchSlop();
        this.o = viewConfiguration.getScaledMinimumFlingVelocity();
        this.p = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, layoutParams);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i, layoutParams);
    }

    public void setOnScrollChangeListener(b bVar) {
        this.B = bVar;
    }

    private boolean b() {
        View childAt = getChildAt(0);
        if (childAt != null) {
            return getHeight() < (childAt.getHeight() + getPaddingTop()) + getPaddingBottom();
        }
        return false;
    }

    public void setFillViewport(boolean z) {
        if (z != this.l) {
            this.l = z;
            requestLayout();
        }
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.m = z;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.B != null) {
            this.B.a(this, i, i2, i3, i4);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.l && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            int measuredHeight = getMeasuredHeight();
            if (childAt.getMeasuredHeight() < measuredHeight) {
                childAt.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), ((FrameLayout.LayoutParams) childAt.getLayoutParams()).width), View.MeasureSpec.makeMeasureSpec((measuredHeight - getPaddingTop()) - getPaddingBottom(), 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || a(keyEvent);
    }

    public boolean a(KeyEvent keyEvent) {
        this.f1119b.setEmpty();
        if (!b()) {
            if (!isFocused() || keyEvent.getKeyCode() == 4) {
                return false;
            }
            View viewFindFocus = findFocus();
            if (viewFindFocus == this) {
                viewFindFocus = null;
            }
            View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 130);
            return (viewFindNextFocus == null || viewFindNextFocus == this || !viewFindNextFocus.requestFocus(130)) ? false : true;
        }
        if (keyEvent.getAction() != 0) {
            return false;
        }
        switch (keyEvent.getKeyCode()) {
            case 19:
                if (!keyEvent.isAltPressed()) {
                    return e(33);
                }
                return d(33);
            case 20:
                if (!keyEvent.isAltPressed()) {
                    return e(130);
                }
                return d(130);
            case 62:
                c(keyEvent.isShiftPressed() ? 33 : 130);
                return false;
            default:
                return false;
        }
    }

    private boolean d(int i, int i2) {
        if (getChildCount() <= 0) {
            return false;
        }
        int scrollY = getScrollY();
        View childAt = getChildAt(0);
        return i2 >= childAt.getTop() - scrollY && i2 < childAt.getBottom() - scrollY && i >= childAt.getLeft() && i < childAt.getRight();
    }

    private void c() {
        if (this.k == null) {
            this.k = VelocityTracker.obtain();
        } else {
            this.k.clear();
        }
    }

    private void d() {
        if (this.k == null) {
            this.k = VelocityTracker.obtain();
        }
    }

    private void e() {
        if (this.k != null) {
            this.k.recycle();
            this.k = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            e();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 2 && this.j) {
            return true;
        }
        switch (action & 255) {
            case 0:
                int y = (int) motionEvent.getY();
                if (!d((int) motionEvent.getX(), y)) {
                    this.j = false;
                    e();
                } else {
                    this.f = y;
                    this.q = motionEvent.getPointerId(0);
                    c();
                    this.k.addMovement(motionEvent);
                    this.f1120c.computeScrollOffset();
                    this.j = this.f1120c.isFinished() ? false : true;
                    a(2, 0);
                }
                break;
            case 1:
            case 3:
                this.j = false;
                this.q = -1;
                e();
                if (this.f1120c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    s.c(this);
                }
                a(0);
                break;
            case 2:
                int i = this.q;
                if (i != -1) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(i);
                    if (iFindPointerIndex == -1) {
                        Log.e("NestedScrollView", "Invalid pointerId=" + i + " in onInterceptTouchEvent");
                    } else {
                        int y2 = (int) motionEvent.getY(iFindPointerIndex);
                        if (Math.abs(y2 - this.f) > this.n && (getNestedScrollAxes() & 2) == 0) {
                            this.j = true;
                            this.f = y2;
                            d();
                            this.k.addMovement(motionEvent);
                            this.t = 0;
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                break;
            case 6:
                a(motionEvent);
                break;
        }
        return this.j;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        d();
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.t = 0;
        }
        motionEventObtain.offsetLocation(0.0f, this.t);
        switch (actionMasked) {
            case 0:
                if (getChildCount() == 0) {
                    return false;
                }
                boolean z = !this.f1120c.isFinished();
                this.j = z;
                if (z && (parent = getParent()) != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                if (!this.f1120c.isFinished()) {
                    this.f1120c.abortAnimation();
                }
                this.f = (int) motionEvent.getY();
                this.q = motionEvent.getPointerId(0);
                a(2, 0);
                break;
                break;
            case 1:
                VelocityTracker velocityTracker = this.k;
                velocityTracker.computeCurrentVelocity(1000, this.p);
                int yVelocity = (int) velocityTracker.getYVelocity(this.q);
                if (Math.abs(yVelocity) > this.o) {
                    h(-yVelocity);
                } else if (this.f1120c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    s.c(this);
                }
                this.q = -1;
                f();
                break;
            case 2:
                int iFindPointerIndex = motionEvent.findPointerIndex(this.q);
                if (iFindPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.q + " in onTouchEvent");
                } else {
                    int y = (int) motionEvent.getY(iFindPointerIndex);
                    int i = this.f - y;
                    if (a(0, i, this.s, this.r, 0)) {
                        i -= this.s[1];
                        motionEventObtain.offsetLocation(0.0f, this.r[1]);
                        this.t += this.r[1];
                    }
                    if (!this.j && Math.abs(i) > this.n) {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.j = true;
                        if (i > 0) {
                            i -= this.n;
                        } else {
                            i += this.n;
                        }
                    }
                    if (this.j) {
                        this.f = y - this.r[1];
                        int scrollY = getScrollY();
                        int scrollRange = getScrollRange();
                        int overScrollMode = getOverScrollMode();
                        boolean z2 = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                        if (a(0, i, 0, getScrollY(), 0, scrollRange, 0, 0, true) && !b(0)) {
                            this.k.clear();
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        if (a(0, scrollY2, 0, i - scrollY2, this.r, 0)) {
                            this.f -= this.r[1];
                            motionEventObtain.offsetLocation(0.0f, this.r[1]);
                            this.t += this.r[1];
                        } else if (z2) {
                            g();
                            int i2 = scrollY + i;
                            if (i2 < 0) {
                                h.a(this.f1121d, i / getHeight(), motionEvent.getX(iFindPointerIndex) / getWidth());
                                if (!this.e.isFinished()) {
                                    this.e.onRelease();
                                }
                            } else if (i2 > scrollRange) {
                                h.a(this.e, i / getHeight(), 1.0f - (motionEvent.getX(iFindPointerIndex) / getWidth()));
                                if (!this.f1121d.isFinished()) {
                                    this.f1121d.onRelease();
                                }
                            }
                            if (this.f1121d != null && (!this.f1121d.isFinished() || !this.e.isFinished())) {
                                s.c(this);
                            }
                        }
                    }
                }
                break;
            case 3:
                if (this.j && getChildCount() > 0 && this.f1120c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    s.c(this);
                }
                this.q = -1;
                f();
                break;
            case 5:
                int actionIndex = motionEvent.getActionIndex();
                this.f = (int) motionEvent.getY(actionIndex);
                this.q = motionEvent.getPointerId(actionIndex);
                break;
            case 6:
                a(motionEvent);
                this.f = (int) motionEvent.getY(motionEvent.findPointerIndex(this.q));
                break;
        }
        if (this.k != null) {
            this.k.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.q) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f = (int) motionEvent.getY(i);
            this.q = motionEvent.getPointerId(i);
            if (this.k != null) {
                this.k.clear();
            }
        }
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 8:
                if (!this.j) {
                    float axisValue = motionEvent.getAxisValue(9);
                    if (axisValue != 0.0f) {
                        int verticalScrollFactorCompat = (int) (axisValue * getVerticalScrollFactorCompat());
                        int scrollRange = getScrollRange();
                        int scrollY = getScrollY();
                        int i = scrollY - verticalScrollFactorCompat;
                        if (i < 0) {
                            scrollRange = 0;
                        } else if (i <= scrollRange) {
                            scrollRange = i;
                        }
                        if (scrollRange != scrollY) {
                            super.scrollTo(getScrollX(), scrollRange);
                        }
                    }
                }
                break;
        }
        return false;
    }

    private float getVerticalScrollFactorCompat() {
        if (this.A == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.A = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.A;
    }

    @Override // android.view.View
    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    boolean a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        boolean z2;
        boolean z3;
        int overScrollMode = getOverScrollMode();
        boolean z4 = computeHorizontalScrollRange() > computeHorizontalScrollExtent();
        boolean z5 = computeVerticalScrollRange() > computeVerticalScrollExtent();
        boolean z6 = overScrollMode == 0 || (overScrollMode == 1 && z4);
        boolean z7 = overScrollMode == 0 || (overScrollMode == 1 && z5);
        int i9 = i3 + i;
        if (!z6) {
            i7 = 0;
        }
        int i10 = i4 + i2;
        if (!z7) {
            i8 = 0;
        }
        int i11 = -i7;
        int i12 = i7 + i5;
        int i13 = -i8;
        int i14 = i8 + i6;
        if (i9 > i12) {
            z2 = true;
        } else if (i9 >= i11) {
            z2 = false;
            i12 = i9;
        } else {
            z2 = true;
            i12 = i11;
        }
        if (i10 > i14) {
            z3 = true;
        } else if (i10 >= i13) {
            z3 = false;
            i14 = i10;
        } else {
            z3 = true;
            i14 = i13;
        }
        if (z3 && !b(1)) {
            this.f1120c.springBack(i12, i14, 0, 0, 0, getScrollRange());
        }
        onOverScrolled(i12, i14, z2, z3);
        return z2 || z3;
    }

    int getScrollRange() {
        if (getChildCount() > 0) {
            return Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.view.View a(boolean r12, int r13, int r14) {
        /*
            r11 = this;
            r0 = 2
            java.util.ArrayList r6 = r11.getFocusables(r0)
            r3 = 0
            r2 = 0
            int r7 = r6.size()
            r0 = 0
            r5 = r0
        Ld:
            if (r5 >= r7) goto L5b
            java.lang.Object r0 = r6.get(r5)
            android.view.View r0 = (android.view.View) r0
            int r4 = r0.getTop()
            int r8 = r0.getBottom()
            if (r13 >= r8) goto L5c
            if (r4 >= r14) goto L5c
            if (r13 >= r4) goto L31
            if (r8 >= r14) goto L31
            r1 = 1
        L26:
            if (r3 != 0) goto L33
            r10 = r1
            r1 = r0
            r0 = r10
        L2b:
            int r2 = r5 + 1
            r5 = r2
            r3 = r1
            r2 = r0
            goto Ld
        L31:
            r1 = 0
            goto L26
        L33:
            if (r12 == 0) goto L3b
            int r9 = r3.getTop()
            if (r4 < r9) goto L43
        L3b:
            if (r12 != 0) goto L4d
            int r4 = r3.getBottom()
            if (r8 <= r4) goto L4d
        L43:
            r4 = 1
        L44:
            if (r2 == 0) goto L4f
            if (r1 == 0) goto L5c
            if (r4 == 0) goto L5c
            r1 = r0
            r0 = r2
            goto L2b
        L4d:
            r4 = 0
            goto L44
        L4f:
            if (r1 == 0) goto L56
            r1 = 1
            r10 = r1
            r1 = r0
            r0 = r10
            goto L2b
        L56:
            if (r4 == 0) goto L5c
            r1 = r0
            r0 = r2
            goto L2b
        L5b:
            return r3
        L5c:
            r0 = r2
            r1 = r3
            goto L2b
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.NestedScrollView.a(boolean, int, int):android.view.View");
    }

    public boolean c(int i) {
        boolean z = i == 130;
        int height = getHeight();
        if (z) {
            this.f1119b.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                if (this.f1119b.top + height > childAt.getBottom()) {
                    this.f1119b.top = childAt.getBottom() - height;
                }
            }
        } else {
            this.f1119b.top = getScrollY() - height;
            if (this.f1119b.top < 0) {
                this.f1119b.top = 0;
            }
        }
        this.f1119b.bottom = this.f1119b.top + height;
        return a(i, this.f1119b.top, this.f1119b.bottom);
    }

    public boolean d(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        this.f1119b.top = 0;
        this.f1119b.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            this.f1119b.bottom = getChildAt(childCount - 1).getBottom() + getPaddingBottom();
            this.f1119b.top = this.f1119b.bottom - height;
        }
        return a(i, this.f1119b.top, this.f1119b.bottom);
    }

    private boolean a(int i, int i2, int i3) {
        boolean z = false;
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = scrollY + height;
        boolean z2 = i == 33;
        View viewA = a(z2, i2, i3);
        if (viewA == null) {
            viewA = this;
        }
        if (i2 < scrollY || i3 > i4) {
            g(z2 ? i2 - scrollY : i3 - i4);
            z = true;
        }
        if (viewA != findFocus()) {
            viewA.requestFocus(i);
        }
        return z;
    }

    public boolean e(int i) {
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus != null && a(viewFindNextFocus, maxScrollAmount, getHeight())) {
            viewFindNextFocus.getDrawingRect(this.f1119b);
            offsetDescendantRectToMyCoords(viewFindNextFocus, this.f1119b);
            g(a(this.f1119b));
            viewFindNextFocus.requestFocus(i);
        } else {
            if (i == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i == 130 && getChildCount() > 0) {
                int bottom = getChildAt(0).getBottom();
                int scrollY = (getScrollY() + getHeight()) - getPaddingBottom();
                if (bottom - scrollY < maxScrollAmount) {
                    maxScrollAmount = bottom - scrollY;
                }
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            g(maxScrollAmount);
        }
        if (viewFindFocus != null && viewFindFocus.isFocused() && a(viewFindFocus)) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    private boolean a(View view) {
        return !a(view, 0, getHeight());
    }

    private boolean a(View view, int i, int i2) {
        view.getDrawingRect(this.f1119b);
        offsetDescendantRectToMyCoords(view, this.f1119b);
        return this.f1119b.bottom + i >= getScrollY() && this.f1119b.top - i <= getScrollY() + i2;
    }

    private void g(int i) {
        if (i != 0) {
            if (this.m) {
                b(0, i);
            } else {
                scrollBy(0, i);
            }
        }
    }

    public final void b(int i, int i2) {
        if (getChildCount() != 0) {
            if (AnimationUtils.currentAnimationTimeMillis() - this.f1118a > 250) {
                int iMax = Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
                int scrollY = getScrollY();
                this.f1120c.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(scrollY + i2, iMax)) - scrollY);
                s.c(this);
            } else {
                if (!this.f1120c.isFinished()) {
                    this.f1120c.abortAnimation();
                }
                scrollBy(i, i2);
            }
            this.f1118a = AnimationUtils.currentAnimationTimeMillis();
        }
    }

    public final void c(int i, int i2) {
        b(i - getScrollX(), i2 - getScrollY());
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        int bottom = getChildAt(0).getBottom();
        int scrollY = getScrollY();
        int iMax = Math.max(0, bottom - height);
        if (scrollY < 0) {
            return bottom - scrollY;
        }
        if (scrollY > iMax) {
            return bottom + (scrollY - iMax);
        }
        return bottom;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.ViewGroup
    protected void measureChild(View view, int i, int i2) {
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.bottomMargin + marginLayoutParams.topMargin, 0));
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f1120c.computeScrollOffset()) {
            this.f1120c.getCurrX();
            int currY = this.f1120c.getCurrY();
            int i = currY - this.u;
            if (a(0, i, this.s, null, 1)) {
                i -= this.s[1];
            }
            if (i != 0) {
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                a(0, i, getScrollX(), scrollY, 0, scrollRange, 0, 0, false);
                int scrollY2 = getScrollY() - scrollY;
                if (!a(0, scrollY2, 0, i - scrollY2, null, 1)) {
                    int overScrollMode = getOverScrollMode();
                    if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                        g();
                        if (currY <= 0 && scrollY > 0) {
                            this.f1121d.onAbsorb((int) this.f1120c.getCurrVelocity());
                        } else if (currY >= scrollRange && scrollY < scrollRange) {
                            this.e.onAbsorb((int) this.f1120c.getCurrVelocity());
                        }
                    }
                }
            }
            this.u = currY;
            s.c(this);
            return;
        }
        if (b(1)) {
            a(1);
        }
        this.u = 0;
    }

    private void b(View view) {
        view.getDrawingRect(this.f1119b);
        offsetDescendantRectToMyCoords(view, this.f1119b);
        int iA = a(this.f1119b);
        if (iA != 0) {
            scrollBy(0, iA);
        }
    }

    private boolean a(Rect rect, boolean z) {
        int iA = a(rect);
        boolean z2 = iA != 0;
        if (z2) {
            if (z) {
                scrollBy(0, iA);
            } else {
                b(0, iA);
            }
        }
        return z2;
    }

    protected int a(Rect rect) {
        int iMax;
        int i;
        int i2;
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i3 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        if (rect.bottom < getChildAt(0).getHeight()) {
            i3 -= verticalFadingEdgeLength;
        }
        if (rect.bottom > i3 && rect.top > scrollY) {
            if (rect.height() > height) {
                i2 = (rect.top - scrollY) + 0;
            } else {
                i2 = (rect.bottom - i3) + 0;
            }
            iMax = Math.min(i2, getChildAt(0).getBottom() - i3);
        } else if (rect.top >= scrollY || rect.bottom >= i3) {
            iMax = 0;
        } else {
            if (rect.height() > height) {
                i = 0 - (i3 - rect.bottom);
            } else {
                i = 0 - (scrollY - rect.top);
            }
            iMax = Math.max(i, -getScrollY());
        }
        return iMax;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.g) {
            b(view2);
        } else {
            this.i = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        View viewFindNextFocusFromRect;
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        if (rect == null) {
            viewFindNextFocusFromRect = FocusFinder.getInstance().findNextFocus(this, null, i);
        } else {
            viewFindNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(this, rect, i);
        }
        if (viewFindNextFocusFromRect == null || a(viewFindNextFocusFromRect)) {
            return false;
        }
        return viewFindNextFocusFromRect.requestFocus(i, rect);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return a(rect, z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.g = true;
        super.requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.g = false;
        if (this.i != null && a(this.i, this)) {
            b(this.i);
        }
        this.i = null;
        if (!this.h) {
            if (this.v != null) {
                scrollTo(getScrollX(), this.v.f1122a);
                this.v = null;
            }
            int iMax = Math.max(0, (getChildCount() > 0 ? getChildAt(0).getMeasuredHeight() : 0) - (((i4 - i2) - getPaddingBottom()) - getPaddingTop()));
            if (getScrollY() > iMax) {
                scrollTo(getScrollX(), iMax);
            } else if (getScrollY() < 0) {
                scrollTo(getScrollX(), 0);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.h = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.h = false;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View viewFindFocus = findFocus();
        if (viewFindFocus != null && this != viewFindFocus && a(viewFindFocus, 0, i4)) {
            viewFindFocus.getDrawingRect(this.f1119b);
            offsetDescendantRectToMyCoords(viewFindFocus, this.f1119b);
            g(a(this.f1119b));
        }
    }

    private static boolean a(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && a((View) parent, view2);
    }

    public void f(int i) {
        if (getChildCount() > 0) {
            a(2, 1);
            this.f1120c.fling(getScrollX(), getScrollY(), 0, i, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            this.u = getScrollY();
            s.c(this);
        }
    }

    private void h(int i) {
        int scrollY = getScrollY();
        boolean z = (scrollY > 0 || i > 0) && (scrollY < getScrollRange() || i < 0);
        if (!dispatchNestedPreFling(0.0f, i)) {
            dispatchNestedFling(0.0f, i, z);
            f(i);
        }
    }

    private void f() {
        this.j = false;
        e();
        a(0);
        if (this.f1121d != null) {
            this.f1121d.onRelease();
            this.e.onRelease();
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            int iB = b(i, (getWidth() - getPaddingRight()) - getPaddingLeft(), childAt.getWidth());
            int iB2 = b(i2, (getHeight() - getPaddingBottom()) - getPaddingTop(), childAt.getHeight());
            if (iB != getScrollX() || iB2 != getScrollY()) {
                super.scrollTo(iB, iB2);
            }
        }
    }

    private void g() {
        if (getOverScrollMode() != 2) {
            if (this.f1121d == null) {
                Context context = getContext();
                this.f1121d = new EdgeEffect(context);
                this.e = new EdgeEffect(context);
                return;
            }
            return;
        }
        this.f1121d = null;
        this.e = null;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f1121d != null) {
            int scrollY = getScrollY();
            if (!this.f1121d.isFinished()) {
                int iSave = canvas.save();
                int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
                canvas.translate(getPaddingLeft(), Math.min(0, scrollY));
                this.f1121d.setSize(width, getHeight());
                if (this.f1121d.draw(canvas)) {
                    s.c(this);
                }
                canvas.restoreToCount(iSave);
            }
            if (!this.e.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = (getWidth() - getPaddingLeft()) - getPaddingRight();
                int height = getHeight();
                canvas.translate((-width2) + getPaddingLeft(), Math.max(getScrollRange(), scrollY) + height);
                canvas.rotate(180.0f, width2, 0.0f);
                this.e.setSize(width2, height);
                if (this.e.draw(canvas)) {
                    s.c(this);
                }
                canvas.restoreToCount(iSave2);
            }
        }
    }

    private static int b(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        if (i2 + i > i3) {
            return i3 - i2;
        }
        return i;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.v = savedState;
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1122a = getScrollY();
        return savedState;
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v4.widget.NestedScrollView.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1122a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f1122a = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1122a);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f1122a + "}";
        }
    }

    static class a extends android.support.v4.view.a {
        a() {
        }

        @Override // android.support.v4.view.a
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            switch (i) {
                case RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT /* 4096 */:
                    int iMin = Math.min(((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()) + nestedScrollView.getScrollY(), nestedScrollView.getScrollRange());
                    if (iMin == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.c(0, iMin);
                    return true;
                case 8192:
                    int iMax = Math.max(nestedScrollView.getScrollY() - ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (iMax == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.c(0, iMax);
                    return true;
                default:
                    return false;
            }
        }

        @Override // android.support.v4.view.a
        public void onInitializeAccessibilityNodeInfo(View view, android.support.v4.view.a.b bVar) {
            int scrollRange;
            super.onInitializeAccessibilityNodeInfo(view, bVar);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            bVar.a((CharSequence) ScrollView.class.getName());
            if (nestedScrollView.isEnabled() && (scrollRange = nestedScrollView.getScrollRange()) > 0) {
                bVar.c(true);
                if (nestedScrollView.getScrollY() > 0) {
                    bVar.a(8192);
                }
                if (nestedScrollView.getScrollY() < scrollRange) {
                    bVar.a(RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT);
                }
            }
        }

        @Override // android.support.v4.view.a
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            android.support.v4.view.a.d.a(accessibilityEvent, nestedScrollView.getScrollX());
            android.support.v4.view.a.d.b(accessibilityEvent, nestedScrollView.getScrollRange());
        }
    }
}
