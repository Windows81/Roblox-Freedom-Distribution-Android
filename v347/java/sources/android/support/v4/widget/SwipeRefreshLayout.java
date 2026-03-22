package android.support.v4.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.v4.view.s;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;
import android.widget.ListView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class SwipeRefreshLayout extends ViewGroup implements android.support.v4.view.i, android.support.v4.view.l {
    private int A;
    private boolean B;
    private final DecelerateInterpolator C;
    private int E;
    private Animation F;
    private Animation G;
    private Animation H;
    private Animation I;
    private Animation J;
    private int K;
    private a L;
    private Animation.AnimationListener M;
    private final Animation N;
    private final Animation O;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f1123a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f1124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1125c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f1126d;
    c e;
    protected int f;
    float g;
    protected int h;
    int i;
    d j;
    boolean k;
    boolean l;
    private View n;
    private int o;
    private float p;
    private float q;
    private final android.support.v4.view.n r;
    private final android.support.v4.view.k s;
    private final int[] t;
    private final int[] u;
    private boolean v;
    private int w;
    private float x;
    private float y;
    private boolean z;
    private static final String m = SwipeRefreshLayout.class.getSimpleName();
    private static final int[] D = {R.attr.enabled};

    public interface a {
        boolean a(SwipeRefreshLayout swipeRefreshLayout, View view);
    }

    public interface b {
        void a();
    }

    void a() {
        this.e.clearAnimation();
        this.j.stop();
        this.e.setVisibility(8);
        setColorViewAlpha(255);
        if (this.f1126d) {
            setAnimationProgress(0.0f);
        } else {
            setTargetOffsetTopAndBottom(this.h - this.f1125c);
        }
        this.f1125c = this.e.getTop();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    private void setColorViewAlpha(int i) {
        this.e.getBackground().setAlpha(i);
        this.j.setAlpha(i);
    }

    public int getProgressViewStartOffset() {
        return this.h;
    }

    public int getProgressViewEndOffset() {
        return this.i;
    }

    public void setSize(int i) {
        if (i == 0 || i == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i == 0) {
                this.K = (int) (displayMetrics.density * 56.0f);
            } else {
                this.K = (int) (displayMetrics.density * 40.0f);
            }
            this.e.setImageDrawable(null);
            this.j.a(i);
            this.e.setImageDrawable(this.j);
        }
    }

    public SwipeRefreshLayout(Context context) {
        this(context, null);
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1124b = false;
        this.p = -1.0f;
        this.t = new int[2];
        this.u = new int[2];
        this.A = -1;
        this.E = -1;
        this.M = new Animation.AnimationListener() { // from class: android.support.v4.widget.SwipeRefreshLayout.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (SwipeRefreshLayout.this.f1124b) {
                    SwipeRefreshLayout.this.j.setAlpha(255);
                    SwipeRefreshLayout.this.j.start();
                    if (SwipeRefreshLayout.this.k && SwipeRefreshLayout.this.f1123a != null) {
                        SwipeRefreshLayout.this.f1123a.a();
                    }
                    SwipeRefreshLayout.this.f1125c = SwipeRefreshLayout.this.e.getTop();
                    return;
                }
                SwipeRefreshLayout.this.a();
            }
        };
        this.N = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.6
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                int iAbs;
                if (!SwipeRefreshLayout.this.l) {
                    iAbs = SwipeRefreshLayout.this.i - Math.abs(SwipeRefreshLayout.this.h);
                } else {
                    iAbs = SwipeRefreshLayout.this.i;
                }
                SwipeRefreshLayout.this.setTargetOffsetTopAndBottom((((int) ((iAbs - SwipeRefreshLayout.this.f) * f)) + SwipeRefreshLayout.this.f) - SwipeRefreshLayout.this.e.getTop());
                SwipeRefreshLayout.this.j.b(1.0f - f);
            }
        };
        this.O = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.7
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.a(f);
            }
        };
        this.o = ViewConfiguration.get(context).getScaledTouchSlop();
        this.w = getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.C = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.K = (int) (40.0f * displayMetrics.density);
        c();
        setChildrenDrawingOrderEnabled(true);
        this.i = (int) (displayMetrics.density * 64.0f);
        this.p = this.i;
        this.r = new android.support.v4.view.n(this);
        this.s = new android.support.v4.view.k(this);
        setNestedScrollingEnabled(true);
        int i = -this.K;
        this.f1125c = i;
        this.h = i;
        a(1.0f);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, D);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(0, true));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        if (this.E >= 0) {
            if (i2 == i - 1) {
                return this.E;
            }
            if (i2 >= this.E) {
                return i2 + 1;
            }
            return i2;
        }
        return i2;
    }

    private void c() {
        this.e = new c(getContext(), -328966);
        this.j = new d(getContext());
        this.j.a(1);
        this.e.setImageDrawable(this.j);
        this.e.setVisibility(8);
        addView(this.e);
    }

    public void setOnRefreshListener(b bVar) {
        this.f1123a = bVar;
    }

    public void setRefreshing(boolean z) {
        int i;
        if (z && this.f1124b != z) {
            this.f1124b = z;
            if (!this.l) {
                i = this.i + this.h;
            } else {
                i = this.i;
            }
            setTargetOffsetTopAndBottom(i - this.f1125c);
            this.k = false;
            b(this.M);
            return;
        }
        a(z, false);
    }

    private void b(Animation.AnimationListener animationListener) {
        this.e.setVisibility(0);
        if (Build.VERSION.SDK_INT >= 11) {
            this.j.setAlpha(255);
        }
        this.F = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.2
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(f);
            }
        };
        this.F.setDuration(this.w);
        if (animationListener != null) {
            this.e.a(animationListener);
        }
        this.e.clearAnimation();
        this.e.startAnimation(this.F);
    }

    void setAnimationProgress(float f) {
        this.e.setScaleX(f);
        this.e.setScaleY(f);
    }

    private void a(boolean z, boolean z2) {
        if (this.f1124b != z) {
            this.k = z2;
            f();
            this.f1124b = z;
            if (this.f1124b) {
                a(this.f1125c, this.M);
            } else {
                a(this.M);
            }
        }
    }

    void a(Animation.AnimationListener animationListener) {
        this.G = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.3
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(1.0f - f);
            }
        };
        this.G.setDuration(150L);
        this.e.a(animationListener);
        this.e.clearAnimation();
        this.e.startAnimation(this.G);
    }

    private void d() {
        this.H = a(this.j.getAlpha(), 76);
    }

    private void e() {
        this.I = a(this.j.getAlpha(), 255);
    }

    private Animation a(final int i, final int i2) {
        Animation animation = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.4
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.j.setAlpha((int) (i + ((i2 - i) * f)));
            }
        };
        animation.setDuration(300L);
        this.e.a(null);
        this.e.clearAnimation();
        this.e.startAnimation(animation);
        return animation;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i) {
        setProgressBackgroundColorSchemeResource(i);
    }

    public void setProgressBackgroundColorSchemeResource(int i) {
        setProgressBackgroundColorSchemeColor(android.support.v4.a.c.c(getContext(), i));
    }

    public void setProgressBackgroundColorSchemeColor(int i) {
        this.e.setBackgroundColor(i);
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeResources(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = android.support.v4.a.c.c(context, iArr[i]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setColorSchemeColors(int... iArr) {
        f();
        this.j.a(iArr);
    }

    private void f() {
        if (this.n == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.e)) {
                    this.n = childAt;
                    return;
                }
            }
        }
    }

    public void setDistanceToTriggerSync(int i) {
        this.p = i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() != 0) {
            if (this.n == null) {
                f();
            }
            if (this.n != null) {
                View view = this.n;
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
                int measuredWidth2 = this.e.getMeasuredWidth();
                this.e.layout((measuredWidth / 2) - (measuredWidth2 / 2), this.f1125c, (measuredWidth / 2) + (measuredWidth2 / 2), this.f1125c + this.e.getMeasuredHeight());
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.n == null) {
            f();
        }
        if (this.n != null) {
            this.n.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
            this.e.measure(View.MeasureSpec.makeMeasureSpec(this.K, 1073741824), View.MeasureSpec.makeMeasureSpec(this.K, 1073741824));
            this.E = -1;
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                if (getChildAt(i3) == this.e) {
                    this.E = i3;
                    return;
                }
            }
        }
    }

    public int getProgressCircleDiameter() {
        return this.K;
    }

    public boolean b() {
        if (this.L != null) {
            return this.L.a(this, this.n);
        }
        if (this.n instanceof ListView) {
            return k.b((ListView) this.n, -1);
        }
        return this.n.canScrollVertically(-1);
    }

    public void setOnChildScrollUpCallback(a aVar) {
        this.L = aVar;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        f();
        int actionMasked = motionEvent.getActionMasked();
        if (this.B && actionMasked == 0) {
            this.B = false;
        }
        if (!isEnabled() || this.B || b() || this.f1124b || this.v) {
            return false;
        }
        switch (actionMasked) {
            case 0:
                setTargetOffsetTopAndBottom(this.h - this.e.getTop());
                this.A = motionEvent.getPointerId(0);
                this.z = false;
                int iFindPointerIndex = motionEvent.findPointerIndex(this.A);
                if (iFindPointerIndex < 0) {
                    return false;
                }
                this.y = motionEvent.getY(iFindPointerIndex);
                break;
                break;
            case 1:
            case 3:
                this.z = false;
                this.A = -1;
                break;
            case 2:
                if (this.A == -1) {
                    Log.e(m, "Got ACTION_MOVE event but don't have an active pointer id.");
                    return false;
                }
                int iFindPointerIndex2 = motionEvent.findPointerIndex(this.A);
                if (iFindPointerIndex2 < 0) {
                    return false;
                }
                d(motionEvent.getY(iFindPointerIndex2));
                break;
                break;
            case 6:
                a(motionEvent);
                break;
        }
        return this.z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (Build.VERSION.SDK_INT >= 21 || !(this.n instanceof AbsListView)) {
            if (this.n == null || s.t(this.n)) {
                super.requestDisallowInterceptTouchEvent(z);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return (!isEnabled() || this.B || this.f1124b || (i & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.r.a(view, view2, i);
        startNestedScroll(i & 2);
        this.q = 0.0f;
        this.v = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0 && this.q > 0.0f) {
            if (i2 > this.q) {
                iArr[1] = i2 - ((int) this.q);
                this.q = 0.0f;
            } else {
                this.q -= i2;
                iArr[1] = i2;
            }
            b(this.q);
        }
        if (this.l && i2 > 0 && this.q == 0.0f && Math.abs(i2 - iArr[1]) > 0) {
            this.e.setVisibility(8);
        }
        int[] iArr2 = this.t;
        if (dispatchNestedPreScroll(i - iArr[0], i2 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr2[1] + iArr[1];
        }
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.r.a();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public void onStopNestedScroll(View view) {
        this.r.a(view);
        this.v = false;
        if (this.q > 0.0f) {
            c(this.q);
            this.q = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        dispatchNestedScroll(i, i2, i3, i4, this.u);
        if (this.u[1] + i4 < 0 && !b()) {
            this.q = Math.abs(r0) + this.q;
            b(this.q);
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.s.a(z);
    }

    @Override // android.view.View, android.support.v4.view.i
    public boolean isNestedScrollingEnabled() {
        return this.s.a();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.s.b(i);
    }

    @Override // android.view.View, android.support.v4.view.i
    public void stopNestedScroll() {
        this.s.c();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.s.b();
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.s.a(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.s.a(i, i2, iArr, iArr2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.s.a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.s.a(f, f2);
    }

    private boolean a(Animation animation) {
        return (animation == null || !animation.hasStarted() || animation.hasEnded()) ? false : true;
    }

    private void b(float f) {
        this.j.a(true);
        float fMin = Math.min(1.0f, Math.abs(f / this.p));
        float fMax = (((float) Math.max(((double) fMin) - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float fAbs = Math.abs(f) - this.p;
        float f2 = this.l ? this.i - this.h : this.i;
        float fMax2 = ((float) (((double) (Math.max(0.0f, Math.min(fAbs, f2 * 2.0f) / f2) / 4.0f)) - Math.pow(r3 / 4.0f, 2.0d))) * 2.0f;
        int i = ((int) ((f2 * fMin) + (f2 * fMax2 * 2.0f))) + this.h;
        if (this.e.getVisibility() != 0) {
            this.e.setVisibility(0);
        }
        if (!this.f1126d) {
            this.e.setScaleX(1.0f);
            this.e.setScaleY(1.0f);
        }
        if (this.f1126d) {
            setAnimationProgress(Math.min(1.0f, f / this.p));
        }
        if (f < this.p) {
            if (this.j.getAlpha() > 76 && !a(this.H)) {
                d();
            }
        } else if (this.j.getAlpha() < 255 && !a(this.I)) {
            e();
        }
        this.j.a(0.0f, Math.min(0.8f, fMax * 0.8f));
        this.j.b(Math.min(1.0f, fMax));
        this.j.c(((-0.25f) + (fMax * 0.4f) + (fMax2 * 2.0f)) * 0.5f);
        setTargetOffsetTopAndBottom(i - this.f1125c);
    }

    private void c(float f) {
        if (f > this.p) {
            a(true, true);
            return;
        }
        this.f1124b = false;
        this.j.a(0.0f, 0.0f);
        Animation.AnimationListener animationListener = null;
        if (!this.f1126d) {
            animationListener = new Animation.AnimationListener() { // from class: android.support.v4.widget.SwipeRefreshLayout.5
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    if (!SwipeRefreshLayout.this.f1126d) {
                        SwipeRefreshLayout.this.a((Animation.AnimationListener) null);
                    }
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }
            };
        }
        b(this.f1125c, animationListener);
        this.j.a(false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.B && actionMasked == 0) {
            this.B = false;
        }
        if (!isEnabled() || this.B || b() || this.f1124b || this.v) {
            return false;
        }
        switch (actionMasked) {
            case 0:
                this.A = motionEvent.getPointerId(0);
                this.z = false;
                return true;
            case 1:
                int iFindPointerIndex = motionEvent.findPointerIndex(this.A);
                if (iFindPointerIndex < 0) {
                    Log.e(m, "Got ACTION_UP event but don't have an active pointer id.");
                    return false;
                }
                if (this.z) {
                    float y = (motionEvent.getY(iFindPointerIndex) - this.x) * 0.5f;
                    this.z = false;
                    c(y);
                }
                this.A = -1;
                return false;
            case 2:
                int iFindPointerIndex2 = motionEvent.findPointerIndex(this.A);
                if (iFindPointerIndex2 < 0) {
                    Log.e(m, "Got ACTION_MOVE event but have an invalid active pointer id.");
                    return false;
                }
                float y2 = motionEvent.getY(iFindPointerIndex2);
                d(y2);
                if (this.z) {
                    float f = (y2 - this.x) * 0.5f;
                    if (f <= 0.0f) {
                        return false;
                    }
                    b(f);
                }
                return true;
            case 3:
                return false;
            case 4:
            default:
                return true;
            case 5:
                int actionIndex = motionEvent.getActionIndex();
                if (actionIndex < 0) {
                    Log.e(m, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                    return false;
                }
                this.A = motionEvent.getPointerId(actionIndex);
                return true;
            case 6:
                a(motionEvent);
                return true;
        }
    }

    private void d(float f) {
        if (f - this.y > this.o && !this.z) {
            this.x = this.y + this.o;
            this.z = true;
            this.j.setAlpha(76);
        }
    }

    private void a(int i, Animation.AnimationListener animationListener) {
        this.f = i;
        this.N.reset();
        this.N.setDuration(200L);
        this.N.setInterpolator(this.C);
        if (animationListener != null) {
            this.e.a(animationListener);
        }
        this.e.clearAnimation();
        this.e.startAnimation(this.N);
    }

    private void b(int i, Animation.AnimationListener animationListener) {
        if (this.f1126d) {
            c(i, animationListener);
            return;
        }
        this.f = i;
        this.O.reset();
        this.O.setDuration(200L);
        this.O.setInterpolator(this.C);
        if (animationListener != null) {
            this.e.a(animationListener);
        }
        this.e.clearAnimation();
        this.e.startAnimation(this.O);
    }

    void a(float f) {
        setTargetOffsetTopAndBottom((this.f + ((int) ((this.h - this.f) * f))) - this.e.getTop());
    }

    private void c(int i, Animation.AnimationListener animationListener) {
        this.f = i;
        this.g = this.e.getScaleX();
        this.J = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.8
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(SwipeRefreshLayout.this.g + ((-SwipeRefreshLayout.this.g) * f));
                SwipeRefreshLayout.this.a(f);
            }
        };
        this.J.setDuration(150L);
        if (animationListener != null) {
            this.e.a(animationListener);
        }
        this.e.clearAnimation();
        this.e.startAnimation(this.J);
    }

    void setTargetOffsetTopAndBottom(int i) {
        this.e.bringToFront();
        s.c(this.e, i);
        this.f1125c = this.e.getTop();
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.A) {
            this.A = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }
}
