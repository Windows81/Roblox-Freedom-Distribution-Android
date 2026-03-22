package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.core.h.o;
import androidx.core.h.r;
import androidx.core.h.z;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
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
    androidx.viewpager.widget.a f2410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f2411c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2412d;
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
    static final int[] f2408a = {R.attr.layout_gravity};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Comparator<b> f2409e = new Comparator<b>() { // from class: androidx.viewpager.widget.ViewPager.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(b bVar, b bVar2) {
            return bVar.f2420b - bVar2.f2420b;
        }
    };
    private static final Interpolator f = new Interpolator() { // from class: androidx.viewpager.widget.ViewPager.2
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
        void a(ViewPager viewPager, androidx.viewpager.widget.a aVar, androidx.viewpager.widget.a aVar2);
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
        Object f2419a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2420b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f2421c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f2422d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f2423e;

        b() {
        }
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
        this.aj = new Runnable() { // from class: androidx.viewpager.widget.ViewPager.3
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
        this.D = (int) (f2 * 16.0f);
        r.a(this, new d());
        if (r.e(this) == 0) {
            r.b(this, 1);
        }
        r.a(this, new o() { // from class: androidx.viewpager.widget.ViewPager.4

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Rect f2415b = new Rect();

            @Override // androidx.core.h.o
            public z a(View view, z zVar) {
                z zVarA = r.a(view, zVar);
                if (zVarA.e()) {
                    return zVarA;
                }
                Rect rect = this.f2415b;
                rect.left = zVarA.a();
                rect.top = zVarA.b();
                rect.right = zVarA.c();
                rect.bottom = zVarA.d();
                int childCount = ViewPager.this.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    z zVarB = r.b(ViewPager.this.getChildAt(i2), zVarA);
                    rect.left = Math.min(zVarB.a(), rect.left);
                    rect.top = Math.min(zVarB.b(), rect.top);
                    rect.right = Math.min(zVarB.c(), rect.right);
                    rect.bottom = Math.min(zVarB.d(), rect.bottom);
                }
                return zVarA.a(rect.left, rect.top, rect.right, rect.bottom);
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.aj);
        Scroller scroller = this.m;
        if (scroller != null && !scroller.isFinished()) {
            this.m.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    void setScrollState(int i2) {
        if (this.ak == i2) {
            return;
        }
        this.ak = i2;
        if (this.ae != null) {
            b(i2 != 0);
        }
        f(i2);
    }

    public void setAdapter(androidx.viewpager.widget.a aVar) {
        androidx.viewpager.widget.a aVar2 = this.f2410b;
        if (aVar2 != null) {
            aVar2.c((DataSetObserver) null);
            this.f2410b.a((ViewGroup) this);
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                b bVar = this.g.get(i2);
                this.f2410b.a((ViewGroup) this, bVar.f2420b, bVar.f2419a);
            }
            this.f2410b.b((ViewGroup) this);
            this.g.clear();
            f();
            this.f2411c = 0;
            scrollTo(0, 0);
        }
        androidx.viewpager.widget.a aVar3 = this.f2410b;
        this.f2410b = aVar;
        this.f2412d = 0;
        if (aVar != null) {
            if (this.o == null) {
                this.o = new h();
            }
            this.f2410b.c(this.o);
            this.z = false;
            boolean z = this.T;
            this.T = true;
            this.f2412d = this.f2410b.b();
            if (this.j >= 0) {
                this.f2410b.a(this.k, this.l);
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
        List<e> list = this.ad;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.ad.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.ad.get(i3).a(this, aVar3, aVar);
        }
    }

    private void f() {
        int i2 = 0;
        while (i2 < getChildCount()) {
            if (!((c) getChildAt(i2).getLayoutParams()).f2424a) {
                removeViewAt(i2);
                i2--;
            }
            i2++;
        }
    }

    public androidx.viewpager.widget.a getAdapter() {
        return this.f2410b;
    }

    public void a(e eVar) {
        if (this.ad == null) {
            this.ad = new ArrayList();
        }
        this.ad.add(eVar);
    }

    public void b(e eVar) {
        List<e> list = this.ad;
        if (list != null) {
            list.remove(eVar);
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
        return this.f2411c;
    }

    void a(int i2, boolean z, boolean z2) {
        a(i2, z, z2, 0);
    }

    void a(int i2, boolean z, boolean z2, int i3) {
        androidx.viewpager.widget.a aVar = this.f2410b;
        if (aVar == null || aVar.b() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!z2 && this.f2411c == i2 && this.g.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 >= this.f2410b.b()) {
            i2 = this.f2410b.b() - 1;
        }
        int i4 = this.A;
        int i5 = this.f2411c;
        if (i2 > i5 + i4 || i2 < i5 - i4) {
            for (int i6 = 0; i6 < this.g.size(); i6++) {
                this.g.get(i6).f2421c = true;
            }
        }
        boolean z3 = this.f2411c != i2;
        if (this.T) {
            this.f2411c = i2;
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
        b bVarB = b(i2);
        int clientWidth = bVarB != null ? (int) (getClientWidth() * Math.max(this.t, Math.min(bVarB.f2423e, this.u))) : 0;
        if (z) {
            a(clientWidth, 0, i3);
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
        scrollTo(clientWidth, 0);
        d(clientWidth);
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
        List<f> list = this.aa;
        if (list != null) {
            list.remove(fVar);
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
        setPageMarginDrawable(androidx.core.a.b.a(getContext(), i2));
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.q;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.q;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
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
        Scroller scroller = this.m;
        if ((scroller == null || scroller.isFinished()) ? false : true) {
            scrollX = this.n ? this.m.getCurrX() : this.m.getStartX();
            this.m.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int i5 = scrollX;
        int scrollY = getScrollY();
        int i6 = i2 - i5;
        int i7 = i3 - scrollY;
        if (i6 == 0 && i7 == 0) {
            a(false);
            c();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i8 = clientWidth / 2;
        float f2 = clientWidth;
        float f3 = i8;
        float fA = f3 + (a(Math.min(1.0f, (Math.abs(i6) * 1.0f) / f2)) * f3);
        int iAbs2 = Math.abs(i4);
        if (iAbs2 > 0) {
            iAbs = Math.round(Math.abs(fA / iAbs2) * 1000.0f) * 4;
        } else {
            iAbs = (int) (((Math.abs(i6) / ((f2 * this.f2410b.c(this.f2411c)) + this.p)) + 1.0f) * 100.0f);
        }
        int iMin = Math.min(iAbs, 600);
        this.n = false;
        this.m.startScroll(i5, scrollY, i6, i7, iMin);
        r.d(this);
    }

    b a(int i2, int i3) {
        b bVar = new b();
        bVar.f2420b = i2;
        bVar.f2419a = this.f2410b.a((ViewGroup) this, i2);
        bVar.f2422d = this.f2410b.c(i2);
        if (i3 < 0 || i3 >= this.g.size()) {
            this.g.add(bVar);
        } else {
            this.g.add(i3, bVar);
        }
        return bVar;
    }

    void b() {
        int iB = this.f2410b.b();
        this.f2412d = iB;
        boolean z = this.g.size() < (this.A * 2) + 1 && this.g.size() < iB;
        int iMax = this.f2411c;
        int i2 = 0;
        boolean z2 = false;
        while (i2 < this.g.size()) {
            b bVar = this.g.get(i2);
            int iA = this.f2410b.a(bVar.f2419a);
            if (iA != -1) {
                if (iA == -2) {
                    this.g.remove(i2);
                    i2--;
                    if (!z2) {
                        this.f2410b.a((ViewGroup) this);
                        z2 = true;
                    }
                    this.f2410b.a((ViewGroup) this, bVar.f2420b, bVar.f2419a);
                    if (this.f2411c == bVar.f2420b) {
                        iMax = Math.max(0, Math.min(this.f2411c, iB - 1));
                    }
                } else if (bVar.f2420b != iA) {
                    if (bVar.f2420b == this.f2411c) {
                        iMax = iA;
                    }
                    bVar.f2420b = iA;
                }
                z = true;
            }
            i2++;
        }
        if (z2) {
            this.f2410b.b((ViewGroup) this);
        }
        Collections.sort(this.g, f2409e);
        if (z) {
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                c cVar = (c) getChildAt(i3).getLayoutParams();
                if (!cVar.f2424a) {
                    cVar.f2426c = 0.0f;
                }
            }
            a(iMax, false, true);
            requestLayout();
        }
    }

    void c() {
        a(this.f2411c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006a, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00fb A[PHI: r7 r10 r15
  0x00fb: PHI (r7v6 int) = (r7v5 int), (r7v4 int), (r7v9 int) binds: [B:63:0x00f0, B:60:0x00da, B:54:0x00c4] A[DONT_GENERATE, DONT_INLINE]
  0x00fb: PHI (r10v9 int) = (r10v1 int), (r10v8 int), (r10v12 int) binds: [B:63:0x00f0, B:60:0x00da, B:54:0x00c4] A[DONT_GENERATE, DONT_INLINE]
  0x00fb: PHI (r15v7 float) = (r15v5 float), (r15v6 float), (r15v4 float) binds: [B:63:0x00f0, B:60:0x00da, B:54:0x00c4] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void a(int r18) {
        /*
            Method dump skipped, instruction units count: 620
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.a(int):void");
    }

    private void g() {
        if (this.ag != 0) {
            ArrayList<View> arrayList = this.ah;
            if (arrayList == null) {
                this.ah = new ArrayList<>();
            } else {
                arrayList.clear();
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
        int iB = this.f2410b.b();
        int clientWidth = getClientWidth();
        float f2 = clientWidth > 0 ? this.p / clientWidth : 0.0f;
        if (bVar2 != null) {
            int i3 = bVar2.f2420b;
            if (i3 < bVar.f2420b) {
                float fC = bVar2.f2423e + bVar2.f2422d + f2;
                int i4 = i3 + 1;
                int i5 = 0;
                while (i4 <= bVar.f2420b && i5 < this.g.size()) {
                    b bVar5 = this.g.get(i5);
                    while (true) {
                        bVar4 = bVar5;
                        if (i4 <= bVar4.f2420b || i5 >= this.g.size() - 1) {
                            break;
                        }
                        i5++;
                        bVar5 = this.g.get(i5);
                    }
                    while (i4 < bVar4.f2420b) {
                        fC += this.f2410b.c(i4) + f2;
                        i4++;
                    }
                    bVar4.f2423e = fC;
                    fC += bVar4.f2422d + f2;
                    i4++;
                }
            } else if (i3 > bVar.f2420b) {
                int size = this.g.size() - 1;
                float fC2 = bVar2.f2423e;
                while (true) {
                    i3--;
                    if (i3 < bVar.f2420b || size < 0) {
                        break;
                    }
                    b bVar6 = this.g.get(size);
                    while (true) {
                        bVar3 = bVar6;
                        if (i3 >= bVar3.f2420b || size <= 0) {
                            break;
                        }
                        size--;
                        bVar6 = this.g.get(size);
                    }
                    while (i3 > bVar3.f2420b) {
                        fC2 -= this.f2410b.c(i3) + f2;
                        i3--;
                    }
                    fC2 -= bVar3.f2422d + f2;
                    bVar3.f2423e = fC2;
                }
            }
        }
        int size2 = this.g.size();
        float fC3 = bVar.f2423e;
        int i6 = bVar.f2420b - 1;
        this.t = bVar.f2420b == 0 ? bVar.f2423e : -3.4028235E38f;
        int i7 = iB - 1;
        this.u = bVar.f2420b == i7 ? (bVar.f2423e + bVar.f2422d) - 1.0f : Float.MAX_VALUE;
        int i8 = i2 - 1;
        while (i8 >= 0) {
            b bVar7 = this.g.get(i8);
            while (i6 > bVar7.f2420b) {
                fC3 -= this.f2410b.c(i6) + f2;
                i6--;
            }
            fC3 -= bVar7.f2422d + f2;
            bVar7.f2423e = fC3;
            if (bVar7.f2420b == 0) {
                this.t = fC3;
            }
            i8--;
            i6--;
        }
        float fC4 = bVar.f2423e + bVar.f2422d + f2;
        int i9 = bVar.f2420b + 1;
        int i10 = i2 + 1;
        while (i10 < size2) {
            b bVar8 = this.g.get(i10);
            while (i9 < bVar8.f2420b) {
                fC4 += this.f2410b.c(i9) + f2;
                i9++;
            }
            if (bVar8.f2420b == i7) {
                this.u = (bVar8.f2422d + fC4) - 1.0f;
            }
            bVar8.f2423e = fC4;
            fC4 += bVar8.f2422d + f2;
            i10++;
            i9++;
        }
        this.U = false;
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.viewpager.widget.ViewPager.SavedState.1
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
        int f2416a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Parcelable f2417b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ClassLoader f2418c;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2416a);
            parcel.writeParcelable(this.f2417b, i);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f2416a + "}";
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f2416a = parcel.readInt();
            this.f2417b = parcel.readParcelable(classLoader);
            this.f2418c = classLoader;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f2416a = this.f2411c;
        androidx.viewpager.widget.a aVar = this.f2410b;
        if (aVar != null) {
            savedState.f2417b = aVar.a();
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
        androidx.viewpager.widget.a aVar = this.f2410b;
        if (aVar != null) {
            aVar.a(savedState.f2417b, savedState.f2418c);
            a(savedState.f2416a, false, true);
        } else {
            this.j = savedState.f2416a;
            this.k = savedState.f2417b;
            this.l = savedState.f2418c;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        c cVar = (c) layoutParams;
        cVar.f2424a |= c(view);
        if (this.x) {
            if (cVar != null && cVar.f2424a) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            cVar.f2427d = true;
            addViewInLayout(view, i2, layoutParams);
            return;
        }
        super.addView(view, i2, layoutParams);
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
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            b bVar = this.g.get(i2);
            if (this.f2410b.a(view, bVar.f2419a)) {
                return bVar;
            }
        }
        return null;
    }

    b b(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return a(view);
            }
        }
    }

    b b(int i2) {
        for (int i3 = 0; i3 < this.g.size(); i3++) {
            b bVar = this.g.get(i3);
            if (bVar.f2420b == i2) {
                return bVar;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.T = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b9  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r17, int r18) {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            int i6 = this.p;
            a(i2, i4, i6, i6);
        }
    }

    private void a(int i2, int i3, int i4, int i5) {
        if (i3 > 0 && !this.g.isEmpty()) {
            if (!this.m.isFinished()) {
                this.m.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i3 - getPaddingLeft()) - getPaddingRight()) + i5)) * (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)), getScrollY());
                return;
            }
        }
        b bVarB = b(this.f2411c);
        int iMin = (int) ((bVarB != null ? Math.min(bVarB.f2423e, this.u) : 0.0f) * ((i2 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            a(false);
            scrollTo(iMin, getScrollY());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0090  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instruction units count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onLayout(boolean, int, int, int, int):void");
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
            r.d(this);
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
        int i3 = this.p;
        int i4 = clientWidth + i3;
        float f2 = clientWidth;
        int i5 = bVarI.f2420b;
        float f3 = ((i2 / f2) - bVarI.f2423e) / (bVarI.f2422d + (i3 / f2));
        this.V = false;
        a(i5, f3, (int) (i4 * f3));
        if (this.V) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void a(int r13, float r14, int r15) {
        /*
            r12 = this;
            int r0 = r12.W
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L6b
            int r0 = r12.getScrollX()
            int r3 = r12.getPaddingLeft()
            int r4 = r12.getPaddingRight()
            int r5 = r12.getWidth()
            int r6 = r12.getChildCount()
            r7 = 0
        L1b:
            if (r7 >= r6) goto L6b
            android.view.View r8 = r12.getChildAt(r7)
            android.view.ViewGroup$LayoutParams r9 = r8.getLayoutParams()
            androidx.viewpager.widget.ViewPager$c r9 = (androidx.viewpager.widget.ViewPager.c) r9
            boolean r10 = r9.f2424a
            if (r10 != 0) goto L2c
            goto L68
        L2c:
            int r9 = r9.f2425b
            r9 = r9 & 7
            if (r9 == r2) goto L4d
            r10 = 3
            if (r9 == r10) goto L47
            r10 = 5
            if (r9 == r10) goto L3a
            r9 = r3
            goto L5c
        L3a:
            int r9 = r5 - r4
            int r10 = r8.getMeasuredWidth()
            int r9 = r9 - r10
            int r10 = r8.getMeasuredWidth()
            int r4 = r4 + r10
            goto L59
        L47:
            int r9 = r8.getWidth()
            int r9 = r9 + r3
            goto L5c
        L4d:
            int r9 = r8.getMeasuredWidth()
            int r9 = r5 - r9
            int r9 = r9 / 2
            int r9 = java.lang.Math.max(r9, r3)
        L59:
            r11 = r9
            r9 = r3
            r3 = r11
        L5c:
            int r3 = r3 + r0
            int r10 = r8.getLeft()
            int r3 = r3 - r10
            if (r3 == 0) goto L67
            r8.offsetLeftAndRight(r3)
        L67:
            r3 = r9
        L68:
            int r7 = r7 + 1
            goto L1b
        L6b:
            r12.b(r13, r14, r15)
            androidx.viewpager.widget.ViewPager$g r13 = r12.ae
            if (r13 == 0) goto L9f
            int r13 = r12.getScrollX()
            int r14 = r12.getChildCount()
        L7a:
            if (r1 >= r14) goto L9f
            android.view.View r15 = r12.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r0 = r15.getLayoutParams()
            androidx.viewpager.widget.ViewPager$c r0 = (androidx.viewpager.widget.ViewPager.c) r0
            boolean r0 = r0.f2424a
            if (r0 == 0) goto L8b
            goto L9c
        L8b:
            int r0 = r15.getLeft()
            int r0 = r0 - r13
            float r0 = (float) r0
            int r3 = r12.getClientWidth()
            float r3 = (float) r3
            float r0 = r0 / r3
            androidx.viewpager.widget.ViewPager$g r3 = r12.ae
            r3.a(r15, r0)
        L9c:
            int r1 = r1 + 1
            goto L7a
        L9f:
            r12.V = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.a(int, float, int):void");
    }

    private void b(int i2, float f2, int i3) {
        f fVar = this.ab;
        if (fVar != null) {
            fVar.a(i2, f2, i3);
        }
        List<f> list = this.aa;
        if (list != null) {
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                f fVar2 = this.aa.get(i4);
                if (fVar2 != null) {
                    fVar2.a(i2, f2, i3);
                }
            }
        }
        f fVar3 = this.ac;
        if (fVar3 != null) {
            fVar3.a(i2, f2, i3);
        }
    }

    private void e(int i2) {
        f fVar = this.ab;
        if (fVar != null) {
            fVar.a(i2);
        }
        List<f> list = this.aa;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                f fVar2 = this.aa.get(i3);
                if (fVar2 != null) {
                    fVar2.a(i2);
                }
            }
        }
        f fVar3 = this.ac;
        if (fVar3 != null) {
            fVar3.a(i2);
        }
    }

    private void f(int i2) {
        f fVar = this.ab;
        if (fVar != null) {
            fVar.b(i2);
        }
        List<f> list = this.aa;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                f fVar2 = this.aa.get(i3);
                if (fVar2 != null) {
                    fVar2.b(i2);
                }
            }
        }
        f fVar3 = this.ac;
        if (fVar3 != null) {
            fVar3.b(i2);
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
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            b bVar = this.g.get(i2);
            if (bVar.f2421c) {
                bVar.f2421c = false;
                z2 = true;
            }
        }
        if (z2) {
            if (z) {
                r.a(this, this.aj);
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
        if (action == 0) {
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
        } else if (action == 2) {
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
                if (fAbs > this.F && fAbs * 0.5f > fAbs2) {
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
                    r.d(this);
                }
            }
        } else if (action == 6) {
            a(motionEvent);
        }
        if (this.L == null) {
            this.L = VelocityTracker.obtain();
        }
        this.L.addMovement(motionEvent);
        return this.B;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00dc  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instruction units count: 352
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onTouchEvent(android.view.MotionEvent):boolean");
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
        boolean z2;
        float f3 = this.G - f2;
        this.G = f2;
        float scrollX = getScrollX() + f3;
        float clientWidth = getClientWidth();
        float f4 = this.t * clientWidth;
        float f5 = this.u * clientWidth;
        boolean z3 = false;
        b bVar = this.g.get(0);
        ArrayList<b> arrayList = this.g;
        b bVar2 = arrayList.get(arrayList.size() - 1);
        if (bVar.f2420b != 0) {
            f4 = bVar.f2423e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (bVar2.f2420b != this.f2410b.b() - 1) {
            f5 = bVar2.f2423e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX < f4) {
            if (z) {
                this.R.onPull(Math.abs(f4 - scrollX) / clientWidth);
                z3 = true;
            }
            scrollX = f4;
        } else if (scrollX > f5) {
            if (z2) {
                this.S.onPull(Math.abs(scrollX - f5) / clientWidth);
                z3 = true;
            }
            scrollX = f5;
        }
        int i2 = (int) scrollX;
        this.G += scrollX - i2;
        scrollTo(i2, getScrollY());
        d(i2);
        return z3;
    }

    private b i() {
        int i2;
        int clientWidth = getClientWidth();
        float f2 = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f3 = clientWidth > 0 ? this.p / clientWidth : 0.0f;
        b bVar = null;
        float f4 = 0.0f;
        int i3 = -1;
        int i4 = 0;
        boolean z = true;
        while (i4 < this.g.size()) {
            b bVar2 = this.g.get(i4);
            if (!z && bVar2.f2420b != (i2 = i3 + 1)) {
                bVar2 = this.h;
                bVar2.f2423e = f2 + f4 + f3;
                bVar2.f2420b = i2;
                bVar2.f2422d = this.f2410b.c(bVar2.f2420b);
                i4--;
            }
            f2 = bVar2.f2423e;
            float f5 = bVar2.f2422d + f2 + f3;
            if (!z && scrollX < f2) {
                return bVar;
            }
            if (scrollX < f5 || i4 == this.g.size() - 1) {
                return bVar2;
            }
            i3 = bVar2.f2420b;
            f4 = bVar2.f2422d;
            i4++;
            bVar = bVar2;
            z = false;
        }
        return bVar;
    }

    private int a(int i2, float f2, int i3, int i4) {
        if (Math.abs(i4) <= this.O || Math.abs(i3) <= this.M) {
            i2 += (int) (f2 + (i2 >= this.f2411c ? 0.4f : 0.6f));
        } else if (i3 <= 0) {
            i2++;
        }
        if (this.g.size() <= 0) {
            return i2;
        }
        return Math.max(this.g.get(0).f2420b, Math.min(i2, this.g.get(r4.size() - 1).f2420b));
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        androidx.viewpager.widget.a aVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (aVar = this.f2410b) != null && aVar.b() > 1)) {
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
            r.d(this);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f2;
        float f3;
        float f4;
        super.onDraw(canvas);
        if (this.p <= 0 || this.q == null || this.g.size() <= 0 || this.f2410b == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f5 = this.p / width;
        int i2 = 0;
        b bVar = this.g.get(0);
        float f6 = bVar.f2423e;
        int size = this.g.size();
        int i3 = bVar.f2420b;
        int i4 = this.g.get(size - 1).f2420b;
        while (i3 < i4) {
            while (i3 > bVar.f2420b && i2 < size) {
                i2++;
                bVar = this.g.get(i2);
            }
            if (i3 == bVar.f2420b) {
                f3 = (bVar.f2423e + bVar.f2422d) * width;
                f2 = bVar.f2423e + bVar.f2422d + f5;
            } else {
                float fC = this.f2410b.c(i3);
                float f7 = (f6 + fC) * width;
                f2 = f6 + fC + f5;
                f3 = f7;
            }
            if (this.p + f3 > scrollX) {
                f4 = f5;
                this.q.setBounds(Math.round(f3), this.r, Math.round(this.p + f3), this.s);
                this.q.draw(canvas);
            } else {
                f4 = f5;
            }
            if (f3 > scrollX + r2) {
                return;
            }
            i3++;
            f6 = f2;
            f5 = f4;
        }
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.K) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.G = motionEvent.getX(i2);
            this.K = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.L;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private void j() {
        this.B = false;
        this.C = false;
        VelocityTracker velocityTracker = this.L;
        if (velocityTracker != null) {
            velocityTracker.recycle();
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
        if (this.f2410b == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i2 < 0 ? scrollX > ((int) (((float) clientWidth) * this.t)) : i2 > 0 && scrollX < ((int) (((float) clientWidth) * this.u));
    }

    protected boolean a(View view, boolean z, int i2, int i3, int i4) {
        int i5;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i6 = i3 + scrollX;
                if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && (i5 = i4 + scrollY) >= childAt.getTop() && i5 < childAt.getBottom() && a(childAt, true, i2, i6 - childAt.getLeft(), i5 - childAt.getTop())) {
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
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                if (keyEvent.hasModifiers(2)) {
                    return d();
                }
                return c(17);
            }
            if (keyCode == 22) {
                if (keyEvent.hasModifiers(2)) {
                    return e();
                }
                return c(66);
            }
            if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return c(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return c(1);
                }
            }
        }
        return false;
    }

    public boolean c(int i2) {
        boolean z;
        boolean zRequestFocus;
        View viewFindFocus = findFocus();
        boolean zD = false;
        if (viewFindFocus == this) {
            viewFindFocus = null;
        } else if (viewFindFocus != null) {
            ViewParent parent = viewFindFocus.getParent();
            while (true) {
                if (!(parent instanceof ViewGroup)) {
                    z = false;
                    break;
                }
                if (parent == this) {
                    z = true;
                    break;
                }
                parent = parent.getParent();
            }
            if (!z) {
                StringBuilder sb = new StringBuilder();
                sb.append(viewFindFocus.getClass().getSimpleName());
                for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                    sb.append(" => ");
                    sb.append(parent2.getClass().getSimpleName());
                }
                Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb.toString());
                viewFindFocus = null;
            }
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i2);
        if (viewFindNextFocus != null && viewFindNextFocus != viewFindFocus) {
            if (i2 == 17) {
                int i3 = a(this.i, viewFindNextFocus).left;
                int i4 = a(this.i, viewFindFocus).left;
                if (viewFindFocus != null && i3 >= i4) {
                    zRequestFocus = d();
                } else {
                    zRequestFocus = viewFindNextFocus.requestFocus();
                }
            } else if (i2 == 66) {
                int i5 = a(this.i, viewFindNextFocus).left;
                int i6 = a(this.i, viewFindFocus).left;
                if (viewFindFocus != null && i5 <= i6) {
                    zRequestFocus = e();
                } else {
                    zRequestFocus = viewFindNextFocus.requestFocus();
                }
            }
            zD = zRequestFocus;
        } else if (i2 == 17 || i2 == 1) {
            zD = d();
        } else if (i2 == 66 || i2 == 2) {
            zD = e();
        }
        if (zD) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i2));
        }
        return zD;
    }

    private Rect a(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    boolean d() {
        int i2 = this.f2411c;
        if (i2 <= 0) {
            return false;
        }
        a(i2 - 1, true);
        return true;
    }

    boolean e() {
        androidx.viewpager.widget.a aVar = this.f2410b;
        if (aVar == null || this.f2411c >= aVar.b() - 1) {
            return false;
        }
        a(this.f2411c + 1, true);
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
                if (childAt.getVisibility() == 0 && (bVarA = a(childAt)) != null && bVarA.f2420b == this.f2411c) {
                    childAt.addFocusables(arrayList, i2, i3);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i3 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        b bVarA;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (bVarA = a(childAt)) != null && bVarA.f2420b == this.f2411c) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        int i4;
        b bVarA;
        int childCount = getChildCount();
        int i5 = -1;
        if ((i2 & 2) != 0) {
            i5 = childCount;
            i3 = 0;
            i4 = 1;
        } else {
            i3 = childCount - 1;
            i4 = -1;
        }
        while (i3 != i5) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (bVarA = a(childAt)) != null && bVarA.f2420b == this.f2411c && childAt.requestFocus(i2, rect)) {
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
            if (childAt.getVisibility() == 0 && (bVarA = a(childAt)) != null && bVarA.f2420b == this.f2411c && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
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

    class d extends androidx.core.h.a {
        d() {
        }

        @Override // androidx.core.h.a
        public void d(View view, AccessibilityEvent accessibilityEvent) {
            super.d(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(b());
            if (accessibilityEvent.getEventType() != 4096 || ViewPager.this.f2410b == null) {
                return;
            }
            accessibilityEvent.setItemCount(ViewPager.this.f2410b.b());
            accessibilityEvent.setFromIndex(ViewPager.this.f2411c);
            accessibilityEvent.setToIndex(ViewPager.this.f2411c);
        }

        @Override // androidx.core.h.a
        public void a(View view, androidx.core.h.a.c cVar) {
            super.a(view, cVar);
            cVar.a((CharSequence) ViewPager.class.getName());
            cVar.c(b());
            if (ViewPager.this.canScrollHorizontally(1)) {
                cVar.a(4096);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                cVar.a(8192);
            }
        }

        @Override // androidx.core.h.a
        public boolean a(View view, int i, Bundle bundle) {
            if (super.a(view, i, bundle)) {
                return true;
            }
            if (i == 4096) {
                if (!ViewPager.this.canScrollHorizontally(1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.setCurrentItem(viewPager.f2411c + 1);
                return true;
            }
            if (i != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                return false;
            }
            ViewPager viewPager2 = ViewPager.this;
            viewPager2.setCurrentItem(viewPager2.f2411c - 1);
            return true;
        }

        private boolean b() {
            return ViewPager.this.f2410b != null && ViewPager.this.f2410b.b() > 1;
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
        public boolean f2424a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2425b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f2426c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f2427d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f2428e;
        int f;

        public c() {
            super(-1, -1);
            this.f2426c = 0.0f;
        }

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2426c = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f2408a);
            this.f2425b = typedArrayObtainStyledAttributes.getInteger(0, 48);
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
            if (cVar.f2424a != cVar2.f2424a) {
                return cVar.f2424a ? 1 : -1;
            }
            return cVar.f2428e - cVar2.f2428e;
        }
    }
}
