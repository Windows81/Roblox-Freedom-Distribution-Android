package android.support.v4.view;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class ViewPager extends ViewGroup {
    private int A;
    private boolean B;
    private boolean C;
    private int D;
    private int E;
    private int F;
    private float G;
    private float H;
    private float I;
    private float J;
    private int K;
    private VelocityTracker L;
    private int M;
    private int N;
    private int O;
    private int P;
    private boolean Q;
    private EdgeEffect R;
    private EdgeEffect S;
    private boolean T;
    private boolean U;
    private boolean V;
    private int W;
    private List<f> aa;
    private f ab;
    private f ac;
    private List<e> ad;
    private g ae;
    private int af;
    private int ag;
    private ArrayList<View> ah;
    private final Runnable aj;
    private int ak;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    p f1039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1040c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1041d;
    private final ArrayList<b> g;
    private final b h;
    private final Rect i;
    private int j;
    private Parcelable k;
    private ClassLoader l;
    private Scroller m;
    private boolean n;
    private h o;
    private int p;
    private Drawable q;
    private int r;
    private int s;
    private float t;
    private float u;
    private int v;
    private int w;
    private boolean x;
    private boolean y;
    private boolean z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int[] f1038a = {R.attr.layout_gravity};
    private static final Comparator<b> e = new Comparator<b>() { // from class: android.support.v4.view.ViewPager.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(b bVar, b bVar2) {
            return bVar.f1049b - bVar2.f1049b;
        }
    };
    private static final Interpolator f = new Interpolator() { // from class: android.support.v4.view.ViewPager.2
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    };
    private static final i ai = new i();

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    public @interface a {
    }

    public interface e {
        void a(ViewPager viewPager, p pVar, p pVar2);
    }

    public interface f {
        void a(int i);

        void a(int i, float f, int i2);

        void b(int i);
    }

    public interface g {
        void a(View view, float f);
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object f1048a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1049b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f1050c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f1051d;
        float e;

        b() {
        }
    }

    public ViewPager(Context context) {
        super(context);
        this.g = new ArrayList<>();
        this.h = new b();
        this.i = new Rect();
        this.j = -1;
        this.k = null;
        this.l = null;
        this.t = -3.4028235E38f;
        this.u = Float.MAX_VALUE;
        this.A = 1;
        this.K = -1;
        this.T = true;
        this.U = false;
        this.aj = new Runnable() { // from class: android.support.v4.view.ViewPager.3
            @Override // java.lang.Runnable
            public void run() {
                ViewPager.this.setScrollState(0);
                ViewPager.this.c();
            }
        };
        this.ak = 0;
        a();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = new ArrayList<>();
        this.h = new b();
        this.i = new Rect();
        this.j = -1;
        this.k = null;
        this.l = null;
        this.t = -3.4028235E38f;
        this.u = Float.MAX_VALUE;
        this.A = 1;
        this.K = -1;
        this.T = true;
        this.U = false;
        this.aj = new Runnable() { // from class: android.support.v4.view.ViewPager.3
            @Override // java.lang.Runnable
            public void run() {
                ViewPager.this.setScrollState(0);
                ViewPager.this.c();
            }
        };
        this.ak = 0;
        a();
    }

    void a() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.m = new Scroller(context, f);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.F = viewConfiguration.getScaledPagingTouchSlop();
        this.M = (int) (400.0f * f2);
        this.N = viewConfiguration.getScaledMaximumFlingVelocity();
        this.R = new EdgeEffect(context);
        this.S = new EdgeEffect(context);
        this.O = (int) (25.0f * f2);
        this.P = (int) (2.0f * f2);
        this.D = (int) (16.0f * f2);
        s.a(this, new d());
        if (s.d(this) == 0) {
            s.a((View) this, 1);
        }
        s.a(this, new o() { // from class: android.support.v4.view.ViewPager.4

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Rect f1044b = new Rect();

            @Override // android.support.v4.view.o
            public aa a(View view, aa aaVar) {
                aa aaVarA = s.a(view, aaVar);
                if (!aaVarA.e()) {
                    Rect rect = this.f1044b;
                    rect.left = aaVarA.a();
                    rect.top = aaVarA.b();
                    rect.right = aaVarA.c();
                    rect.bottom = aaVarA.d();
                    int childCount = ViewPager.this.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        aa aaVarB = s.b(ViewPager.this.getChildAt(i2), aaVarA);
                        rect.left = Math.min(aaVarB.a(), rect.left);
                        rect.top = Math.min(aaVarB.b(), rect.top);
                        rect.right = Math.min(aaVarB.c(), rect.right);
                        rect.bottom = Math.min(aaVarB.d(), rect.bottom);
                    }
                    return aaVarA.a(rect.left, rect.top, rect.right, rect.bottom);
                }
                return aaVarA;
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.aj);
        if (this.m != null && !this.m.isFinished()) {
            this.m.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    void setScrollState(int i2) {
        if (this.ak != i2) {
            this.ak = i2;
            if (this.ae != null) {
                b(i2 != 0);
            }
            f(i2);
        }
    }

    public void setAdapter(p pVar) {
        if (this.f1039b != null) {
            this.f1039b.c((DataSetObserver) null);
            this.f1039b.a((ViewGroup) this);
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                b bVar = this.g.get(i2);
                this.f1039b.a((ViewGroup) this, bVar.f1049b, bVar.f1048a);
            }
            this.f1039b.b((ViewGroup) this);
            this.g.clear();
            f();
            this.f1040c = 0;
            scrollTo(0, 0);
        }
        p pVar2 = this.f1039b;
        this.f1039b = pVar;
        this.f1041d = 0;
        if (this.f1039b != null) {
            if (this.o == null) {
                this.o = new h();
            }
            this.f1039b.c(this.o);
            this.z = false;
            boolean z = this.T;
            this.T = true;
            this.f1041d = this.f1039b.b();
            if (this.j >= 0) {
                this.f1039b.a(this.k, this.l);
                a(this.j, false, true);
                this.j = -1;
                this.k = null;
                this.l = null;
            } else if (!z) {
                c();
            } else {
                requestLayout();
            }
        }
        if (this.ad != null && !this.ad.isEmpty()) {
            int size = this.ad.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.ad.get(i3).a(this, pVar2, pVar);
            }
        }
    }

    private void f() {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < getChildCount()) {
                if (!((c) getChildAt(i3).getLayoutParams()).f1052a) {
                    removeViewAt(i3);
                    i3--;
                }
                i2 = i3 + 1;
            } else {
                return;
            }
        }
    }

    public p getAdapter() {
        return this.f1039b;
    }

    public void a(e eVar) {
        if (this.ad == null) {
            this.ad = new ArrayList();
        }
        this.ad.add(eVar);
    }

    public void b(e eVar) {
        if (this.ad != null) {
            this.ad.remove(eVar);
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public void setCurrentItem(int i2) {
        this.z = false;
        a(i2, !this.T, false);
    }

    public void a(int i2, boolean z) {
        this.z = false;
        a(i2, z, false);
    }

    public int getCurrentItem() {
        return this.f1040c;
    }

    void a(int i2, boolean z, boolean z2) {
        a(i2, z, z2, 0);
    }

    void a(int i2, boolean z, boolean z2, int i3) {
        if (this.f1039b == null || this.f1039b.b() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!z2 && this.f1040c == i2 && this.g.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 >= this.f1039b.b()) {
            i2 = this.f1039b.b() - 1;
        }
        int i4 = this.A;
        if (i2 > this.f1040c + i4 || i2 < this.f1040c - i4) {
            for (int i5 = 0; i5 < this.g.size(); i5++) {
                this.g.get(i5).f1050c = true;
            }
        }
        boolean z3 = this.f1040c != i2;
        if (this.T) {
            this.f1040c = i2;
            if (z3) {
                e(i2);
            }
            requestLayout();
            return;
        }
        a(i2);
        a(i2, z, i3, z3);
    }

    private void a(int i2, boolean z, int i3, boolean z2) {
        int iMax;
        b bVarB = b(i2);
        if (bVarB != null) {
            iMax = (int) (Math.max(this.t, Math.min(bVarB.e, this.u)) * getClientWidth());
        } else {
            iMax = 0;
        }
        if (z) {
            a(iMax, 0, i3);
            if (z2) {
                e(i2);
                return;
            }
            return;
        }
        if (z2) {
            e(i2);
        }
        a(false);
        scrollTo(iMax, 0);
        d(iMax);
    }

    @Deprecated
    public void setOnPageChangeListener(f fVar) {
        this.ab = fVar;
    }

    public void a(f fVar) {
        if (this.aa == null) {
            this.aa = new ArrayList();
        }
        this.aa.add(fVar);
    }

    public void b(f fVar) {
        if (this.aa != null) {
            this.aa.remove(fVar);
        }
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i3) {
        if (this.ag == 2) {
            i3 = (i2 - 1) - i3;
        }
        return ((c) this.ah.get(i3).getLayoutParams()).f;
    }

    public int getOffscreenPageLimit() {
        return this.A;
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i2 + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.A) {
            this.A = i2;
            c();
        }
    }

    public void setPageMargin(int i2) {
        int i3 = this.p;
        this.p = i2;
        int width = getWidth();
        a(width, width, i2, i3);
        requestLayout();
    }

    public int getPageMargin() {
        return this.p;
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.q = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageMarginDrawable(int i2) {
        setPageMarginDrawable(android.support.v4.a.c.a(getContext(), i2));
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.q;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.q;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    float a(float f2) {
        return (float) Math.sin((f2 - 0.5f) * 0.47123894f);
    }

    void a(int i2, int i3, int i4) {
        int scrollX;
        int iAbs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if ((this.m == null || this.m.isFinished()) ? false : true) {
            int currX = this.n ? this.m.getCurrX() : this.m.getStartX();
            this.m.abortAnimation();
            setScrollingCacheEnabled(false);
            scrollX = currX;
        } else {
            scrollX = getScrollX();
        }
        int scrollY = getScrollY();
        int i5 = i2 - scrollX;
        int i6 = i3 - scrollY;
        if (i5 == 0 && i6 == 0) {
            a(false);
            c();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i7 = clientWidth / 2;
        float fA = (i7 * a(Math.min(1.0f, (Math.abs(i5) * 1.0f) / clientWidth))) + i7;
        int iAbs2 = Math.abs(i4);
        if (iAbs2 > 0) {
            iAbs = Math.round(1000.0f * Math.abs(fA / iAbs2)) * 4;
        } else {
            iAbs = (int) (((Math.abs(i5) / ((clientWidth * this.f1039b.c(this.f1040c)) + this.p)) + 1.0f) * 100.0f);
        }
        int iMin = Math.min(iAbs, 600);
        this.n = false;
        this.m.startScroll(scrollX, scrollY, i5, i6, iMin);
        s.c(this);
    }

    b a(int i2, int i3) {
        b bVar = new b();
        bVar.f1049b = i2;
        bVar.f1048a = this.f1039b.a((ViewGroup) this, i2);
        bVar.f1051d = this.f1039b.c(i2);
        if (i3 < 0 || i3 >= this.g.size()) {
            this.g.add(bVar);
        } else {
            this.g.add(i3, bVar);
        }
        return bVar;
    }

    void b() {
        int i2;
        boolean z;
        int iMax;
        boolean z2;
        int iB = this.f1039b.b();
        this.f1041d = iB;
        boolean z3 = this.g.size() < (this.A * 2) + 1 && this.g.size() < iB;
        boolean z4 = false;
        int i3 = this.f1040c;
        boolean z5 = z3;
        int i4 = 0;
        while (i4 < this.g.size()) {
            b bVar = this.g.get(i4);
            int iA = this.f1039b.a(bVar.f1048a);
            if (iA == -1) {
                i2 = i4;
                z = z4;
                iMax = i3;
                z2 = z5;
            } else if (iA == -2) {
                this.g.remove(i4);
                int i5 = i4 - 1;
                if (!z4) {
                    this.f1039b.a((ViewGroup) this);
                    z4 = true;
                }
                this.f1039b.a((ViewGroup) this, bVar.f1049b, bVar.f1048a);
                if (this.f1040c == bVar.f1049b) {
                    i2 = i5;
                    z = z4;
                    iMax = Math.max(0, Math.min(this.f1040c, iB - 1));
                    z2 = true;
                } else {
                    i2 = i5;
                    z = z4;
                    iMax = i3;
                    z2 = true;
                }
            } else if (bVar.f1049b != iA) {
                if (bVar.f1049b == this.f1040c) {
                    i3 = iA;
                }
                bVar.f1049b = iA;
                i2 = i4;
                z = z4;
                iMax = i3;
                z2 = true;
            } else {
                i2 = i4;
                z = z4;
                iMax = i3;
                z2 = z5;
            }
            z5 = z2;
            i3 = iMax;
            z4 = z;
            i4 = i2 + 1;
        }
        if (z4) {
            this.f1039b.b((ViewGroup) this);
        }
        Collections.sort(this.g, e);
        if (z5) {
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                c cVar = (c) getChildAt(i6).getLayoutParams();
                if (!cVar.f1052a) {
                    cVar.f1054c = 0.0f;
                }
            }
            a(i3, false, true);
            requestLayout();
        }
    }

    void c() {
        a(this.f1040c);
    }

    void a(int i2) {
        b bVar;
        String hexString;
        int i3;
        b bVar2;
        b bVarA;
        if (this.f1040c == i2) {
            bVar = null;
        } else {
            b bVarB = b(this.f1040c);
            this.f1040c = i2;
            bVar = bVarB;
        }
        if (this.f1039b == null) {
            g();
            return;
        }
        if (this.z) {
            g();
            return;
        }
        if (getWindowToken() != null) {
            this.f1039b.a((ViewGroup) this);
            int i4 = this.A;
            int iMax = Math.max(0, this.f1040c - i4);
            int iB = this.f1039b.b();
            int iMin = Math.min(iB - 1, i4 + this.f1040c);
            if (iB != this.f1041d) {
                try {
                    hexString = getResources().getResourceName(getId());
                } catch (Resources.NotFoundException e2) {
                    hexString = Integer.toHexString(getId());
                }
                throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.f1041d + ", found: " + iB + " Pager id: " + hexString + " Pager class: " + getClass() + " Problematic adapter: " + this.f1039b.getClass());
            }
            int i5 = 0;
            while (true) {
                i3 = i5;
                if (i3 >= this.g.size()) {
                    break;
                }
                bVar2 = this.g.get(i3);
                if (bVar2.f1049b < this.f1040c) {
                    i5 = i3 + 1;
                } else if (bVar2.f1049b != this.f1040c) {
                    break;
                }
            }
            bVar2 = null;
            b bVarA2 = (bVar2 != null || iB <= 0) ? bVar2 : a(this.f1040c, i3);
            if (bVarA2 != null) {
                int i6 = i3 - 1;
                b bVar3 = i6 >= 0 ? this.g.get(i6) : null;
                int clientWidth = getClientWidth();
                float paddingLeft = clientWidth <= 0 ? 0.0f : (2.0f - bVarA2.f1051d) + (getPaddingLeft() / clientWidth);
                float f2 = 0.0f;
                int i7 = i3;
                int i8 = i6;
                for (int i9 = this.f1040c - 1; i9 >= 0; i9--) {
                    if (f2 >= paddingLeft && i9 < iMax) {
                        if (bVar3 == null) {
                            break;
                        }
                        if (i9 == bVar3.f1049b && !bVar3.f1050c) {
                            this.g.remove(i8);
                            this.f1039b.a((ViewGroup) this, i9, bVar3.f1048a);
                            i8--;
                            i7--;
                            bVar3 = i8 >= 0 ? this.g.get(i8) : null;
                        }
                    } else if (bVar3 != null && i9 == bVar3.f1049b) {
                        f2 += bVar3.f1051d;
                        i8--;
                        bVar3 = i8 >= 0 ? this.g.get(i8) : null;
                    } else {
                        f2 += a(i9, i8 + 1).f1051d;
                        i7++;
                        bVar3 = i8 >= 0 ? this.g.get(i8) : null;
                    }
                }
                float f3 = bVarA2.f1051d;
                int i10 = i7 + 1;
                if (f3 < 2.0f) {
                    b bVar4 = i10 < this.g.size() ? this.g.get(i10) : null;
                    float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                    b bVar5 = bVar4;
                    int i11 = i10;
                    int i12 = this.f1040c + 1;
                    while (i12 < iB) {
                        if (f3 >= paddingRight && i12 > iMin) {
                            if (bVar5 == null) {
                                break;
                            }
                            if (i12 == bVar5.f1049b && !bVar5.f1050c) {
                                this.g.remove(i11);
                                this.f1039b.a((ViewGroup) this, i12, bVar5.f1048a);
                                bVar5 = i11 < this.g.size() ? this.g.get(i11) : null;
                            }
                        } else if (bVar5 != null && i12 == bVar5.f1049b) {
                            f3 += bVar5.f1051d;
                            i11++;
                            bVar5 = i11 < this.g.size() ? this.g.get(i11) : null;
                        } else {
                            b bVarA3 = a(i12, i11);
                            i11++;
                            f3 += bVarA3.f1051d;
                            bVar5 = i11 < this.g.size() ? this.g.get(i11) : null;
                        }
                        i12++;
                        bVar5 = bVar5;
                        f3 = f3;
                    }
                }
                a(bVarA2, i7, bVar);
            }
            this.f1039b.b((ViewGroup) this, this.f1040c, bVarA2 != null ? bVarA2.f1048a : null);
            this.f1039b.b((ViewGroup) this);
            int childCount = getChildCount();
            for (int i13 = 0; i13 < childCount; i13++) {
                View childAt = getChildAt(i13);
                c cVar = (c) childAt.getLayoutParams();
                cVar.f = i13;
                if (!cVar.f1052a && cVar.f1054c == 0.0f && (bVarA = a(childAt)) != null) {
                    cVar.f1054c = bVarA.f1051d;
                    cVar.e = bVarA.f1049b;
                }
            }
            g();
            if (hasFocus()) {
                View viewFindFocus = findFocus();
                b bVarB2 = viewFindFocus != null ? b(viewFindFocus) : null;
                if (bVarB2 == null || bVarB2.f1049b != this.f1040c) {
                    for (int i14 = 0; i14 < getChildCount(); i14++) {
                        View childAt2 = getChildAt(i14);
                        b bVarA4 = a(childAt2);
                        if (bVarA4 != null && bVarA4.f1049b == this.f1040c && childAt2.requestFocus(2)) {
                            return;
                        }
                    }
                }
            }
        }
    }

    private void g() {
        if (this.ag != 0) {
            if (this.ah == null) {
                this.ah = new ArrayList<>();
            } else {
                this.ah.clear();
            }
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                this.ah.add(getChildAt(i2));
            }
            Collections.sort(this.ah, ai);
        }
    }

    private void a(b bVar, int i2, b bVar2) {
        b bVar3;
        b bVar4;
        int iB = this.f1039b.b();
        int clientWidth = getClientWidth();
        float f2 = clientWidth > 0 ? this.p / clientWidth : 0.0f;
        if (bVar2 != null) {
            int i3 = bVar2.f1049b;
            if (i3 < bVar.f1049b) {
                float fC = bVar2.e + bVar2.f1051d + f2;
                int i4 = i3 + 1;
                int i5 = 0;
                while (i4 <= bVar.f1049b && i5 < this.g.size()) {
                    b bVar5 = this.g.get(i5);
                    while (true) {
                        bVar4 = bVar5;
                        if (i4 <= bVar4.f1049b || i5 >= this.g.size() - 1) {
                            break;
                        }
                        i5++;
                        bVar5 = this.g.get(i5);
                    }
                    while (i4 < bVar4.f1049b) {
                        fC += this.f1039b.c(i4) + f2;
                        i4++;
                    }
                    bVar4.e = fC;
                    fC += bVar4.f1051d + f2;
                    i4++;
                }
            } else if (i3 > bVar.f1049b) {
                int size = this.g.size() - 1;
                float fC2 = bVar2.e;
                int i6 = i3 - 1;
                while (i6 >= bVar.f1049b && size >= 0) {
                    b bVar6 = this.g.get(size);
                    while (true) {
                        bVar3 = bVar6;
                        if (i6 >= bVar3.f1049b || size <= 0) {
                            break;
                        }
                        size--;
                        bVar6 = this.g.get(size);
                    }
                    while (i6 > bVar3.f1049b) {
                        fC2 -= this.f1039b.c(i6) + f2;
                        i6--;
                    }
                    fC2 -= bVar3.f1051d + f2;
                    bVar3.e = fC2;
                    i6--;
                }
            }
        }
        int size2 = this.g.size();
        float f3 = bVar.e;
        int i7 = bVar.f1049b - 1;
        this.t = bVar.f1049b == 0 ? bVar.e : -3.4028235E38f;
        this.u = bVar.f1049b == iB + (-1) ? (bVar.e + bVar.f1051d) - 1.0f : Float.MAX_VALUE;
        for (int i8 = i2 - 1; i8 >= 0; i8--) {
            b bVar7 = this.g.get(i8);
            float fC3 = f3;
            while (i7 > bVar7.f1049b) {
                fC3 -= this.f1039b.c(i7) + f2;
                i7--;
            }
            f3 = fC3 - (bVar7.f1051d + f2);
            bVar7.e = f3;
            if (bVar7.f1049b == 0) {
                this.t = f3;
            }
            i7--;
        }
        float f4 = bVar.e + bVar.f1051d + f2;
        int i9 = bVar.f1049b + 1;
        for (int i10 = i2 + 1; i10 < size2; i10++) {
            b bVar8 = this.g.get(i10);
            float fC4 = f4;
            while (i9 < bVar8.f1049b) {
                fC4 = this.f1039b.c(i9) + f2 + fC4;
                i9++;
            }
            if (bVar8.f1049b == iB - 1) {
                this.u = (bVar8.f1051d + fC4) - 1.0f;
            }
            bVar8.e = fC4;
            f4 = fC4 + bVar8.f1051d + f2;
            i9++;
        }
        this.U = false;
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.v4.view.ViewPager.SavedState.1
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
        int f1045a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Parcelable f1046b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ClassLoader f1047c;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1045a);
            parcel.writeParcelable(this.f1046b, i);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f1045a + "}";
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f1045a = parcel.readInt();
            this.f1046b = parcel.readParcelable(classLoader);
            this.f1047c = classLoader;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1045a = this.f1040c;
        if (this.f1039b != null) {
            savedState.f1046b = this.f1039b.a();
        }
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (this.f1039b != null) {
            this.f1039b.a(savedState.f1046b, savedState.f1047c);
            a(savedState.f1045a, false, true);
        } else {
            this.j = savedState.f1045a;
            this.k = savedState.f1046b;
            this.l = savedState.f1047c;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        ViewGroup.LayoutParams layoutParamsGenerateLayoutParams = !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : layoutParams;
        c cVar = (c) layoutParamsGenerateLayoutParams;
        cVar.f1052a |= c(view);
        if (this.x) {
            if (cVar != null && cVar.f1052a) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            cVar.f1055d = true;
            addViewInLayout(view, i2, layoutParamsGenerateLayoutParams);
            return;
        }
        super.addView(view, i2, layoutParamsGenerateLayoutParams);
    }

    private static boolean c(View view) {
        return view.getClass().getAnnotation(a.class) != null;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.x) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    b a(View view) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.g.size()) {
                b bVar = this.g.get(i3);
                if (!this.f1039b.a(view, bVar.f1048a)) {
                    i2 = i3 + 1;
                } else {
                    return bVar;
                }
            } else {
                return null;
            }
        }
    }

    b b(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                return a(view);
            }
        }
        return null;
    }

    b b(int i2) {
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 < this.g.size()) {
                b bVar = this.g.get(i4);
                if (bVar.f1049b != i2) {
                    i3 = i4 + 1;
                } else {
                    return bVar;
                }
            } else {
                return null;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.T = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x010a A[PHI: r1
  0x010a: PHI (r1v18 int) = (r1v17 int), (r1v20 int) binds: [B:28:0x0088, B:30:0x008f] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instruction units count: 275
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            a(i2, i4, this.p, this.p);
        }
    }

    private void a(int i2, int i3, int i4, int i5) {
        if (i3 > 0 && !this.g.isEmpty()) {
            if (!this.m.isFinished()) {
                this.m.setFinalX(getCurrentItem() * getClientWidth());
                return;
            }
            scrollTo((int) ((((i2 - getPaddingLeft()) - getPaddingRight()) + i4) * (getScrollX() / (((i3 - getPaddingLeft()) - getPaddingRight()) + i5))), getScrollY());
            return;
        }
        b bVarB = b(this.f1040c);
        int iMin = (int) ((bVarB != null ? Math.min(bVarB.e, this.u) : 0.0f) * ((i2 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            a(false);
            scrollTo(iMin, getScrollY());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0141  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onLayout(boolean r18, int r19, int r20, int r21, int r22) {
        /*
            Method dump skipped, instruction units count: 356
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public void computeScroll() {
        this.n = true;
        if (!this.m.isFinished() && this.m.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.m.getCurrX();
            int currY = this.m.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
                if (!d(currX)) {
                    this.m.abortAnimation();
                    scrollTo(0, currY);
                }
            }
            s.c(this);
            return;
        }
        a(true);
    }

    private boolean d(int i2) {
        if (this.g.size() == 0) {
            if (this.T) {
                return false;
            }
            this.V = false;
            a(0, 0.0f, 0);
            if (this.V) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        b bVarI = i();
        int clientWidth = getClientWidth();
        int i3 = this.p + clientWidth;
        int i4 = bVarI.f1049b;
        float f2 = ((i2 / clientWidth) - bVarI.e) / (bVarI.f1051d + (this.p / clientWidth));
        this.V = false;
        a(i4, f2, (int) (i3 * f2));
        if (!this.V) {
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        return true;
    }

    protected void a(int i2, float f2, int i3) {
        int measuredWidth;
        int i4;
        int i5;
        if (this.W > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            int i6 = 0;
            while (i6 < childCount) {
                View childAt = getChildAt(i6);
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.f1052a) {
                    switch (cVar.f1053b & 7) {
                        case 1:
                            measuredWidth = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            int i7 = paddingRight;
                            i4 = paddingLeft;
                            i5 = i7;
                            break;
                        case 2:
                        case 4:
                        default:
                            measuredWidth = paddingLeft;
                            int i8 = paddingRight;
                            i4 = paddingLeft;
                            i5 = i8;
                            break;
                        case 3:
                            int width2 = childAt.getWidth() + paddingLeft;
                            int i9 = paddingLeft;
                            i5 = paddingRight;
                            i4 = width2;
                            measuredWidth = i9;
                            break;
                        case 5:
                            measuredWidth = (width - paddingRight) - childAt.getMeasuredWidth();
                            int measuredWidth2 = paddingRight + childAt.getMeasuredWidth();
                            i4 = paddingLeft;
                            i5 = measuredWidth2;
                            break;
                    }
                    int left = (measuredWidth + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                } else {
                    int i10 = paddingRight;
                    i4 = paddingLeft;
                    i5 = i10;
                }
                i6++;
                int i11 = i5;
                paddingLeft = i4;
                paddingRight = i11;
            }
        }
        b(i2, f2, i3);
        if (this.ae != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i12 = 0; i12 < childCount2; i12++) {
                View childAt2 = getChildAt(i12);
                if (!((c) childAt2.getLayoutParams()).f1052a) {
                    this.ae.a(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.V = true;
    }

    private void b(int i2, float f2, int i3) {
        if (this.ab != null) {
            this.ab.a(i2, f2, i3);
        }
        if (this.aa != null) {
            int size = this.aa.size();
            for (int i4 = 0; i4 < size; i4++) {
                f fVar = this.aa.get(i4);
                if (fVar != null) {
                    fVar.a(i2, f2, i3);
                }
            }
        }
        if (this.ac != null) {
            this.ac.a(i2, f2, i3);
        }
    }

    private void e(int i2) {
        if (this.ab != null) {
            this.ab.b(i2);
        }
        if (this.aa != null) {
            int size = this.aa.size();
            for (int i3 = 0; i3 < size; i3++) {
                f fVar = this.aa.get(i3);
                if (fVar != null) {
                    fVar.b(i2);
                }
            }
        }
        if (this.ac != null) {
            this.ac.b(i2);
        }
    }

    private void f(int i2) {
        if (this.ab != null) {
            this.ab.a(i2);
        }
        if (this.aa != null) {
            int size = this.aa.size();
            for (int i3 = 0; i3 < size; i3++) {
                f fVar = this.aa.get(i3);
                if (fVar != null) {
                    fVar.a(i2);
                }
            }
        }
        if (this.ac != null) {
            this.ac.a(i2);
        }
    }

    private void a(boolean z) {
        boolean z2 = this.ak == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.m.isFinished()) {
                this.m.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.m.getCurrX();
                int currY = this.m.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        d(currX);
                    }
                }
            }
        }
        this.z = false;
        boolean z3 = z2;
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            b bVar = this.g.get(i2);
            if (bVar.f1050c) {
                bVar.f1050c = false;
                z3 = true;
            }
        }
        if (z3) {
            if (z) {
                s.a(this, this.aj);
            } else {
                this.aj.run();
            }
        }
    }

    private boolean a(float f2, float f3) {
        return (f2 < ((float) this.E) && f3 > 0.0f) || (f2 > ((float) (getWidth() - this.E)) && f3 < 0.0f);
    }

    private void b(boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).setLayerType(z ? this.af : 0, null);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            h();
            return false;
        }
        if (action != 0) {
            if (this.B) {
                return true;
            }
            if (this.C) {
                return false;
            }
        }
        switch (action) {
            case 0:
                float x = motionEvent.getX();
                this.I = x;
                this.G = x;
                float y = motionEvent.getY();
                this.J = y;
                this.H = y;
                this.K = motionEvent.getPointerId(0);
                this.C = false;
                this.n = true;
                this.m.computeScrollOffset();
                if (this.ak == 2 && Math.abs(this.m.getFinalX() - this.m.getCurrX()) > this.P) {
                    this.m.abortAnimation();
                    this.z = false;
                    c();
                    this.B = true;
                    c(true);
                    setScrollState(1);
                } else {
                    a(false);
                    this.B = false;
                }
                break;
            case 2:
                int i2 = this.K;
                if (i2 != -1) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(i2);
                    float x2 = motionEvent.getX(iFindPointerIndex);
                    float f2 = x2 - this.G;
                    float fAbs = Math.abs(f2);
                    float y2 = motionEvent.getY(iFindPointerIndex);
                    float fAbs2 = Math.abs(y2 - this.J);
                    if (f2 != 0.0f && !a(this.G, f2) && a(this, false, (int) f2, (int) x2, (int) y2)) {
                        this.G = x2;
                        this.H = y2;
                        this.C = true;
                        return false;
                    }
                    if (fAbs > this.F && 0.5f * fAbs > fAbs2) {
                        this.B = true;
                        c(true);
                        setScrollState(1);
                        this.G = f2 > 0.0f ? this.I + this.F : this.I - this.F;
                        this.H = y2;
                        setScrollingCacheEnabled(true);
                    } else if (fAbs2 > this.F) {
                        this.C = true;
                    }
                    if (this.B && b(x2)) {
                        s.c(this);
                    }
                }
                break;
            case 6:
                a(motionEvent);
                break;
        }
        if (this.L == null) {
            this.L = VelocityTracker.obtain();
        }
        this.L.addMovement(motionEvent);
        return this.B;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00c4  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instruction units count: 368
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.onTouchEvent(android.view.MotionEvent):boolean");
    }

    private boolean h() {
        this.K = -1;
        j();
        this.R.onRelease();
        this.S.onRelease();
        return this.R.isFinished() || this.S.isFinished();
    }

    private void c(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private boolean b(float f2) {
        boolean z;
        float f3;
        boolean z2;
        boolean z3 = true;
        float f4 = this.G - f2;
        this.G = f2;
        float scrollX = getScrollX() + f4;
        int clientWidth = getClientWidth();
        float f5 = clientWidth * this.t;
        float f6 = clientWidth * this.u;
        b bVar = this.g.get(0);
        b bVar2 = this.g.get(this.g.size() - 1);
        if (bVar.f1049b != 0) {
            f5 = bVar.e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (bVar2.f1049b != this.f1039b.b() - 1) {
            f3 = bVar2.e * clientWidth;
            z2 = false;
        } else {
            f3 = f6;
            z2 = true;
        }
        if (scrollX < f5) {
            if (z) {
                this.R.onPull(Math.abs(f5 - scrollX) / clientWidth);
            } else {
                z3 = false;
            }
        } else if (scrollX > f3) {
            if (z2) {
                this.S.onPull(Math.abs(scrollX - f3) / clientWidth);
            } else {
                z3 = false;
            }
            f5 = f3;
        } else {
            f5 = scrollX;
            z3 = false;
        }
        this.G += f5 - ((int) f5);
        scrollTo((int) f5, getScrollY());
        d((int) f5);
        return z3;
    }

    private b i() {
        int i2;
        b bVar;
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f2 = clientWidth > 0 ? this.p / clientWidth : 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        int i3 = -1;
        int i4 = 0;
        boolean z = true;
        b bVar2 = null;
        while (i4 < this.g.size()) {
            b bVar3 = this.g.get(i4);
            if (z || bVar3.f1049b == i3 + 1) {
                i2 = i4;
                bVar = bVar3;
            } else {
                b bVar4 = this.h;
                bVar4.e = f3 + f4 + f2;
                bVar4.f1049b = i3 + 1;
                bVar4.f1051d = this.f1039b.c(bVar4.f1049b);
                i2 = i4 - 1;
                bVar = bVar4;
            }
            float f5 = bVar.e;
            float f6 = bVar.f1051d + f5 + f2;
            if (!z && scrollX < f5) {
                return bVar2;
            }
            if (scrollX < f6 || i2 == this.g.size() - 1) {
                return bVar;
            }
            f4 = f5;
            i3 = bVar.f1049b;
            z = false;
            f3 = bVar.f1051d;
            bVar2 = bVar;
            i4 = i2 + 1;
        }
        return bVar2;
    }

    private int a(int i2, float f2, int i3, int i4) {
        if (Math.abs(i4) > this.O && Math.abs(i3) > this.M) {
            if (i3 <= 0) {
                i2++;
            }
        } else {
            i2 += (int) ((i2 >= this.f1040c ? 0.4f : 0.6f) + f2);
        }
        if (this.g.size() > 0) {
            return Math.max(this.g.get(0).f1049b, Math.min(i2, this.g.get(this.g.size() - 1).f1049b));
        }
        return i2;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        boolean zDraw = false;
        int overScrollMode = getOverScrollMode();
        if (overScrollMode == 0 || (overScrollMode == 1 && this.f1039b != null && this.f1039b.b() > 1)) {
            if (!this.R.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.t * width);
                this.R.setSize(height, width);
                zDraw = false | this.R.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.S.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.u + 1.0f)) * width2);
                this.S.setSize(height2, width2);
                zDraw |= this.S.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.R.finish();
            this.S.finish();
        }
        if (zDraw) {
            s.c(this);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f2;
        super.onDraw(canvas);
        if (this.p > 0 && this.q != null && this.g.size() > 0 && this.f1039b != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            float f3 = this.p / width;
            b bVar = this.g.get(0);
            float f4 = bVar.e;
            int size = this.g.size();
            int i2 = bVar.f1049b;
            int i3 = this.g.get(size - 1).f1049b;
            int i4 = 0;
            for (int i5 = i2; i5 < i3; i5++) {
                while (i5 > bVar.f1049b && i4 < size) {
                    i4++;
                    bVar = this.g.get(i4);
                }
                if (i5 == bVar.f1049b) {
                    f2 = (bVar.e + bVar.f1051d) * width;
                    f4 = bVar.e + bVar.f1051d + f3;
                } else {
                    float fC = this.f1039b.c(i5);
                    f2 = (f4 + fC) * width;
                    f4 += fC + f3;
                }
                if (this.p + f2 > scrollX) {
                    this.q.setBounds(Math.round(f2), this.r, Math.round(this.p + f2), this.s);
                    this.q.draw(canvas);
                }
                if (f2 > scrollX + width) {
                    return;
                }
            }
        }
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.K) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.G = motionEvent.getX(i2);
            this.K = motionEvent.getPointerId(i2);
            if (this.L != null) {
                this.L.clear();
            }
        }
    }

    private void j() {
        this.B = false;
        this.C = false;
        if (this.L != null) {
            this.L.recycle();
            this.L = null;
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.y != z) {
            this.y = z;
        }
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i2) {
        if (this.f1039b == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i2 < 0) {
            return scrollX > ((int) (((float) clientWidth) * this.t));
        }
        if (i2 > 0) {
            return scrollX < ((int) (((float) clientWidth) * this.u));
        }
        return false;
    }

    protected boolean a(View view, boolean z, int i2, int i3, int i4) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i3 + scrollX >= childAt.getLeft() && i3 + scrollX < childAt.getRight() && i4 + scrollY >= childAt.getTop() && i4 + scrollY < childAt.getBottom() && a(childAt, true, i2, (i3 + scrollX) - childAt.getLeft(), (i4 + scrollY) - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || a(keyEvent);
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        switch (keyEvent.getKeyCode()) {
            case 21:
                if (!keyEvent.hasModifiers(2)) {
                }
                break;
            case 22:
                if (!keyEvent.hasModifiers(2)) {
                }
                break;
            case 61:
                if (!keyEvent.hasNoModifiers()) {
                    if (keyEvent.hasModifiers(1)) {
                    }
                }
                break;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean c(int r10) {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.c(int):boolean");
    }

    private Rect a(Rect rect, View view) {
        Rect rect2 = rect == null ? new Rect() : rect;
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        }
        rect2.left = view.getLeft();
        rect2.right = view.getRight();
        rect2.top = view.getTop();
        rect2.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect2.left += viewGroup.getLeft();
            rect2.right += viewGroup.getRight();
            rect2.top += viewGroup.getTop();
            rect2.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect2;
    }

    boolean d() {
        if (this.f1040c <= 0) {
            return false;
        }
        a(this.f1040c - 1, true);
        return true;
    }

    boolean e() {
        if (this.f1039b == null || this.f1040c >= this.f1039b.b() - 1) {
            return false;
        }
        a(this.f1040c + 1, true);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        b bVarA;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() == 0 && (bVarA = a(childAt)) != null && bVarA.f1049b == this.f1040c) {
                    childAt.addFocusables(arrayList, i2, i3);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i3 & 1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) && arrayList != null) {
                arrayList.add(this);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        b bVarA;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (bVarA = a(childAt)) != null && bVarA.f1049b == this.f1040c) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        b bVarA;
        int i4 = -1;
        int childCount = getChildCount();
        if ((i2 & 2) != 0) {
            i4 = 1;
            i3 = 0;
        } else {
            i3 = childCount - 1;
            childCount = -1;
        }
        while (i3 != childCount) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (bVarA = a(childAt)) != null && bVarA.f1049b == this.f1040c && childAt.requestFocus(i2, rect)) {
                return true;
            }
            i3 += i4;
        }
        return false;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        b bVarA;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (bVarA = a(childAt)) != null && bVarA.f1049b == this.f1040c && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new c();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof c) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    class d extends android.support.v4.view.a {
        d() {
        }

        @Override // android.support.v4.view.a
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(a());
            if (accessibilityEvent.getEventType() == 4096 && ViewPager.this.f1039b != null) {
                accessibilityEvent.setItemCount(ViewPager.this.f1039b.b());
                accessibilityEvent.setFromIndex(ViewPager.this.f1040c);
                accessibilityEvent.setToIndex(ViewPager.this.f1040c);
            }
        }

        @Override // android.support.v4.view.a
        public void onInitializeAccessibilityNodeInfo(View view, android.support.v4.view.a.b bVar) {
            super.onInitializeAccessibilityNodeInfo(view, bVar);
            bVar.a((CharSequence) ViewPager.class.getName());
            bVar.c(a());
            if (ViewPager.this.canScrollHorizontally(1)) {
                bVar.a(RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                bVar.a(8192);
            }
        }

        @Override // android.support.v4.view.a
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            switch (i) {
                case RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT /* 4096 */:
                    if (!ViewPager.this.canScrollHorizontally(1)) {
                        return false;
                    }
                    ViewPager.this.setCurrentItem(ViewPager.this.f1040c + 1);
                    return true;
                case 8192:
                    if (!ViewPager.this.canScrollHorizontally(-1)) {
                        return false;
                    }
                    ViewPager.this.setCurrentItem(ViewPager.this.f1040c - 1);
                    return true;
                default:
                    return false;
            }
        }

        private boolean a() {
            return ViewPager.this.f1039b != null && ViewPager.this.f1039b.b() > 1;
        }
    }

    private class h extends DataSetObserver {
        h() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.b();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.b();
        }
    }

    public static class c extends ViewGroup.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1052a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1053b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f1054c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1055d;
        int e;
        int f;

        public c() {
            super(-1, -1);
            this.f1054c = 0.0f;
        }

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1054c = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f1038a);
            this.f1053b = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    static class i implements Comparator<View> {
        i() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            c cVar = (c) view.getLayoutParams();
            c cVar2 = (c) view2.getLayoutParams();
            if (cVar.f1052a != cVar2.f1052a) {
                return cVar.f1052a ? 1 : -1;
            }
            return cVar.e - cVar2.e;
        }
    }
}
