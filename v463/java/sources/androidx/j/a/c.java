package androidx.j.a;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
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
import androidx.core.h.i;
import androidx.core.h.k;
import androidx.core.h.l;
import androidx.core.h.n;
import androidx.core.h.r;
import androidx.core.widget.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends ViewGroup implements i, l {
    private boolean A;
    private int B;
    private boolean C;
    private final DecelerateInterpolator D;
    private int F;
    private Animation G;
    private Animation H;
    private Animation I;
    private Animation J;
    private Animation K;
    private int L;
    private a M;
    private Animation.AnimationListener N;
    private final Animation O;
    private final Animation P;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f1907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f1908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1909c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f1910d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    androidx.j.a.a f1911e;
    protected int f;
    float g;
    protected int h;
    int i;
    int j;
    androidx.j.a.b k;
    boolean l;
    boolean m;
    private View o;
    private int p;
    private float q;
    private float r;
    private final n s;
    private final k t;
    private final int[] u;
    private final int[] v;
    private boolean w;
    private int x;
    private float y;
    private float z;
    private static final String n = c.class.getSimpleName();
    private static final int[] E = {R.attr.enabled};

    public interface a {
        boolean a(c cVar, View view);
    }

    public interface b {
        void g_();
    }

    void a() {
        this.f1911e.clearAnimation();
        this.k.stop();
        this.f1911e.setVisibility(8);
        setColorViewAlpha(255);
        if (this.f1910d) {
            setAnimationProgress(0.0f);
        } else {
            setTargetOffsetTopAndBottom(this.h - this.f1909c);
        }
        this.f1909c = this.f1911e.getTop();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            return;
        }
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    private void setColorViewAlpha(int i) {
        this.f1911e.getBackground().setAlpha(i);
        this.k.setAlpha(i);
    }

    public int getProgressViewStartOffset() {
        return this.h;
    }

    public int getProgressViewEndOffset() {
        return this.i;
    }

    public void setSlingshotDistance(int i) {
        this.j = i;
    }

    public void setSize(int i) {
        if (i == 0 || i == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i == 0) {
                this.L = (int) (displayMetrics.density * 56.0f);
            } else {
                this.L = (int) (displayMetrics.density * 40.0f);
            }
            this.f1911e.setImageDrawable(null);
            this.k.a(i);
            this.f1911e.setImageDrawable(this.k);
        }
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1908b = false;
        this.q = -1.0f;
        this.u = new int[2];
        this.v = new int[2];
        this.B = -1;
        this.F = -1;
        this.N = new Animation.AnimationListener() { // from class: androidx.j.a.c.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (c.this.f1908b) {
                    c.this.k.setAlpha(255);
                    c.this.k.start();
                    if (c.this.l && c.this.f1907a != null) {
                        c.this.f1907a.g_();
                    }
                    c cVar = c.this;
                    cVar.f1909c = cVar.f1911e.getTop();
                    return;
                }
                c.this.a();
            }
        };
        this.O = new Animation() { // from class: androidx.j.a.c.6
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                int iAbs;
                if (!c.this.m) {
                    iAbs = c.this.i - Math.abs(c.this.h);
                } else {
                    iAbs = c.this.i;
                }
                c.this.setTargetOffsetTopAndBottom((c.this.f + ((int) ((iAbs - c.this.f) * f))) - c.this.f1911e.getTop());
                c.this.k.b(1.0f - f);
            }
        };
        this.P = new Animation() { // from class: androidx.j.a.c.7
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                c.this.a(f);
            }
        };
        this.p = ViewConfiguration.get(context).getScaledTouchSlop();
        this.x = getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.D = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.L = (int) (displayMetrics.density * 40.0f);
        c();
        setChildrenDrawingOrderEnabled(true);
        int i = (int) (displayMetrics.density * 64.0f);
        this.i = i;
        this.q = i;
        this.s = new n(this);
        this.t = new k(this);
        setNestedScrollingEnabled(true);
        int i2 = -this.L;
        this.f1909c = i2;
        this.h = i2;
        a(1.0f);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, E);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(0, true));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3 = this.F;
        return i3 < 0 ? i2 : i2 == i + (-1) ? i3 : i2 >= i3 ? i2 + 1 : i2;
    }

    private void c() {
        this.f1911e = new androidx.j.a.a(getContext(), -328966);
        androidx.j.a.b bVar = new androidx.j.a.b(getContext());
        this.k = bVar;
        bVar.a(1);
        this.f1911e.setImageDrawable(this.k);
        this.f1911e.setVisibility(8);
        addView(this.f1911e);
    }

    public void setOnRefreshListener(b bVar) {
        this.f1907a = bVar;
    }

    public void setRefreshing(boolean z) {
        int i;
        if (z && this.f1908b != z) {
            this.f1908b = z;
            if (!this.m) {
                i = this.i + this.h;
            } else {
                i = this.i;
            }
            setTargetOffsetTopAndBottom(i - this.f1909c);
            this.l = false;
            b(this.N);
            return;
        }
        a(z, false);
    }

    private void b(Animation.AnimationListener animationListener) {
        this.f1911e.setVisibility(0);
        this.k.setAlpha(255);
        Animation animation = new Animation() { // from class: androidx.j.a.c.2
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                c.this.setAnimationProgress(f);
            }
        };
        this.G = animation;
        animation.setDuration(this.x);
        if (animationListener != null) {
            this.f1911e.a(animationListener);
        }
        this.f1911e.clearAnimation();
        this.f1911e.startAnimation(this.G);
    }

    void setAnimationProgress(float f) {
        this.f1911e.setScaleX(f);
        this.f1911e.setScaleY(f);
    }

    private void a(boolean z, boolean z2) {
        if (this.f1908b != z) {
            this.l = z2;
            f();
            this.f1908b = z;
            if (z) {
                a(this.f1909c, this.N);
            } else {
                a(this.N);
            }
        }
    }

    void a(Animation.AnimationListener animationListener) {
        Animation animation = new Animation() { // from class: androidx.j.a.c.3
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                c.this.setAnimationProgress(1.0f - f);
            }
        };
        this.H = animation;
        animation.setDuration(150L);
        this.f1911e.a(animationListener);
        this.f1911e.clearAnimation();
        this.f1911e.startAnimation(this.H);
    }

    private void d() {
        this.I = a(this.k.getAlpha(), 76);
    }

    private void e() {
        this.J = a(this.k.getAlpha(), 255);
    }

    private Animation a(final int i, final int i2) {
        Animation animation = new Animation() { // from class: androidx.j.a.c.4
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                c.this.k.setAlpha((int) (i + ((i2 - r0) * f)));
            }
        };
        animation.setDuration(300L);
        this.f1911e.a(null);
        this.f1911e.clearAnimation();
        this.f1911e.startAnimation(animation);
        return animation;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i) {
        setProgressBackgroundColorSchemeResource(i);
    }

    public void setProgressBackgroundColorSchemeResource(int i) {
        setProgressBackgroundColorSchemeColor(androidx.core.a.b.c(getContext(), i));
    }

    public void setProgressBackgroundColorSchemeColor(int i) {
        this.f1911e.setBackgroundColor(i);
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeResources(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = androidx.core.a.b.c(context, iArr[i]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setColorSchemeColors(int... iArr) {
        f();
        this.k.a(iArr);
    }

    private void f() {
        if (this.o == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.f1911e)) {
                    this.o = childAt;
                    return;
                }
            }
        }
    }

    public void setDistanceToTriggerSync(int i) {
        this.q = i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.o == null) {
            f();
        }
        View view = this.o;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.f1911e.getMeasuredWidth();
        int measuredHeight2 = this.f1911e.getMeasuredHeight();
        int i5 = measuredWidth / 2;
        int i6 = measuredWidth2 / 2;
        int i7 = this.f1909c;
        this.f1911e.layout(i5 - i6, i7, i5 + i6, measuredHeight2 + i7);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.o == null) {
            f();
        }
        View view = this.o;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.f1911e.measure(View.MeasureSpec.makeMeasureSpec(this.L, 1073741824), View.MeasureSpec.makeMeasureSpec(this.L, 1073741824));
        this.F = -1;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            if (getChildAt(i3) == this.f1911e) {
                this.F = i3;
                return;
            }
        }
    }

    public int getProgressCircleDiameter() {
        return this.L;
    }

    public boolean b() {
        a aVar = this.M;
        if (aVar != null) {
            return aVar.a(this, this.o);
        }
        View view = this.o;
        if (view instanceof ListView) {
            return g.b((ListView) view, -1);
        }
        return view.canScrollVertically(-1);
    }

    public void setOnChildScrollUpCallback(a aVar) {
        this.M = aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0058  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            r4.f()
            int r0 = r5.getActionMasked()
            boolean r1 = r4.C
            r2 = 0
            if (r1 == 0) goto L10
            if (r0 != 0) goto L10
            r4.C = r2
        L10:
            boolean r1 = r4.isEnabled()
            if (r1 == 0) goto L81
            boolean r1 = r4.C
            if (r1 != 0) goto L81
            boolean r1 = r4.b()
            if (r1 != 0) goto L81
            boolean r1 = r4.f1908b
            if (r1 != 0) goto L81
            boolean r1 = r4.w
            if (r1 == 0) goto L29
            goto L81
        L29:
            if (r0 == 0) goto L5d
            r1 = 1
            r3 = -1
            if (r0 == r1) goto L58
            r1 = 2
            if (r0 == r1) goto L3d
            r1 = 3
            if (r0 == r1) goto L58
            r1 = 6
            if (r0 == r1) goto L39
            goto L7e
        L39:
            r4.a(r5)
            goto L7e
        L3d:
            int r0 = r4.B
            if (r0 != r3) goto L49
            java.lang.String r5 = androidx.j.a.c.n
            java.lang.String r0 = "Got ACTION_MOVE event but don't have an active pointer id."
            android.util.Log.e(r5, r0)
            return r2
        L49:
            int r0 = r5.findPointerIndex(r0)
            if (r0 >= 0) goto L50
            return r2
        L50:
            float r5 = r5.getY(r0)
            r4.d(r5)
            goto L7e
        L58:
            r4.A = r2
            r4.B = r3
            goto L7e
        L5d:
            int r0 = r4.h
            androidx.j.a.a r1 = r4.f1911e
            int r1 = r1.getTop()
            int r0 = r0 - r1
            r4.setTargetOffsetTopAndBottom(r0)
            int r0 = r5.getPointerId(r2)
            r4.B = r0
            r4.A = r2
            int r0 = r5.findPointerIndex(r0)
            if (r0 >= 0) goto L78
            return r2
        L78:
            float r5 = r5.getY(r0)
            r4.z = r5
        L7e:
            boolean r5 = r4.A
            return r5
        L81:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.j.a.c.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (Build.VERSION.SDK_INT >= 21 || !(this.o instanceof AbsListView)) {
            View view = this.o;
            if (view == null || r.u(view)) {
                super.requestDisallowInterceptTouchEvent(z);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.h.l
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return (!isEnabled() || this.C || this.f1908b || (i & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.h.l
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.s.a(view, view2, i);
        startNestedScroll(i & 2);
        this.r = 0.0f;
        this.w = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.h.l
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0) {
            float f = this.r;
            if (f > 0.0f) {
                float f2 = i2;
                if (f2 > f) {
                    iArr[1] = i2 - ((int) f);
                    this.r = 0.0f;
                } else {
                    this.r = f - f2;
                    iArr[1] = i2;
                }
                b(this.r);
            }
        }
        if (this.m && i2 > 0 && this.r == 0.0f && Math.abs(i2 - iArr[1]) > 0) {
            this.f1911e.setVisibility(8);
        }
        int[] iArr2 = this.u;
        if (dispatchNestedPreScroll(i - iArr[0], i2 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.s.a();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.h.l
    public void onStopNestedScroll(View view) {
        this.s.a(view);
        this.w = false;
        float f = this.r;
        if (f > 0.0f) {
            c(f);
            this.r = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.h.l
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        dispatchNestedScroll(i, i2, i3, i4, this.v);
        if (i4 + this.v[1] >= 0 || b()) {
            return;
        }
        float fAbs = this.r + Math.abs(r11);
        this.r = fAbs;
        b(fAbs);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.t.a(z);
    }

    @Override // android.view.View, androidx.core.h.i
    public boolean isNestedScrollingEnabled() {
        return this.t.a();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.t.b(i);
    }

    @Override // android.view.View, androidx.core.h.i
    public void stopNestedScroll() {
        this.t.c();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.t.b();
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.t.a(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.t.a(i, i2, iArr, iArr2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.h.l
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.h.l
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.t.a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.t.a(f, f2);
    }

    private boolean a(Animation animation) {
        return (animation == null || !animation.hasStarted() || animation.hasEnded()) ? false : true;
    }

    private void b(float f) {
        this.k.a(true);
        float fMin = Math.min(1.0f, Math.abs(f / this.q));
        double d2 = fMin;
        Double.isNaN(d2);
        float fMax = (((float) Math.max(d2 - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float fAbs = Math.abs(f) - this.q;
        int i = this.j;
        if (i <= 0) {
            i = this.m ? this.i - this.h : this.i;
        }
        float f2 = i;
        double dMax = Math.max(0.0f, Math.min(fAbs, f2 * 2.0f) / f2) / 4.0f;
        double dPow = Math.pow(dMax, 2.0d);
        Double.isNaN(dMax);
        float f3 = ((float) (dMax - dPow)) * 2.0f;
        int i2 = this.h + ((int) ((f2 * fMin) + (f2 * f3 * 2.0f)));
        if (this.f1911e.getVisibility() != 0) {
            this.f1911e.setVisibility(0);
        }
        if (!this.f1910d) {
            this.f1911e.setScaleX(1.0f);
            this.f1911e.setScaleY(1.0f);
        }
        if (this.f1910d) {
            setAnimationProgress(Math.min(1.0f, f / this.q));
        }
        if (f < this.q) {
            if (this.k.getAlpha() > 76 && !a(this.I)) {
                d();
            }
        } else if (this.k.getAlpha() < 255 && !a(this.J)) {
            e();
        }
        this.k.a(0.0f, Math.min(0.8f, fMax * 0.8f));
        this.k.b(Math.min(1.0f, fMax));
        this.k.c((((fMax * 0.4f) - 0.25f) + (f3 * 2.0f)) * 0.5f);
        setTargetOffsetTopAndBottom(i2 - this.f1909c);
    }

    private void c(float f) {
        if (f > this.q) {
            a(true, true);
            return;
        }
        this.f1908b = false;
        this.k.a(0.0f, 0.0f);
        b(this.f1909c, this.f1910d ? null : new Animation.AnimationListener() { // from class: androidx.j.a.c.5
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (c.this.f1910d) {
                    return;
                }
                c.this.a((Animation.AnimationListener) null);
            }
        });
        this.k.a(false);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.C && actionMasked == 0) {
            this.C = false;
        }
        if (!isEnabled() || this.C || b() || this.f1908b || this.w) {
            return false;
        }
        if (actionMasked == 0) {
            this.B = motionEvent.getPointerId(0);
            this.A = false;
        } else {
            if (actionMasked == 1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.B);
                if (iFindPointerIndex < 0) {
                    Log.e(n, "Got ACTION_UP event but don't have an active pointer id.");
                    return false;
                }
                if (this.A) {
                    float y = (motionEvent.getY(iFindPointerIndex) - this.y) * 0.5f;
                    this.A = false;
                    c(y);
                }
                this.B = -1;
                return false;
            }
            if (actionMasked == 2) {
                int iFindPointerIndex2 = motionEvent.findPointerIndex(this.B);
                if (iFindPointerIndex2 < 0) {
                    Log.e(n, "Got ACTION_MOVE event but have an invalid active pointer id.");
                    return false;
                }
                float y2 = motionEvent.getY(iFindPointerIndex2);
                d(y2);
                if (this.A) {
                    float f = (y2 - this.y) * 0.5f;
                    if (f <= 0.0f) {
                        return false;
                    }
                    b(f);
                }
            } else {
                if (actionMasked == 3) {
                    return false;
                }
                if (actionMasked == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    if (actionIndex < 0) {
                        Log.e(n, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                        return false;
                    }
                    this.B = motionEvent.getPointerId(actionIndex);
                } else if (actionMasked == 6) {
                    a(motionEvent);
                }
            }
        }
        return true;
    }

    private void d(float f) {
        float f2 = this.z;
        float f3 = f - f2;
        int i = this.p;
        if (f3 <= i || this.A) {
            return;
        }
        this.y = f2 + i;
        this.A = true;
        this.k.setAlpha(76);
    }

    private void a(int i, Animation.AnimationListener animationListener) {
        this.f = i;
        this.O.reset();
        this.O.setDuration(200L);
        this.O.setInterpolator(this.D);
        if (animationListener != null) {
            this.f1911e.a(animationListener);
        }
        this.f1911e.clearAnimation();
        this.f1911e.startAnimation(this.O);
    }

    private void b(int i, Animation.AnimationListener animationListener) {
        if (this.f1910d) {
            c(i, animationListener);
            return;
        }
        this.f = i;
        this.P.reset();
        this.P.setDuration(200L);
        this.P.setInterpolator(this.D);
        if (animationListener != null) {
            this.f1911e.a(animationListener);
        }
        this.f1911e.clearAnimation();
        this.f1911e.startAnimation(this.P);
    }

    void a(float f) {
        setTargetOffsetTopAndBottom((this.f + ((int) ((this.h - r0) * f))) - this.f1911e.getTop());
    }

    private void c(int i, Animation.AnimationListener animationListener) {
        this.f = i;
        this.g = this.f1911e.getScaleX();
        Animation animation = new Animation() { // from class: androidx.j.a.c.8
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                c.this.setAnimationProgress(c.this.g + ((-c.this.g) * f));
                c.this.a(f);
            }
        };
        this.K = animation;
        animation.setDuration(150L);
        if (animationListener != null) {
            this.f1911e.a(animationListener);
        }
        this.f1911e.clearAnimation();
        this.f1911e.startAnimation(this.K);
    }

    void setTargetOffsetTopAndBottom(int i) {
        this.f1911e.bringToFront();
        r.d(this.f1911e, i);
        this.f1909c = this.f1911e.getTop();
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.B) {
            this.B = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }
}
