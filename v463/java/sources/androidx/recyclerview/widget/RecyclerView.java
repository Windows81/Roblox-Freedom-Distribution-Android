package androidx.recyclerview.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.core.h.a.c;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.a;
import androidx.recyclerview.widget.a;
import androidx.recyclerview.widget.b;
import androidx.recyclerview.widget.e;
import androidx.recyclerview.widget.l;
import androidx.recyclerview.widget.m;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RecyclerView extends ViewGroup implements androidx.core.h.j {
    static final Interpolator L;
    private static final int[] M = {R.attr.nestedScrollingEnabled};
    private static final int[] N = {R.attr.clipToPadding};
    private static final boolean O;
    private static final boolean P;
    private static final Class<?>[] Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final boolean f2194a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final boolean f2195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final boolean f2196c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final boolean f2197d;
    final v A;
    androidx.recyclerview.widget.e B;
    e.a C;
    final t D;
    boolean E;
    boolean F;
    boolean G;
    androidx.recyclerview.widget.i H;
    final int[] I;
    final int[] J;
    final List<w> K;
    private final r R;
    private SavedState S;
    private final Rect T;
    private final ArrayList<m> U;
    private m V;
    private int W;
    private List<n> aA;
    private f.b aB;
    private d aC;
    private final int[] aD;
    private androidx.core.h.k aE;
    private final int[] aF;
    private final int[] aG;
    private Runnable aH;
    private final m.b aI;
    private boolean aa;
    private int ab;
    private final AccessibilityManager ac;
    private List<k> ad;
    private int ae;
    private int af;
    private e ag;
    private EdgeEffect ah;
    private EdgeEffect ai;
    private EdgeEffect aj;
    private EdgeEffect ak;
    private int al;
    private int am;
    private VelocityTracker an;
    private int ao;
    private int ap;
    private int aq;
    private int ar;
    private int as;
    private l at;
    private final int au;
    private final int av;
    private float aw;
    private float ax;
    private boolean ay;
    private n az;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final p f2198e;
    androidx.recyclerview.widget.a f;
    androidx.recyclerview.widget.b g;
    final androidx.recyclerview.widget.m h;
    boolean i;
    final Runnable j;
    final Rect k;
    final RectF l;
    a m;
    i n;
    q o;
    final ArrayList<h> p;
    boolean q;
    boolean r;
    boolean s;
    boolean t;
    boolean u;
    boolean v;
    boolean w;
    boolean x;
    boolean y;
    f z;

    public interface d {
        int a(int i, int i2);
    }

    public interface k {
        void a(View view);

        void b(View view);
    }

    public static abstract class l {
        public abstract boolean a(int i, int i2);
    }

    public interface m {
        void a(boolean z);

        boolean a(RecyclerView recyclerView, MotionEvent motionEvent);

        void b(RecyclerView recyclerView, MotionEvent motionEvent);
    }

    public static abstract class n {
        public void a(RecyclerView recyclerView, int i) {
        }

        public void a(RecyclerView recyclerView, int i, int i2) {
        }
    }

    public interface q {
        void a(w wVar);
    }

    public static abstract class u {
        public abstract View a(p pVar, int i, int i2);
    }

    public void f(int i2) {
    }

    public void g(View view) {
    }

    public void h(int i2, int i3) {
    }

    public void h(View view) {
    }

    static {
        f2194a = Build.VERSION.SDK_INT == 18 || Build.VERSION.SDK_INT == 19 || Build.VERSION.SDK_INT == 20;
        f2195b = Build.VERSION.SDK_INT >= 23;
        f2196c = Build.VERSION.SDK_INT >= 16;
        f2197d = Build.VERSION.SDK_INT >= 21;
        O = Build.VERSION.SDK_INT <= 15;
        P = Build.VERSION.SDK_INT <= 15;
        Q = new Class[]{Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE};
        L = new Interpolator() { // from class: androidx.recyclerview.widget.RecyclerView.3
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f2) {
                float f3 = f2 - 1.0f;
                return (f3 * f3 * f3 * f3 * f3) + 1.0f;
            }
        };
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.R = new r();
        this.f2198e = new p();
        this.h = new androidx.recyclerview.widget.m();
        this.j = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.1
            @Override // java.lang.Runnable
            public void run() {
                if (!RecyclerView.this.t || RecyclerView.this.isLayoutRequested()) {
                    return;
                }
                if (!RecyclerView.this.q) {
                    RecyclerView.this.requestLayout();
                } else if (RecyclerView.this.v) {
                    RecyclerView.this.u = true;
                } else {
                    RecyclerView.this.d();
                }
            }
        };
        this.k = new Rect();
        this.T = new Rect();
        this.l = new RectF();
        this.p = new ArrayList<>();
        this.U = new ArrayList<>();
        this.W = 0;
        this.x = false;
        this.y = false;
        this.ae = 0;
        this.af = 0;
        this.ag = new e();
        this.z = new androidx.recyclerview.widget.c();
        this.al = 0;
        this.am = -1;
        this.aw = Float.MIN_VALUE;
        this.ax = Float.MIN_VALUE;
        boolean z = true;
        this.ay = true;
        this.A = new v();
        this.C = f2197d ? new e.a() : null;
        this.D = new t();
        this.E = false;
        this.F = false;
        this.aB = new g();
        this.G = false;
        this.aD = new int[2];
        this.aF = new int[2];
        this.I = new int[2];
        this.aG = new int[2];
        this.J = new int[2];
        this.K = new ArrayList();
        this.aH = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.2
            @Override // java.lang.Runnable
            public void run() {
                if (RecyclerView.this.z != null) {
                    RecyclerView.this.z.a();
                }
                RecyclerView.this.G = false;
            }
        };
        this.aI = new m.b() { // from class: androidx.recyclerview.widget.RecyclerView.4
            @Override // androidx.recyclerview.widget.m.b
            public void a(w wVar, f.c cVar, f.c cVar2) {
                RecyclerView.this.f2198e.c(wVar);
                RecyclerView.this.b(wVar, cVar, cVar2);
            }

            @Override // androidx.recyclerview.widget.m.b
            public void b(w wVar, f.c cVar, f.c cVar2) {
                RecyclerView.this.a(wVar, cVar, cVar2);
            }

            @Override // androidx.recyclerview.widget.m.b
            public void c(w wVar, f.c cVar, f.c cVar2) {
                wVar.a(false);
                if (RecyclerView.this.x) {
                    if (RecyclerView.this.z.a(wVar, wVar, cVar, cVar2)) {
                        RecyclerView.this.p();
                    }
                } else if (RecyclerView.this.z.c(wVar, cVar, cVar2)) {
                    RecyclerView.this.p();
                }
            }

            @Override // androidx.recyclerview.widget.m.b
            public void a(w wVar) {
                RecyclerView.this.n.a(wVar.f2263a, RecyclerView.this.f2198e);
            }
        };
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, N, i2, 0);
            this.i = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
        } else {
            this.i = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.as = viewConfiguration.getScaledTouchSlop();
        this.aw = androidx.core.h.s.a(viewConfiguration, context);
        this.ax = androidx.core.h.s.b(viewConfiguration, context);
        this.au = viewConfiguration.getScaledMinimumFlingVelocity();
        this.av = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.z.a(this.aB);
        b();
        z();
        y();
        if (androidx.core.h.r.e(this) == 0) {
            androidx.core.h.r.b(this, 1);
        }
        this.ac = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new androidx.recyclerview.widget.i(this));
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, a.b.RecyclerView, i2, 0);
            String string = typedArrayObtainStyledAttributes2.getString(a.b.RecyclerView_layoutManager);
            if (typedArrayObtainStyledAttributes2.getInt(a.b.RecyclerView_android_descendantFocusability, -1) == -1) {
                setDescendantFocusability(262144);
            }
            boolean z2 = typedArrayObtainStyledAttributes2.getBoolean(a.b.RecyclerView_fastScrollEnabled, false);
            this.s = z2;
            if (z2) {
                a((StateListDrawable) typedArrayObtainStyledAttributes2.getDrawable(a.b.RecyclerView_fastScrollVerticalThumbDrawable), typedArrayObtainStyledAttributes2.getDrawable(a.b.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) typedArrayObtainStyledAttributes2.getDrawable(a.b.RecyclerView_fastScrollHorizontalThumbDrawable), typedArrayObtainStyledAttributes2.getDrawable(a.b.RecyclerView_fastScrollHorizontalTrackDrawable));
            }
            typedArrayObtainStyledAttributes2.recycle();
            a(context, string, attributeSet, i2, 0);
            if (Build.VERSION.SDK_INT >= 21) {
                TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, M, i2, 0);
                boolean z3 = typedArrayObtainStyledAttributes3.getBoolean(0, true);
                typedArrayObtainStyledAttributes3.recycle();
                z = z3;
            }
        } else {
            setDescendantFocusability(262144);
        }
        setNestedScrollingEnabled(z);
    }

    String a() {
        return " " + super.toString() + ", adapter:" + this.m + ", layout:" + this.n + ", context:" + getContext();
    }

    private void y() {
        if (androidx.core.h.r.a(this) == 0) {
            androidx.core.h.r.a((View) this, 8);
        }
    }

    public androidx.recyclerview.widget.i getCompatAccessibilityDelegate() {
        return this.H;
    }

    public void setAccessibilityDelegateCompat(androidx.recyclerview.widget.i iVar) {
        this.H = iVar;
        androidx.core.h.r.a(this, iVar);
    }

    private void a(Context context, String str, AttributeSet attributeSet, int i2, int i3) {
        ClassLoader classLoader;
        Constructor constructor;
        if (str != null) {
            String strTrim = str.trim();
            if (strTrim.isEmpty()) {
                return;
            }
            String strA = a(context, strTrim);
            try {
                if (isInEditMode()) {
                    classLoader = getClass().getClassLoader();
                } else {
                    classLoader = context.getClassLoader();
                }
                Class<? extends U> clsAsSubclass = classLoader.loadClass(strA).asSubclass(i.class);
                Object[] objArr = null;
                try {
                    constructor = clsAsSubclass.getConstructor(Q);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i2), Integer.valueOf(i3)};
                } catch (NoSuchMethodException e2) {
                    try {
                        constructor = clsAsSubclass.getConstructor(new Class[0]);
                    } catch (NoSuchMethodException e3) {
                        e3.initCause(e2);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + strA, e3);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((i) constructor.newInstance(objArr));
            } catch (ClassCastException e4) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + strA, e4);
            } catch (ClassNotFoundException e5) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + strA, e5);
            } catch (IllegalAccessException e6) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + strA, e6);
            } catch (InstantiationException e7) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strA, e7);
            } catch (InvocationTargetException e8) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strA, e8);
            }
        }
    }

    private String a(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        if (str.contains(".")) {
            return str;
        }
        return RecyclerView.class.getPackage().getName() + '.' + str;
    }

    private void z() {
        this.g = new androidx.recyclerview.widget.b(new b.InterfaceC0056b() { // from class: androidx.recyclerview.widget.RecyclerView.5
            @Override // androidx.recyclerview.widget.b.InterfaceC0056b
            public int a() {
                return RecyclerView.this.getChildCount();
            }

            @Override // androidx.recyclerview.widget.b.InterfaceC0056b
            public void a(View view, int i2) {
                RecyclerView.this.addView(view, i2);
                RecyclerView.this.l(view);
            }

            @Override // androidx.recyclerview.widget.b.InterfaceC0056b
            public int a(View view) {
                return RecyclerView.this.indexOfChild(view);
            }

            @Override // androidx.recyclerview.widget.b.InterfaceC0056b
            public void a(int i2) {
                View childAt = RecyclerView.this.getChildAt(i2);
                if (childAt != null) {
                    RecyclerView.this.k(childAt);
                    childAt.clearAnimation();
                }
                RecyclerView.this.removeViewAt(i2);
            }

            @Override // androidx.recyclerview.widget.b.InterfaceC0056b
            public View b(int i2) {
                return RecyclerView.this.getChildAt(i2);
            }

            @Override // androidx.recyclerview.widget.b.InterfaceC0056b
            public void b() {
                int iA = a();
                for (int i2 = 0; i2 < iA; i2++) {
                    View viewB = b(i2);
                    RecyclerView.this.k(viewB);
                    viewB.clearAnimation();
                }
                RecyclerView.this.removeAllViews();
            }

            @Override // androidx.recyclerview.widget.b.InterfaceC0056b
            public w b(View view) {
                return RecyclerView.e(view);
            }

            @Override // androidx.recyclerview.widget.b.InterfaceC0056b
            public void a(View view, int i2, ViewGroup.LayoutParams layoutParams) {
                w wVarE = RecyclerView.e(view);
                if (wVarE != null) {
                    if (!wVarE.r() && !wVarE.c()) {
                        throw new IllegalArgumentException("Called attach on a child which is not detached: " + wVarE + RecyclerView.this.a());
                    }
                    wVarE.m();
                }
                RecyclerView.this.attachViewToParent(view, i2, layoutParams);
            }

            @Override // androidx.recyclerview.widget.b.InterfaceC0056b
            public void c(int i2) {
                w wVarE;
                View viewB = b(i2);
                if (viewB != null && (wVarE = RecyclerView.e(viewB)) != null) {
                    if (wVarE.r() && !wVarE.c()) {
                        throw new IllegalArgumentException("called detach on an already detached child " + wVarE + RecyclerView.this.a());
                    }
                    wVarE.b(256);
                }
                RecyclerView.this.detachViewFromParent(i2);
            }

            @Override // androidx.recyclerview.widget.b.InterfaceC0056b
            public void c(View view) {
                w wVarE = RecyclerView.e(view);
                if (wVarE != null) {
                    wVarE.a(RecyclerView.this);
                }
            }

            @Override // androidx.recyclerview.widget.b.InterfaceC0056b
            public void d(View view) {
                w wVarE = RecyclerView.e(view);
                if (wVarE != null) {
                    wVarE.b(RecyclerView.this);
                }
            }
        });
    }

    void b() {
        this.f = new androidx.recyclerview.widget.a(new a.InterfaceC0055a() { // from class: androidx.recyclerview.widget.RecyclerView.6
            @Override // androidx.recyclerview.widget.a.InterfaceC0055a
            public w a(int i2) {
                w wVarA = RecyclerView.this.a(i2, true);
                if (wVarA == null || RecyclerView.this.g.c(wVarA.f2263a)) {
                    return null;
                }
                return wVarA;
            }

            @Override // androidx.recyclerview.widget.a.InterfaceC0055a
            public void a(int i2, int i3) {
                RecyclerView.this.a(i2, i3, true);
                RecyclerView.this.E = true;
                RecyclerView.this.D.f2255c += i3;
            }

            @Override // androidx.recyclerview.widget.a.InterfaceC0055a
            public void b(int i2, int i3) {
                RecyclerView.this.a(i2, i3, false);
                RecyclerView.this.E = true;
            }

            @Override // androidx.recyclerview.widget.a.InterfaceC0055a
            public void a(int i2, int i3, Object obj) {
                RecyclerView.this.a(i2, i3, obj);
                RecyclerView.this.F = true;
            }

            @Override // androidx.recyclerview.widget.a.InterfaceC0055a
            public void a(a.b bVar) {
                c(bVar);
            }

            void c(a.b bVar) {
                int i2 = bVar.f2302a;
                if (i2 == 1) {
                    RecyclerView.this.n.a(RecyclerView.this, bVar.f2303b, bVar.f2305d);
                    return;
                }
                if (i2 == 2) {
                    RecyclerView.this.n.b(RecyclerView.this, bVar.f2303b, bVar.f2305d);
                } else if (i2 == 4) {
                    RecyclerView.this.n.a(RecyclerView.this, bVar.f2303b, bVar.f2305d, bVar.f2304c);
                } else {
                    if (i2 != 8) {
                        return;
                    }
                    RecyclerView.this.n.a(RecyclerView.this, bVar.f2303b, bVar.f2305d, 1);
                }
            }

            @Override // androidx.recyclerview.widget.a.InterfaceC0055a
            public void b(a.b bVar) {
                c(bVar);
            }

            @Override // androidx.recyclerview.widget.a.InterfaceC0055a
            public void c(int i2, int i3) {
                RecyclerView.this.g(i2, i3);
                RecyclerView.this.E = true;
            }

            @Override // androidx.recyclerview.widget.a.InterfaceC0055a
            public void d(int i2, int i3) {
                RecyclerView.this.f(i2, i3);
                RecyclerView.this.E = true;
            }
        });
    }

    public void setHasFixedSize(boolean z) {
        this.r = z;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.i) {
            k();
        }
        this.i = z;
        super.setClipToPadding(z);
        if (this.t) {
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.i;
    }

    public void setScrollingTouchSlop(int i2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i2 != 0) {
            if (i2 != 1) {
                Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value");
            } else {
                this.as = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.as = viewConfiguration.getScaledTouchSlop();
    }

    public void setAdapter(a aVar) {
        setLayoutFrozen(false);
        a(aVar, false, true);
        c(false);
        requestLayout();
    }

    void c() {
        f fVar = this.z;
        if (fVar != null) {
            fVar.d();
        }
        i iVar = this.n;
        if (iVar != null) {
            iVar.c(this.f2198e);
            this.n.b(this.f2198e);
        }
        this.f2198e.a();
    }

    private void a(a aVar, boolean z, boolean z2) {
        a aVar2 = this.m;
        if (aVar2 != null) {
            aVar2.b(this.R);
            this.m.b(this);
        }
        if (!z || z2) {
            c();
        }
        this.f.a();
        a aVar3 = this.m;
        this.m = aVar;
        if (aVar != null) {
            aVar.a(this.R);
            aVar.a(this);
        }
        i iVar = this.n;
        if (iVar != null) {
            iVar.a(aVar3, this.m);
        }
        this.f2198e.a(aVar3, this.m, z);
        this.D.f = true;
    }

    public a getAdapter() {
        return this.m;
    }

    public void setRecyclerListener(q qVar) {
        this.o = qVar;
    }

    @Override // android.view.View
    public int getBaseline() {
        i iVar = this.n;
        if (iVar != null) {
            return iVar.u();
        }
        return super.getBaseline();
    }

    public void setLayoutManager(i iVar) {
        if (iVar == this.n) {
            return;
        }
        f();
        if (this.n != null) {
            f fVar = this.z;
            if (fVar != null) {
                fVar.d();
            }
            this.n.c(this.f2198e);
            this.n.b(this.f2198e);
            this.f2198e.a();
            if (this.q) {
                this.n.b(this, this.f2198e);
            }
            this.n.b((RecyclerView) null);
            this.n = null;
        } else {
            this.f2198e.a();
        }
        this.g.a();
        this.n = iVar;
        if (iVar != null) {
            if (iVar.q != null) {
                throw new IllegalArgumentException("LayoutManager " + iVar + " is already attached to a RecyclerView:" + iVar.q.a());
            }
            this.n.b(this);
            if (this.q) {
                this.n.c(this);
            }
        }
        this.f2198e.b();
        requestLayout();
    }

    public void setOnFlingListener(l lVar) {
        this.at = lVar;
    }

    public l getOnFlingListener() {
        return this.at;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.S;
        if (savedState2 != null) {
            savedState.a(savedState2);
        } else {
            i iVar = this.n;
            if (iVar != null) {
                savedState.f2204a = iVar.d();
            } else {
                savedState.f2204a = null;
            }
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.S = savedState;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (this.n == null || this.S.f2204a == null) {
            return;
        }
        this.n.a(this.S.f2204a);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    private void e(w wVar) {
        View view = wVar.f2263a;
        boolean z = view.getParent() == this;
        this.f2198e.c(b(view));
        if (wVar.r()) {
            this.g.a(view, -1, view.getLayoutParams(), true);
        } else if (!z) {
            this.g.a(view, true);
        } else {
            this.g.d(view);
        }
    }

    boolean a(View view) {
        e();
        boolean zF = this.g.f(view);
        if (zF) {
            w wVarE = e(view);
            this.f2198e.c(wVarE);
            this.f2198e.b(wVarE);
        }
        a(!zF);
        return zF;
    }

    public i getLayoutManager() {
        return this.n;
    }

    public o getRecycledViewPool() {
        return this.f2198e.g();
    }

    public void setRecycledViewPool(o oVar) {
        this.f2198e.a(oVar);
    }

    public void setViewCacheExtension(u uVar) {
        this.f2198e.a(uVar);
    }

    public void setItemViewCacheSize(int i2) {
        this.f2198e.a(i2);
    }

    public int getScrollState() {
        return this.al;
    }

    void setScrollState(int i2) {
        if (i2 == this.al) {
            return;
        }
        this.al = i2;
        if (i2 != 2) {
            B();
        }
        g(i2);
    }

    public void a(h hVar, int i2) {
        i iVar = this.n;
        if (iVar != null) {
            iVar.a("Cannot add item decoration during a scroll  or layout");
        }
        if (this.p.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i2 < 0) {
            this.p.add(hVar);
        } else {
            this.p.add(i2, hVar);
        }
        r();
        requestLayout();
    }

    public void a(h hVar) {
        a(hVar, -1);
    }

    public int getItemDecorationCount() {
        return this.p.size();
    }

    public void b(h hVar) {
        i iVar = this.n;
        if (iVar != null) {
            iVar.a("Cannot remove item decoration during a scroll  or layout");
        }
        this.p.remove(hVar);
        if (this.p.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        r();
        requestLayout();
    }

    public void setChildDrawingOrderCallback(d dVar) {
        if (dVar == this.aC) {
            return;
        }
        this.aC = dVar;
        setChildrenDrawingOrderEnabled(dVar != null);
    }

    @Deprecated
    public void setOnScrollListener(n nVar) {
        this.az = nVar;
    }

    public void a(n nVar) {
        if (this.aA == null) {
            this.aA = new ArrayList();
        }
        this.aA.add(nVar);
    }

    public void b(n nVar) {
        List<n> list = this.aA;
        if (list != null) {
            list.remove(nVar);
        }
    }

    void b(int i2) {
        i iVar = this.n;
        if (iVar == null) {
            return;
        }
        iVar.e(i2);
        awakenScrollBars();
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i3) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View
    public void scrollBy(int i2, int i3) {
        i iVar = this.n;
        if (iVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.v) {
            return;
        }
        boolean zE = iVar.e();
        boolean zF = this.n.f();
        if (zE || zF) {
            if (!zE) {
                i2 = 0;
            }
            if (!zF) {
                i3 = 0;
            }
            a(i2, i3, (MotionEvent) null);
        }
    }

    void a(int i2, int i3, int[] iArr) {
        e();
        l();
        androidx.core.d.d.a("RV Scroll");
        a(this.D);
        int iA = i2 != 0 ? this.n.a(i2, this.f2198e, this.D) : 0;
        int iB = i3 != 0 ? this.n.b(i3, this.f2198e, this.D) : 0;
        androidx.core.d.d.a();
        w();
        m();
        a(false);
        if (iArr != null) {
            iArr[0] = iA;
            iArr[1] = iB;
        }
    }

    void d() {
        if (!this.t || this.x) {
            androidx.core.d.d.a("RV FullInvalidate");
            q();
            androidx.core.d.d.a();
            return;
        }
        if (this.f.d()) {
            if (this.f.a(4) && !this.f.a(11)) {
                androidx.core.d.d.a("RV PartialInvalidate");
                e();
                l();
                this.f.b();
                if (!this.u) {
                    if (A()) {
                        q();
                    } else {
                        this.f.c();
                    }
                }
                a(true);
                m();
                androidx.core.d.d.a();
                return;
            }
            if (this.f.d()) {
                androidx.core.d.d.a("RV FullInvalidate");
                q();
                androidx.core.d.d.a();
            }
        }
    }

    private boolean A() {
        int iB = this.g.b();
        for (int i2 = 0; i2 < iB; i2++) {
            w wVarE = e(this.g.b(i2));
            if (wVarE != null && !wVarE.c() && wVarE.z()) {
                return true;
            }
        }
        return false;
    }

    boolean a(int i2, int i3, MotionEvent motionEvent) {
        int i4;
        int i5;
        int i6;
        int i7;
        d();
        if (this.m != null) {
            a(i2, i3, this.J);
            int[] iArr = this.J;
            int i8 = iArr[0];
            int i9 = iArr[1];
            i5 = i9;
            i6 = i8;
            i7 = i2 - i8;
            i4 = i3 - i9;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
        }
        if (!this.p.isEmpty()) {
            invalidate();
        }
        int i10 = i4;
        if (a(i6, i5, i7, i4, this.aF, 0)) {
            int i11 = this.aq;
            int[] iArr2 = this.aF;
            this.aq = i11 - iArr2[0];
            this.ar -= iArr2[1];
            if (motionEvent != null) {
                motionEvent.offsetLocation(iArr2[0], iArr2[1]);
            }
            int[] iArr3 = this.aG;
            int i12 = iArr3[0];
            int[] iArr4 = this.aF;
            iArr3[0] = i12 + iArr4[0];
            iArr3[1] = iArr3[1] + iArr4[1];
        } else if (getOverScrollMode() != 2) {
            if (motionEvent != null && !androidx.core.h.h.a(motionEvent, 8194)) {
                a(motionEvent.getX(), i7, motionEvent.getY(), i10);
            }
            c(i2, i3);
        }
        if (i6 != 0 || i5 != 0) {
            i(i6, i5);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (i6 == 0 && i5 == 0) ? false : true;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        i iVar = this.n;
        if (iVar != null && iVar.e()) {
            return this.n.c(this.D);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        i iVar = this.n;
        if (iVar != null && iVar.e()) {
            return this.n.e(this.D);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        i iVar = this.n;
        if (iVar != null && iVar.e()) {
            return this.n.g(this.D);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        i iVar = this.n;
        if (iVar != null && iVar.f()) {
            return this.n.d(this.D);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        i iVar = this.n;
        if (iVar != null && iVar.f()) {
            return this.n.f(this.D);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        i iVar = this.n;
        if (iVar != null && iVar.f()) {
            return this.n.h(this.D);
        }
        return 0;
    }

    void e() {
        int i2 = this.W + 1;
        this.W = i2;
        if (i2 != 1 || this.v) {
            return;
        }
        this.u = false;
    }

    void a(boolean z) {
        if (this.W < 1) {
            this.W = 1;
        }
        if (!z && !this.v) {
            this.u = false;
        }
        if (this.W == 1) {
            if (z && this.u && !this.v && this.n != null && this.m != null) {
                q();
            }
            if (!this.v) {
                this.u = false;
            }
        }
        this.W--;
    }

    public void setLayoutFrozen(boolean z) {
        if (z != this.v) {
            a("Do not setLayoutFrozen in layout or scroll");
            if (!z) {
                this.v = false;
                if (this.u && this.n != null && this.m != null) {
                    requestLayout();
                }
                this.u = false;
                return;
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
            this.v = true;
            this.aa = true;
            f();
        }
    }

    public void a(int i2, int i3) {
        a(i2, i3, (Interpolator) null);
    }

    public void a(int i2, int i3, Interpolator interpolator) {
        i iVar = this.n;
        if (iVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.v) {
            return;
        }
        if (!iVar.e()) {
            i2 = 0;
        }
        if (!this.n.f()) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        this.A.a(i2, i3, interpolator);
    }

    public boolean b(int i2, int i3) {
        i iVar = this.n;
        if (iVar == null) {
            Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.v) {
            return false;
        }
        boolean zE = iVar.e();
        boolean zF = this.n.f();
        if (!zE || Math.abs(i2) < this.au) {
            i2 = 0;
        }
        if (!zF || Math.abs(i3) < this.au) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return false;
        }
        float f2 = i2;
        float f3 = i3;
        if (!dispatchNestedPreFling(f2, f3)) {
            boolean z = zE || zF;
            dispatchNestedFling(f2, f3, z);
            l lVar = this.at;
            if (lVar != null && lVar.a(i2, i3)) {
                return true;
            }
            if (z) {
                int i4 = zE ? 1 : 0;
                if (zF) {
                    i4 |= 2;
                }
                j(i4, 1);
                int i5 = this.av;
                int iMax = Math.max(-i5, Math.min(i2, i5));
                int i6 = this.av;
                this.A.a(iMax, Math.max(-i6, Math.min(i3, i6)));
                return true;
            }
        }
        return false;
    }

    public void f() {
        setScrollState(0);
        B();
    }

    private void B() {
        this.A.b();
        i iVar = this.n;
        if (iVar != null) {
            iVar.H();
        }
    }

    public int getMinFlingVelocity() {
        return this.au;
    }

    public int getMaxFlingVelocity() {
        return this.av;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(float r7, float r8, float r9, float r10) {
        /*
            r6 = this;
            r0 = 1065353216(0x3f800000, float:1.0)
            r1 = 1
            r2 = 0
            int r3 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r3 >= 0) goto L21
            r6.g()
            android.widget.EdgeEffect r3 = r6.ah
            float r4 = -r8
            int r5 = r6.getWidth()
            float r5 = (float) r5
            float r4 = r4 / r5
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            float r9 = r0 - r9
            androidx.core.widget.d.a(r3, r4, r9)
        L1f:
            r9 = 1
            goto L3c
        L21:
            int r3 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r3 <= 0) goto L3b
            r6.h()
            android.widget.EdgeEffect r3 = r6.aj
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r4 = r8 / r4
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            androidx.core.widget.d.a(r3, r4, r9)
            goto L1f
        L3b:
            r9 = 0
        L3c:
            int r3 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r3 >= 0) goto L56
            r6.i()
            android.widget.EdgeEffect r9 = r6.ai
            float r0 = -r10
            int r3 = r6.getHeight()
            float r3 = (float) r3
            float r0 = r0 / r3
            int r3 = r6.getWidth()
            float r3 = (float) r3
            float r7 = r7 / r3
            androidx.core.widget.d.a(r9, r0, r7)
            goto L72
        L56:
            int r3 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r3 <= 0) goto L71
            r6.j()
            android.widget.EdgeEffect r9 = r6.ak
            int r3 = r6.getHeight()
            float r3 = (float) r3
            float r3 = r10 / r3
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r7 = r7 / r4
            float r0 = r0 - r7
            androidx.core.widget.d.a(r9, r3, r0)
            goto L72
        L71:
            r1 = r9
        L72:
            if (r1 != 0) goto L7c
            int r7 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r7 != 0) goto L7c
            int r7 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r7 == 0) goto L7f
        L7c:
            androidx.core.h.r.d(r6)
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.a(float, float, float, float):void");
    }

    private void C() {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.ah;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.ah.isFinished();
        } else {
            zIsFinished = false;
        }
        EdgeEffect edgeEffect2 = this.ai;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.ai.isFinished();
        }
        EdgeEffect edgeEffect3 = this.aj;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.aj.isFinished();
        }
        EdgeEffect edgeEffect4 = this.ak;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.ak.isFinished();
        }
        if (zIsFinished) {
            androidx.core.h.r.d(this);
        }
    }

    void c(int i2, int i3) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.ah;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            zIsFinished = false;
        } else {
            this.ah.onRelease();
            zIsFinished = this.ah.isFinished();
        }
        EdgeEffect edgeEffect2 = this.aj;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.aj.onRelease();
            zIsFinished |= this.aj.isFinished();
        }
        EdgeEffect edgeEffect3 = this.ai;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i3 > 0) {
            this.ai.onRelease();
            zIsFinished |= this.ai.isFinished();
        }
        EdgeEffect edgeEffect4 = this.ak;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i3 < 0) {
            this.ak.onRelease();
            zIsFinished |= this.ak.isFinished();
        }
        if (zIsFinished) {
            androidx.core.h.r.d(this);
        }
    }

    void d(int i2, int i3) {
        if (i2 < 0) {
            g();
            this.ah.onAbsorb(-i2);
        } else if (i2 > 0) {
            h();
            this.aj.onAbsorb(i2);
        }
        if (i3 < 0) {
            i();
            this.ai.onAbsorb(-i3);
        } else if (i3 > 0) {
            j();
            this.ak.onAbsorb(i3);
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        androidx.core.h.r.d(this);
    }

    void g() {
        if (this.ah != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.ag.a(this, 0);
        this.ah = edgeEffectA;
        if (this.i) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void h() {
        if (this.aj != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.ag.a(this, 2);
        this.aj = edgeEffectA;
        if (this.i) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void i() {
        if (this.ai != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.ag.a(this, 1);
        this.ai = edgeEffectA;
        if (this.i) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    void j() {
        if (this.ak != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.ag.a(this, 3);
        this.ak = edgeEffectA;
        if (this.i) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    void k() {
        this.ak = null;
        this.ai = null;
        this.aj = null;
        this.ah = null;
    }

    public void setEdgeEffectFactory(e eVar) {
        androidx.core.g.e.a(eVar);
        this.ag = eVar;
        k();
    }

    public e getEdgeEffectFactory() {
        return this.ag;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i2) {
        View viewA;
        boolean z;
        View viewD = this.n.d(view, i2);
        if (viewD != null) {
            return viewD;
        }
        boolean z2 = (this.m == null || this.n == null || o() || this.v) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z2 && (i2 == 2 || i2 == 1)) {
            if (this.n.f()) {
                int i3 = i2 == 2 ? 130 : 33;
                z = focusFinder.findNextFocus(this, view, i3) == null;
                if (O) {
                    i2 = i3;
                }
            } else {
                z = false;
            }
            if (!z && this.n.e()) {
                int i4 = (this.n.t() == 1) ^ (i2 == 2) ? 66 : 17;
                boolean z3 = focusFinder.findNextFocus(this, view, i4) == null;
                if (O) {
                    i2 = i4;
                }
                z = z3;
            }
            if (z) {
                d();
                if (c(view) == null) {
                    return null;
                }
                e();
                this.n.a(view, i2, this.f2198e, this.D);
                a(false);
            }
            viewA = focusFinder.findNextFocus(this, view, i2);
        } else {
            View viewFindNextFocus = focusFinder.findNextFocus(this, view, i2);
            if (viewFindNextFocus == null && z2) {
                d();
                if (c(view) == null) {
                    return null;
                }
                e();
                viewA = this.n.a(view, i2, this.f2198e, this.D);
                a(false);
            } else {
                viewA = viewFindNextFocus;
            }
        }
        if (viewA == null || viewA.hasFocusable()) {
            return a(view, viewA, i2) ? viewA : super.focusSearch(view, i2);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i2);
        }
        a(viewA, (View) null);
        return view;
    }

    private boolean a(View view, View view2, int i2) {
        int i3;
        if (view2 == null || view2 == this || c(view2) == null) {
            return false;
        }
        if (view == null || c(view) == null) {
            return true;
        }
        this.k.set(0, 0, view.getWidth(), view.getHeight());
        this.T.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.k);
        offsetDescendantRectToMyCoords(view2, this.T);
        byte b2 = -1;
        int i4 = this.n.t() == 1 ? -1 : 1;
        if ((this.k.left < this.T.left || this.k.right <= this.T.left) && this.k.right < this.T.right) {
            i3 = 1;
        } else {
            i3 = ((this.k.right > this.T.right || this.k.left >= this.T.right) && this.k.left > this.T.left) ? -1 : 0;
        }
        if ((this.k.top < this.T.top || this.k.bottom <= this.T.top) && this.k.bottom < this.T.bottom) {
            b2 = 1;
        } else if ((this.k.bottom <= this.T.bottom && this.k.top < this.T.bottom) || this.k.top <= this.T.top) {
            b2 = 0;
        }
        if (i2 == 1) {
            return b2 < 0 || (b2 == 0 && i3 * i4 <= 0);
        }
        if (i2 == 2) {
            return b2 > 0 || (b2 == 0 && i3 * i4 >= 0);
        }
        if (i2 == 17) {
            return i3 < 0;
        }
        if (i2 == 33) {
            return b2 < 0;
        }
        if (i2 == 66) {
            return i3 > 0;
        }
        if (i2 == 130) {
            return b2 > 0;
        }
        throw new IllegalArgumentException("Invalid direction: " + i2 + a());
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.n.a(this, this.D, view, view2) && view2 != null) {
            a(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    private void a(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.k.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof j) {
            j jVar = (j) layoutParams;
            if (!jVar.f2230e) {
                Rect rect = jVar.f2229d;
                this.k.left -= rect.left;
                this.k.right += rect.right;
                this.k.top -= rect.top;
                this.k.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.k);
            offsetRectIntoDescendantCoords(view, this.k);
        }
        this.n.a(this, view, this.k, !this.t, view2 == null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.n.a(this, view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        i iVar = this.n;
        if (iVar == null || !iVar.a(this, arrayList, i2, i3)) {
            super.addFocusables(arrayList, i2, i3);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (o()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.ae = 0;
        this.q = true;
        this.t = this.t && !isLayoutRequested();
        i iVar = this.n;
        if (iVar != null) {
            iVar.c(this);
        }
        this.G = false;
        if (f2197d) {
            androidx.recyclerview.widget.e eVar = androidx.recyclerview.widget.e.f2363a.get();
            this.B = eVar;
            if (eVar == null) {
                this.B = new androidx.recyclerview.widget.e();
                Display displayB = androidx.core.h.r.B(this);
                float f2 = 60.0f;
                if (!isInEditMode() && displayB != null) {
                    float refreshRate = displayB.getRefreshRate();
                    if (refreshRate >= 30.0f) {
                        f2 = refreshRate;
                    }
                }
                this.B.f2367d = (long) (1.0E9f / f2);
                androidx.recyclerview.widget.e.f2363a.set(this.B);
            }
            this.B.a(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        androidx.recyclerview.widget.e eVar;
        super.onDetachedFromWindow();
        f fVar = this.z;
        if (fVar != null) {
            fVar.d();
        }
        f();
        this.q = false;
        i iVar = this.n;
        if (iVar != null) {
            iVar.b(this, this.f2198e);
        }
        this.K.clear();
        removeCallbacks(this.aH);
        this.h.b();
        if (!f2197d || (eVar = this.B) == null) {
            return;
        }
        eVar.b(this);
        this.B = null;
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.q;
    }

    void a(String str) {
        if (o()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + a());
            }
            throw new IllegalStateException(str);
        }
        if (this.af > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + a()));
        }
    }

    public void a(m mVar) {
        this.U.add(mVar);
    }

    public void b(m mVar) {
        this.U.remove(mVar);
        if (this.V == mVar) {
            this.V = null;
        }
    }

    private boolean a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.V = null;
        }
        int size = this.U.size();
        for (int i2 = 0; i2 < size; i2++) {
            m mVar = this.U.get(i2);
            if (mVar.a(this, motionEvent) && action != 3) {
                this.V = mVar;
                return true;
            }
        }
        return false;
    }

    private boolean b(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        m mVar = this.V;
        if (mVar != null) {
            if (action == 0) {
                this.V = null;
            } else {
                mVar.b(this, motionEvent);
                if (action == 3 || action == 1) {
                    this.V = null;
                }
                return true;
            }
        }
        if (action != 0) {
            int size = this.U.size();
            for (int i2 = 0; i2 < size; i2++) {
                m mVar2 = this.U.get(i2);
                if (mVar2.a(this, motionEvent)) {
                    this.V = mVar2;
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.v) {
            return false;
        }
        if (a(motionEvent)) {
            E();
            return true;
        }
        i iVar = this.n;
        if (iVar == null) {
            return false;
        }
        boolean zE = iVar.e();
        boolean zF = this.n.f();
        if (this.an == null) {
            this.an = VelocityTracker.obtain();
        }
        this.an.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.aa) {
                this.aa = false;
            }
            this.am = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            this.aq = x;
            this.ao = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.ar = y;
            this.ap = y;
            if (this.al == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
            }
            int[] iArr = this.aG;
            iArr[1] = 0;
            iArr[0] = 0;
            int i2 = zE ? 1 : 0;
            if (zF) {
                i2 |= 2;
            }
            j(i2, 0);
        } else if (actionMasked == 1) {
            this.an.clear();
            a(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.am);
            if (iFindPointerIndex < 0) {
                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.am + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x2 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.al != 1) {
                int i3 = x2 - this.ao;
                int i4 = y2 - this.ap;
                if (!zE || Math.abs(i3) <= this.as) {
                    z = false;
                } else {
                    this.aq = x2;
                    z = true;
                }
                if (zF && Math.abs(i4) > this.as) {
                    this.ar = y2;
                    z = true;
                }
                if (z) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            E();
        } else if (actionMasked == 5) {
            this.am = motionEvent.getPointerId(actionIndex);
            int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.aq = x3;
            this.ao = x3;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.ar = y3;
            this.ap = y3;
        } else if (actionMasked == 6) {
            c(motionEvent);
        }
        return this.al == 1;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.U.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.U.get(i2).a(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0109  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r15) {
        /*
            Method dump skipped, instruction units count: 456
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    private void D() {
        VelocityTracker velocityTracker = this.an;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        a(0);
        C();
    }

    private void E() {
        D();
        setScrollState(0);
    }

    private void c(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.am) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.am = motionEvent.getPointerId(i2);
            int x = (int) (motionEvent.getX(i2) + 0.5f);
            this.aq = x;
            this.ao = x;
            int y = (int) (motionEvent.getY(i2) + 0.5f);
            this.ar = y;
            this.ap = y;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            androidx.recyclerview.widget.RecyclerView$i r0 = r5.n
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            boolean r0 = r5.v
            if (r0 == 0) goto Lb
            return r1
        Lb:
            int r0 = r6.getAction()
            r2 = 8
            if (r0 != r2) goto L77
            int r0 = r6.getSource()
            r0 = r0 & 2
            r2 = 0
            if (r0 == 0) goto L3c
            androidx.recyclerview.widget.RecyclerView$i r0 = r5.n
            boolean r0 = r0.f()
            if (r0 == 0) goto L2c
            r0 = 9
            float r0 = r6.getAxisValue(r0)
            float r0 = -r0
            goto L2d
        L2c:
            r0 = 0
        L2d:
            androidx.recyclerview.widget.RecyclerView$i r3 = r5.n
            boolean r3 = r3.e()
            if (r3 == 0) goto L61
            r3 = 10
            float r3 = r6.getAxisValue(r3)
            goto L62
        L3c:
            int r0 = r6.getSource()
            r3 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r3
            if (r0 == 0) goto L60
            r0 = 26
            float r0 = r6.getAxisValue(r0)
            androidx.recyclerview.widget.RecyclerView$i r3 = r5.n
            boolean r3 = r3.f()
            if (r3 == 0) goto L55
            float r0 = -r0
            goto L61
        L55:
            androidx.recyclerview.widget.RecyclerView$i r3 = r5.n
            boolean r3 = r3.e()
            if (r3 == 0) goto L60
            r3 = r0
            r0 = 0
            goto L62
        L60:
            r0 = 0
        L61:
            r3 = 0
        L62:
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L6a
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 == 0) goto L77
        L6a:
            float r2 = r5.aw
            float r3 = r3 * r2
            int r2 = (int) r3
            float r3 = r5.ax
            float r0 = r0 * r3
            int r0 = (int) r0
            r5.a(r2, r0, r6)
        L77:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        i iVar = this.n;
        if (iVar == null) {
            e(i2, i3);
            return;
        }
        boolean z = false;
        if (iVar.c()) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.n.a(this.f2198e, this.D, i2, i3);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            if (z || this.m == null) {
                return;
            }
            if (this.D.f2256d == 1) {
                M();
            }
            this.n.c(i2, i3);
            this.D.i = true;
            N();
            this.n.d(i2, i3);
            if (this.n.l()) {
                this.n.c(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.D.i = true;
                N();
                this.n.d(i2, i3);
                return;
            }
            return;
        }
        if (this.r) {
            this.n.a(this.f2198e, this.D, i2, i3);
            return;
        }
        if (this.w) {
            e();
            l();
            H();
            m();
            if (this.D.k) {
                this.D.g = true;
            } else {
                this.f.e();
                this.D.g = false;
            }
            this.w = false;
            a(false);
        } else if (this.D.k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        a aVar = this.m;
        if (aVar != null) {
            this.D.f2257e = aVar.a();
        } else {
            this.D.f2257e = 0;
        }
        e();
        this.n.a(this.f2198e, this.D, i2, i3);
        a(false);
        this.D.g = false;
    }

    void e(int i2, int i3) {
        setMeasuredDimension(i.a(i2, getPaddingLeft() + getPaddingRight(), androidx.core.h.r.i(this)), i.a(i3, getPaddingTop() + getPaddingBottom(), androidx.core.h.r.j(this)));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 == i4 && i3 == i5) {
            return;
        }
        k();
    }

    public void setItemAnimator(f fVar) {
        f fVar2 = this.z;
        if (fVar2 != null) {
            fVar2.d();
            this.z.a(null);
        }
        this.z = fVar;
        if (fVar != null) {
            fVar.a(this.aB);
        }
    }

    void l() {
        this.ae++;
    }

    void m() {
        b(true);
    }

    void b(boolean z) {
        int i2 = this.ae - 1;
        this.ae = i2;
        if (i2 < 1) {
            this.ae = 0;
            if (z) {
                F();
                x();
            }
        }
    }

    boolean n() {
        AccessibilityManager accessibilityManager = this.ac;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    private void F() {
        int i2 = this.ab;
        this.ab = 0;
        if (i2 == 0 || !n()) {
            return;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
        accessibilityEventObtain.setEventType(2048);
        androidx.core.h.a.a.a(accessibilityEventObtain, i2);
        sendAccessibilityEventUnchecked(accessibilityEventObtain);
    }

    public boolean o() {
        return this.ae > 0;
    }

    boolean a(AccessibilityEvent accessibilityEvent) {
        if (!o()) {
            return false;
        }
        int iA = accessibilityEvent != null ? androidx.core.h.a.a.a(accessibilityEvent) : 0;
        this.ab |= iA != 0 ? iA : 0;
        return true;
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (a(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public f getItemAnimator() {
        return this.z;
    }

    void p() {
        if (this.G || !this.q) {
            return;
        }
        androidx.core.h.r.a(this, this.aH);
        this.G = true;
    }

    private boolean G() {
        return this.z != null && this.n.b();
    }

    private void H() {
        if (this.x) {
            this.f.a();
            if (this.y) {
                this.n.a(this);
            }
        }
        if (G()) {
            this.f.b();
        } else {
            this.f.e();
        }
        boolean z = false;
        boolean z2 = this.E || this.F;
        this.D.j = this.t && this.z != null && (this.x || z2 || this.n.u) && (!this.x || this.m.b());
        t tVar = this.D;
        if (tVar.j && z2 && !this.x && G()) {
            z = true;
        }
        tVar.k = z;
    }

    void q() {
        if (this.m == null) {
            Log.e("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.n == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        this.D.i = false;
        if (this.D.f2256d == 1) {
            M();
            this.n.f(this);
            N();
        } else if (this.f.f() || this.n.y() != getWidth() || this.n.z() != getHeight()) {
            this.n.f(this);
            N();
        } else {
            this.n.f(this);
        }
        O();
    }

    private void I() {
        int iE;
        View focusedChild = (this.ay && hasFocus() && this.m != null) ? getFocusedChild() : null;
        w wVarD = focusedChild != null ? d(focusedChild) : null;
        if (wVarD == null) {
            J();
            return;
        }
        this.D.m = this.m.b() ? wVarD.g() : -1L;
        t tVar = this.D;
        if (this.x) {
            iE = -1;
        } else {
            iE = wVarD.q() ? wVarD.f2266d : wVarD.e();
        }
        tVar.l = iE;
        this.D.n = m(wVarD.f2263a);
    }

    private void J() {
        this.D.m = -1L;
        this.D.l = -1;
        this.D.n = -1;
    }

    private View K() {
        w wVarC;
        int i2 = this.D.l != -1 ? this.D.l : 0;
        int iE = this.D.e();
        for (int i3 = i2; i3 < iE; i3++) {
            w wVarC2 = c(i3);
            if (wVarC2 == null) {
                break;
            }
            if (wVarC2.f2263a.hasFocusable()) {
                return wVarC2.f2263a;
            }
        }
        int iMin = Math.min(iE, i2);
        do {
            iMin--;
            if (iMin < 0 || (wVarC = c(iMin)) == null) {
                return null;
            }
        } while (!wVarC.f2263a.hasFocusable());
        return wVarC.f2263a;
    }

    private void L() {
        View viewFindViewById;
        if (!this.ay || this.m == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (P && (focusedChild.getParent() == null || !focusedChild.hasFocus())) {
                if (this.g.b() == 0) {
                    requestFocus();
                    return;
                }
            } else if (!this.g.c(focusedChild)) {
                return;
            }
        }
        View viewK = null;
        w wVarA = (this.D.m == -1 || !this.m.b()) ? null : a(this.D.m);
        if (wVarA == null || this.g.c(wVarA.f2263a) || !wVarA.f2263a.hasFocusable()) {
            if (this.g.b() > 0) {
                viewK = K();
            }
        } else {
            viewK = wVarA.f2263a;
        }
        if (viewK != null) {
            if (this.D.n != -1 && (viewFindViewById = viewK.findViewById(this.D.n)) != null && viewFindViewById.isFocusable()) {
                viewK = viewFindViewById;
            }
            viewK.requestFocus();
        }
    }

    private int m(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    final void a(t tVar) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.A.f2258a;
            tVar.o = overScroller.getFinalX() - overScroller.getCurrX();
            tVar.p = overScroller.getFinalY() - overScroller.getCurrY();
        } else {
            tVar.o = 0;
            tVar.p = 0;
        }
    }

    private void M() {
        this.D.a(1);
        a(this.D);
        this.D.i = false;
        e();
        this.h.a();
        l();
        H();
        I();
        t tVar = this.D;
        tVar.h = tVar.j && this.F;
        this.F = false;
        this.E = false;
        t tVar2 = this.D;
        tVar2.g = tVar2.k;
        this.D.f2257e = this.m.a();
        a(this.aD);
        if (this.D.j) {
            int iB = this.g.b();
            for (int i2 = 0; i2 < iB; i2++) {
                w wVarE = e(this.g.b(i2));
                if (!wVarE.c() && (!wVarE.n() || this.m.b())) {
                    this.h.a(wVarE, this.z.a(this.D, wVarE, f.e(wVarE), wVarE.u()));
                    if (this.D.h && wVarE.z() && !wVarE.q() && !wVarE.c() && !wVarE.n()) {
                        this.h.a(a(wVarE), wVarE);
                    }
                }
            }
        }
        if (this.D.k) {
            s();
            boolean z = this.D.f;
            this.D.f = false;
            this.n.c(this.f2198e, this.D);
            this.D.f = z;
            for (int i3 = 0; i3 < this.g.b(); i3++) {
                w wVarE2 = e(this.g.b(i3));
                if (!wVarE2.c() && !this.h.d(wVarE2)) {
                    int iE = f.e(wVarE2);
                    boolean zA = wVarE2.a(8192);
                    if (!zA) {
                        iE |= 4096;
                    }
                    f.c cVarA = this.z.a(this.D, wVarE2, iE, wVarE2.u());
                    if (zA) {
                        a(wVarE2, cVarA);
                    } else {
                        this.h.b(wVarE2, cVarA);
                    }
                }
            }
            t();
        } else {
            t();
        }
        m();
        a(false);
        this.D.f2256d = 2;
    }

    private void N() {
        e();
        l();
        this.D.a(6);
        this.f.e();
        this.D.f2257e = this.m.a();
        this.D.f2255c = 0;
        this.D.g = false;
        this.n.c(this.f2198e, this.D);
        this.D.f = false;
        this.S = null;
        t tVar = this.D;
        tVar.j = tVar.j && this.z != null;
        this.D.f2256d = 4;
        m();
        a(false);
    }

    private void O() {
        this.D.a(4);
        e();
        l();
        this.D.f2256d = 1;
        if (this.D.j) {
            for (int iB = this.g.b() - 1; iB >= 0; iB--) {
                w wVarE = e(this.g.b(iB));
                if (!wVarE.c()) {
                    long jA = a(wVarE);
                    f.c cVarA = this.z.a(this.D, wVarE);
                    w wVarA = this.h.a(jA);
                    if (wVarA != null && !wVarA.c()) {
                        boolean zA = this.h.a(wVarA);
                        boolean zA2 = this.h.a(wVarE);
                        if (zA && wVarA == wVarE) {
                            this.h.c(wVarE, cVarA);
                        } else {
                            f.c cVarB = this.h.b(wVarA);
                            this.h.c(wVarE, cVarA);
                            f.c cVarC = this.h.c(wVarE);
                            if (cVarB == null) {
                                a(jA, wVarE, wVarA);
                            } else {
                                a(wVarA, wVarE, cVarB, cVarC, zA, zA2);
                            }
                        }
                    } else {
                        this.h.c(wVarE, cVarA);
                    }
                }
            }
            this.h.a(this.aI);
        }
        this.n.b(this.f2198e);
        t tVar = this.D;
        tVar.f2254b = tVar.f2257e;
        this.x = false;
        this.y = false;
        this.D.j = false;
        this.D.k = false;
        this.n.u = false;
        if (this.f2198e.f2238b != null) {
            this.f2198e.f2238b.clear();
        }
        if (this.n.y) {
            this.n.x = 0;
            this.n.y = false;
            this.f2198e.b();
        }
        this.n.a(this.D);
        m();
        a(false);
        this.h.a();
        int[] iArr = this.aD;
        if (k(iArr[0], iArr[1])) {
            i(0, 0);
        }
        L();
        J();
    }

    private void a(long j2, w wVar, w wVar2) {
        int iB = this.g.b();
        for (int i2 = 0; i2 < iB; i2++) {
            w wVarE = e(this.g.b(i2));
            if (wVarE != wVar && a(wVarE) == j2) {
                a aVar = this.m;
                if (aVar != null && aVar.b()) {
                    throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + wVarE + " \n View Holder 2:" + wVar + a());
                }
                throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + wVarE + " \n View Holder 2:" + wVar + a());
            }
        }
        Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + wVar2 + " cannot be found but it is necessary for " + wVar + a());
    }

    void a(w wVar, f.c cVar) {
        wVar.a(0, 8192);
        if (this.D.h && wVar.z() && !wVar.q() && !wVar.c()) {
            this.h.a(a(wVar), wVar);
        }
        this.h.a(wVar, cVar);
    }

    private void a(int[] iArr) {
        int iB = this.g.b();
        if (iB == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        for (int i4 = 0; i4 < iB; i4++) {
            w wVarE = e(this.g.b(i4));
            if (!wVarE.c()) {
                int iD = wVarE.d();
                if (iD < i2) {
                    i2 = iD;
                }
                if (iD > i3) {
                    i3 = iD;
                }
            }
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    private boolean k(int i2, int i3) {
        a(this.aD);
        int[] iArr = this.aD;
        return (iArr[0] == i2 && iArr[1] == i3) ? false : true;
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z) {
        w wVarE = e(view);
        if (wVarE != null) {
            if (wVarE.r()) {
                wVarE.m();
            } else if (!wVarE.c()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + wVarE + a());
            }
        }
        view.clearAnimation();
        k(view);
        super.removeDetachedView(view, z);
    }

    long a(w wVar) {
        return this.m.b() ? wVar.g() : wVar.f2265c;
    }

    void a(w wVar, f.c cVar, f.c cVar2) {
        wVar.a(false);
        if (this.z.b(wVar, cVar, cVar2)) {
            p();
        }
    }

    void b(w wVar, f.c cVar, f.c cVar2) {
        e(wVar);
        wVar.a(false);
        if (this.z.a(wVar, cVar, cVar2)) {
            p();
        }
    }

    private void a(w wVar, w wVar2, f.c cVar, f.c cVar2, boolean z, boolean z2) {
        wVar.a(false);
        if (z) {
            e(wVar);
        }
        if (wVar != wVar2) {
            if (z2) {
                e(wVar2);
            }
            wVar.h = wVar2;
            e(wVar);
            this.f2198e.c(wVar);
            wVar2.a(false);
            wVar2.i = wVar;
        }
        if (this.z.a(wVar, wVar2, cVar, cVar2)) {
            p();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        androidx.core.d.d.a("RV OnLayout");
        q();
        androidx.core.d.d.a();
        this.t = true;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.W == 0 && !this.v) {
            super.requestLayout();
        } else {
            this.u = true;
        }
    }

    void r() {
        int iC = this.g.c();
        for (int i2 = 0; i2 < iC; i2++) {
            ((j) this.g.d(i2).getLayoutParams()).f2230e = true;
        }
        this.f2198e.j();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        int size = this.p.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            this.p.get(i2).a(canvas, this, this.D);
        }
        EdgeEffect edgeEffect = this.ah;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.i ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.ah;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.ai;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.i) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.ai;
            z |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.aj;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.i ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            EdgeEffect edgeEffect6 = this.aj;
            z |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.ak;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.i) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.ak;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z2 = true;
            }
            z |= z2;
            canvas.restoreToCount(iSave4);
        }
        if ((z || this.z == null || this.p.size() <= 0 || !this.z.b()) ? z : true) {
            androidx.core.h.r.d(this);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.p.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.p.get(i2).b(canvas, this, this.D);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof j) && this.n.a((j) layoutParams);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        i iVar = this.n;
        if (iVar == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager" + a());
        }
        return iVar.a();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        i iVar = this.n;
        if (iVar == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager" + a());
        }
        return iVar.a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        i iVar = this.n;
        if (iVar == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager" + a());
        }
        return iVar.a(layoutParams);
    }

    void s() {
        int iC = this.g.c();
        for (int i2 = 0; i2 < iC; i2++) {
            w wVarE = e(this.g.d(i2));
            if (!wVarE.c()) {
                wVarE.b();
            }
        }
    }

    void t() {
        int iC = this.g.c();
        for (int i2 = 0; i2 < iC; i2++) {
            w wVarE = e(this.g.d(i2));
            if (!wVarE.c()) {
                wVarE.a();
            }
        }
        this.f2198e.i();
    }

    void f(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int iC = this.g.c();
        if (i2 < i3) {
            i6 = -1;
            i5 = i2;
            i4 = i3;
        } else {
            i4 = i2;
            i5 = i3;
            i6 = 1;
        }
        for (int i7 = 0; i7 < iC; i7++) {
            w wVarE = e(this.g.d(i7));
            if (wVarE != null && wVarE.f2265c >= i5 && wVarE.f2265c <= i4) {
                if (wVarE.f2265c == i2) {
                    wVarE.a(i3 - i2, false);
                } else {
                    wVarE.a(i6, false);
                }
                this.D.f = true;
            }
        }
        this.f2198e.a(i2, i3);
        requestLayout();
    }

    void g(int i2, int i3) {
        int iC = this.g.c();
        for (int i4 = 0; i4 < iC; i4++) {
            w wVarE = e(this.g.d(i4));
            if (wVarE != null && !wVarE.c() && wVarE.f2265c >= i2) {
                wVarE.a(i3, false);
                this.D.f = true;
            }
        }
        this.f2198e.b(i2, i3);
        requestLayout();
    }

    void a(int i2, int i3, boolean z) {
        int i4 = i2 + i3;
        int iC = this.g.c();
        for (int i5 = 0; i5 < iC; i5++) {
            w wVarE = e(this.g.d(i5));
            if (wVarE != null && !wVarE.c()) {
                if (wVarE.f2265c >= i4) {
                    wVarE.a(-i3, z);
                    this.D.f = true;
                } else if (wVarE.f2265c >= i2) {
                    wVarE.a(i2 - 1, -i3, z);
                    this.D.f = true;
                }
            }
        }
        this.f2198e.a(i2, i3, z);
        requestLayout();
    }

    void a(int i2, int i3, Object obj) {
        int iC = this.g.c();
        int i4 = i2 + i3;
        for (int i5 = 0; i5 < iC; i5++) {
            View viewD = this.g.d(i5);
            w wVarE = e(viewD);
            if (wVarE != null && !wVarE.c() && wVarE.f2265c >= i2 && wVarE.f2265c < i4) {
                wVarE.b(2);
                wVarE.a(obj);
                ((j) viewD.getLayoutParams()).f2230e = true;
            }
        }
        this.f2198e.c(i2, i3);
    }

    boolean b(w wVar) {
        f fVar = this.z;
        return fVar == null || fVar.a(wVar, wVar.u());
    }

    void c(boolean z) {
        this.y = z | this.y;
        this.x = true;
        u();
    }

    void u() {
        int iC = this.g.c();
        for (int i2 = 0; i2 < iC; i2++) {
            w wVarE = e(this.g.d(i2));
            if (wVarE != null && !wVarE.c()) {
                wVarE.b(6);
            }
        }
        r();
        this.f2198e.h();
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.ay;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.ay = z;
    }

    public w b(View view) {
        ViewParent parent = view.getParent();
        if (parent != null && parent != this) {
            throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
        }
        return e(view);
    }

    public View c(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public w d(View view) {
        View viewC = c(view);
        if (viewC == null) {
            return null;
        }
        return b(viewC);
    }

    static w e(View view) {
        if (view == null) {
            return null;
        }
        return ((j) view.getLayoutParams()).f2228c;
    }

    public int f(View view) {
        w wVarE = e(view);
        if (wVarE != null) {
            return wVarE.d();
        }
        return -1;
    }

    public w c(int i2) {
        w wVar = null;
        if (this.x) {
            return null;
        }
        int iC = this.g.c();
        for (int i3 = 0; i3 < iC; i3++) {
            w wVarE = e(this.g.d(i3));
            if (wVarE != null && !wVarE.q() && d(wVarE) == i2) {
                if (!this.g.c(wVarE.f2263a)) {
                    return wVarE;
                }
                wVar = wVarE;
            }
        }
        return wVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    androidx.recyclerview.widget.RecyclerView.w a(int r6, boolean r7) {
        /*
            r5 = this;
            androidx.recyclerview.widget.b r0 = r5.g
            int r0 = r0.c()
            r1 = 0
            r2 = 0
        L8:
            if (r2 >= r0) goto L3a
            androidx.recyclerview.widget.b r3 = r5.g
            android.view.View r3 = r3.d(r2)
            androidx.recyclerview.widget.RecyclerView$w r3 = e(r3)
            if (r3 == 0) goto L37
            boolean r4 = r3.q()
            if (r4 != 0) goto L37
            if (r7 == 0) goto L23
            int r4 = r3.f2265c
            if (r4 == r6) goto L2a
            goto L37
        L23:
            int r4 = r3.d()
            if (r4 == r6) goto L2a
            goto L37
        L2a:
            androidx.recyclerview.widget.b r1 = r5.g
            android.view.View r4 = r3.f2263a
            boolean r1 = r1.c(r4)
            if (r1 == 0) goto L36
            r1 = r3
            goto L37
        L36:
            return r3
        L37:
            int r2 = r2 + 1
            goto L8
        L3a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.a(int, boolean):androidx.recyclerview.widget.RecyclerView$w");
    }

    public w a(long j2) {
        a aVar = this.m;
        w wVar = null;
        if (aVar != null && aVar.b()) {
            int iC = this.g.c();
            for (int i2 = 0; i2 < iC; i2++) {
                w wVarE = e(this.g.d(i2));
                if (wVarE != null && !wVarE.q() && wVarE.g() == j2) {
                    if (!this.g.c(wVarE.f2263a)) {
                        return wVarE;
                    }
                    wVar = wVarE;
                }
            }
        }
        return wVar;
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    public void d(int i2) {
        int iB = this.g.b();
        for (int i3 = 0; i3 < iB; i3++) {
            this.g.b(i3).offsetTopAndBottom(i2);
        }
    }

    public void e(int i2) {
        int iB = this.g.b();
        for (int i3 = 0; i3 < iB; i3++) {
            this.g.b(i3).offsetLeftAndRight(i2);
        }
    }

    static void a(View view, Rect rect) {
        j jVar = (j) view.getLayoutParams();
        Rect rect2 = jVar.f2229d;
        rect.set((view.getLeft() - rect2.left) - jVar.leftMargin, (view.getTop() - rect2.top) - jVar.topMargin, view.getRight() + rect2.right + jVar.rightMargin, view.getBottom() + rect2.bottom + jVar.bottomMargin);
    }

    Rect i(View view) {
        j jVar = (j) view.getLayoutParams();
        if (!jVar.f2230e) {
            return jVar.f2229d;
        }
        if (this.D.a() && (jVar.e() || jVar.c())) {
            return jVar.f2229d;
        }
        Rect rect = jVar.f2229d;
        rect.set(0, 0, 0, 0);
        int size = this.p.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.k.set(0, 0, 0, 0);
            this.p.get(i2).a(this.k, view, this, this.D);
            rect.left += this.k.left;
            rect.top += this.k.top;
            rect.right += this.k.right;
            rect.bottom += this.k.bottom;
        }
        jVar.f2230e = false;
        return rect;
    }

    void i(int i2, int i3) {
        this.af++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX, scrollY);
        h(i2, i3);
        n nVar = this.az;
        if (nVar != null) {
            nVar.a(this, i2, i3);
        }
        List<n> list = this.aA;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.aA.get(size).a(this, i2, i3);
            }
        }
        this.af--;
    }

    void g(int i2) {
        i iVar = this.n;
        if (iVar != null) {
            iVar.l(i2);
        }
        f(i2);
        n nVar = this.az;
        if (nVar != null) {
            nVar.a(this, i2);
        }
        List<n> list = this.aA;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.aA.get(size).a(this, i2);
            }
        }
    }

    public boolean v() {
        return !this.t || this.x || this.f.d();
    }

    class v implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        OverScroller f2258a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f2261d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f2262e;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Interpolator f2259b = RecyclerView.L;
        private boolean f = false;
        private boolean g = false;

        v() {
            this.f2258a = new OverScroller(RecyclerView.this.getContext(), RecyclerView.L);
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x00ea  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00ed  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00f4  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x00fd  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 430
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.v.run():void");
        }

        private void c() {
            this.g = false;
            this.f = true;
        }

        private void d() {
            this.f = false;
            if (this.g) {
                a();
            }
        }

        void a() {
            if (this.f) {
                this.g = true;
            } else {
                RecyclerView.this.removeCallbacks(this);
                androidx.core.h.r.a(RecyclerView.this, this);
            }
        }

        public void a(int i, int i2) {
            RecyclerView.this.setScrollState(2);
            this.f2262e = 0;
            this.f2261d = 0;
            this.f2258a.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            a();
        }

        public void b(int i, int i2) {
            a(i, i2, 0, 0);
        }

        public void a(int i, int i2, int i3, int i4) {
            a(i, i2, b(i, i2, i3, i4));
        }

        private float a(float f) {
            return (float) Math.sin((f - 0.5f) * 0.47123894f);
        }

        private int b(int i, int i2, int i3, int i4) {
            int iRound;
            int iAbs = Math.abs(i);
            int iAbs2 = Math.abs(i2);
            boolean z = iAbs > iAbs2;
            int iSqrt = (int) Math.sqrt((i3 * i3) + (i4 * i4));
            int iSqrt2 = (int) Math.sqrt((i * i) + (i2 * i2));
            RecyclerView recyclerView = RecyclerView.this;
            int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
            int i5 = width / 2;
            float f = width;
            float f2 = i5;
            float fA = f2 + (a(Math.min(1.0f, (iSqrt2 * 1.0f) / f)) * f2);
            if (iSqrt > 0) {
                iRound = Math.round(Math.abs(fA / iSqrt) * 1000.0f) * 4;
            } else {
                if (!z) {
                    iAbs = iAbs2;
                }
                iRound = (int) (((iAbs / f) + 1.0f) * 300.0f);
            }
            return Math.min(iRound, 2000);
        }

        public void a(int i, int i2, int i3) {
            a(i, i2, i3, RecyclerView.L);
        }

        public void a(int i, int i2, Interpolator interpolator) {
            int iB = b(i, i2, 0, 0);
            if (interpolator == null) {
                interpolator = RecyclerView.L;
            }
            a(i, i2, iB, interpolator);
        }

        public void a(int i, int i2, int i3, Interpolator interpolator) {
            if (this.f2259b != interpolator) {
                this.f2259b = interpolator;
                this.f2258a = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            RecyclerView.this.setScrollState(2);
            this.f2262e = 0;
            this.f2261d = 0;
            this.f2258a.startScroll(0, 0, i, i2, i3);
            if (Build.VERSION.SDK_INT < 23) {
                this.f2258a.computeScrollOffset();
            }
            a();
        }

        public void b() {
            RecyclerView.this.removeCallbacks(this);
            this.f2258a.abortAnimation();
        }
    }

    void w() {
        int iB = this.g.b();
        for (int i2 = 0; i2 < iB; i2++) {
            View viewB = this.g.b(i2);
            w wVarB = b(viewB);
            if (wVarB != null && wVarB.i != null) {
                View view = wVarB.i.f2263a;
                int left = viewB.getLeft();
                int top = viewB.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    private class r extends c {
        r() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public void a() {
            RecyclerView.this.a((String) null);
            RecyclerView.this.D.f = true;
            RecyclerView.this.c(true);
            if (RecyclerView.this.f.d()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public void a(int i, int i2, Object obj) {
            RecyclerView.this.a((String) null);
            if (RecyclerView.this.f.a(i, i2, obj)) {
                b();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public void b(int i, int i2) {
            RecyclerView.this.a((String) null);
            if (RecyclerView.this.f.b(i, i2)) {
                b();
            }
        }

        void b() {
            if (RecyclerView.f2196c && RecyclerView.this.r && RecyclerView.this.q) {
                RecyclerView recyclerView = RecyclerView.this;
                androidx.core.h.r.a(recyclerView, recyclerView.j);
            } else {
                RecyclerView.this.w = true;
                RecyclerView.this.requestLayout();
            }
        }
    }

    public static class e {
        protected EdgeEffect a(RecyclerView recyclerView, int i) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public static class o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SparseArray<a> f2231a = new SparseArray<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f2232b = 0;

        static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final ArrayList<w> f2233a = new ArrayList<>();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f2234b = 5;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            long f2235c = 0;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            long f2236d = 0;

            a() {
            }
        }

        public void a() {
            for (int i = 0; i < this.f2231a.size(); i++) {
                this.f2231a.valueAt(i).f2233a.clear();
            }
        }

        public w a(int i) {
            a aVar = this.f2231a.get(i);
            if (aVar == null || aVar.f2233a.isEmpty()) {
                return null;
            }
            return aVar.f2233a.remove(r2.size() - 1);
        }

        public void a(w wVar) {
            int iH = wVar.h();
            ArrayList<w> arrayList = b(iH).f2233a;
            if (this.f2231a.get(iH).f2234b <= arrayList.size()) {
                return;
            }
            wVar.v();
            arrayList.add(wVar);
        }

        long a(long j, long j2) {
            return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
        }

        void a(int i, long j) {
            a aVarB = b(i);
            aVarB.f2235c = a(aVarB.f2235c, j);
        }

        void b(int i, long j) {
            a aVarB = b(i);
            aVarB.f2236d = a(aVarB.f2236d, j);
        }

        boolean a(int i, long j, long j2) {
            long j3 = b(i).f2235c;
            return j3 == 0 || j + j3 < j2;
        }

        boolean b(int i, long j, long j2) {
            long j3 = b(i).f2236d;
            return j3 == 0 || j + j3 < j2;
        }

        void b() {
            this.f2232b++;
        }

        void c() {
            this.f2232b--;
        }

        void a(a aVar, a aVar2, boolean z) {
            if (aVar != null) {
                c();
            }
            if (!z && this.f2232b == 0) {
                a();
            }
            if (aVar2 != null) {
                b();
            }
        }

        private a b(int i) {
            a aVar = this.f2231a.get(i);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            this.f2231a.put(i, aVar2);
            return aVar2;
        }
    }

    static RecyclerView j(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView recyclerViewJ = j(viewGroup.getChildAt(i2));
            if (recyclerViewJ != null) {
                return recyclerViewJ;
            }
        }
        return null;
    }

    static void c(w wVar) {
        if (wVar.f2264b != null) {
            RecyclerView recyclerView = wVar.f2264b.get();
            while (recyclerView != null) {
                if (recyclerView == wVar.f2263a) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            wVar.f2264b = null;
        }
    }

    long getNanoTime() {
        if (f2197d) {
            return System.nanoTime();
        }
        return 0L;
    }

    public final class p {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        o f2241e;
        private u i;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ArrayList<w> f2237a = new ArrayList<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ArrayList<w> f2238b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final ArrayList<w> f2239c = new ArrayList<>();
        private final List<w> g = Collections.unmodifiableList(this.f2237a);
        private int h = 2;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2240d = 2;

        public p() {
        }

        public void a() {
            this.f2237a.clear();
            d();
        }

        public void a(int i) {
            this.h = i;
            b();
        }

        void b() {
            this.f2240d = this.h + (RecyclerView.this.n != null ? RecyclerView.this.n.x : 0);
            for (int size = this.f2239c.size() - 1; size >= 0 && this.f2239c.size() > this.f2240d; size--) {
                d(size);
            }
        }

        public List<w> c() {
            return this.g;
        }

        boolean a(w wVar) {
            if (wVar.q()) {
                return RecyclerView.this.D.a();
            }
            if (wVar.f2265c < 0 || wVar.f2265c >= RecyclerView.this.m.a()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + wVar + RecyclerView.this.a());
            }
            if (RecyclerView.this.D.a() || RecyclerView.this.m.a(wVar.f2265c) == wVar.h()) {
                return !RecyclerView.this.m.b() || wVar.g() == RecyclerView.this.m.b(wVar.f2265c);
            }
            return false;
        }

        private boolean a(w wVar, int i, int i2, long j) {
            wVar.p = RecyclerView.this;
            int iH = wVar.h();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j != Long.MAX_VALUE && !this.f2241e.b(iH, nanoTime, j)) {
                return false;
            }
            RecyclerView.this.m.b(wVar, i);
            this.f2241e.b(wVar.h(), RecyclerView.this.getNanoTime() - nanoTime);
            e(wVar);
            if (!RecyclerView.this.D.a()) {
                return true;
            }
            wVar.g = i2;
            return true;
        }

        public int b(int i) {
            if (i >= 0 && i < RecyclerView.this.D.e()) {
                return !RecyclerView.this.D.a() ? i : RecyclerView.this.f.b(i);
            }
            throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.D.e() + RecyclerView.this.a());
        }

        public View c(int i) {
            return a(i, false);
        }

        View a(int i, boolean z) {
            return a(i, z, Long.MAX_VALUE).f2263a;
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x0215  */
        /* JADX WARN: Removed duplicated region for block: B:106:0x0231 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:108:0x0234  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0188 A[PHI: r1 r4
  0x0188: PHI (r1v12 androidx.recyclerview.widget.RecyclerView$w) = (r1v11 androidx.recyclerview.widget.RecyclerView$w), (r1v31 androidx.recyclerview.widget.RecyclerView$w) binds: [B:28:0x005d, B:59:0x0102] A[DONT_GENERATE, DONT_INLINE]
  0x0188: PHI (r4v3 boolean) = (r4v2 boolean), (r4v7 boolean) binds: [B:28:0x005d, B:59:0x0102] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:82:0x01a9  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x01d7  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x0207  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        androidx.recyclerview.widget.RecyclerView.w a(int r17, boolean r18, long r19) {
            /*
                Method dump skipped, instruction units count: 624
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.p.a(int, boolean, long):androidx.recyclerview.widget.RecyclerView$w");
        }

        private void e(w wVar) {
            if (RecyclerView.this.n()) {
                View view = wVar.f2263a;
                if (androidx.core.h.r.e(view) == 0) {
                    androidx.core.h.r.b(view, 1);
                }
                if (androidx.core.h.r.b(view)) {
                    return;
                }
                wVar.b(16384);
                androidx.core.h.r.a(view, RecyclerView.this.H.c());
            }
        }

        private void f(w wVar) {
            if (wVar.f2263a instanceof ViewGroup) {
                a((ViewGroup) wVar.f2263a, false);
            }
        }

        private void a(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    a((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        public void a(View view) {
            w wVarE = RecyclerView.e(view);
            if (wVarE.r()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (wVarE.i()) {
                wVarE.j();
            } else if (wVarE.k()) {
                wVarE.l();
            }
            b(wVarE);
        }

        void d() {
            for (int size = this.f2239c.size() - 1; size >= 0; size--) {
                d(size);
            }
            this.f2239c.clear();
            if (RecyclerView.f2197d) {
                RecyclerView.this.C.a();
            }
        }

        void d(int i) {
            a(this.f2239c.get(i), true);
            this.f2239c.remove(i);
        }

        void b(w wVar) {
            boolean z;
            boolean z2 = true;
            if (wVar.i() || wVar.f2263a.getParent() != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(wVar.i());
                sb.append(" isAttached:");
                sb.append(wVar.f2263a.getParent() != null);
                sb.append(RecyclerView.this.a());
                throw new IllegalArgumentException(sb.toString());
            }
            if (wVar.r()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + wVar + RecyclerView.this.a());
            }
            if (wVar.c()) {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.a());
            }
            boolean zY = wVar.y();
            if ((RecyclerView.this.m != null && zY && RecyclerView.this.m.b(wVar)) || wVar.w()) {
                if (this.f2240d <= 0 || wVar.a(526)) {
                    z = false;
                } else {
                    int size = this.f2239c.size();
                    if (size >= this.f2240d && size > 0) {
                        d(0);
                        size--;
                    }
                    if (RecyclerView.f2197d && size > 0 && !RecyclerView.this.C.a(wVar.f2265c)) {
                        int i = size - 1;
                        while (i >= 0) {
                            if (!RecyclerView.this.C.a(this.f2239c.get(i).f2265c)) {
                                break;
                            } else {
                                i--;
                            }
                        }
                        size = i + 1;
                    }
                    this.f2239c.add(size, wVar);
                    z = true;
                }
                if (z) {
                    z = z;
                    z2 = false;
                } else {
                    a(wVar, true);
                    z = z;
                }
            } else {
                z2 = false;
            }
            RecyclerView.this.h.g(wVar);
            if (z || z2 || !zY) {
                return;
            }
            wVar.p = null;
        }

        void a(w wVar, boolean z) {
            RecyclerView.c(wVar);
            if (wVar.a(16384)) {
                wVar.a(0, 16384);
                androidx.core.h.r.a(wVar.f2263a, (androidx.core.h.a) null);
            }
            if (z) {
                d(wVar);
            }
            wVar.p = null;
            g().a(wVar);
        }

        void b(View view) {
            w wVarE = RecyclerView.e(view);
            wVarE.m = null;
            wVarE.n = false;
            wVarE.l();
            b(wVarE);
        }

        void c(View view) {
            w wVarE = RecyclerView.e(view);
            if (wVarE.a(12) || !wVarE.z() || RecyclerView.this.b(wVarE)) {
                if (wVarE.n() && !wVarE.q() && !RecyclerView.this.m.b()) {
                    throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.a());
                }
                wVarE.a(this, false);
                this.f2237a.add(wVarE);
                return;
            }
            if (this.f2238b == null) {
                this.f2238b = new ArrayList<>();
            }
            wVarE.a(this, true);
            this.f2238b.add(wVarE);
        }

        void c(w wVar) {
            if (wVar.n) {
                this.f2238b.remove(wVar);
            } else {
                this.f2237a.remove(wVar);
            }
            wVar.m = null;
            wVar.n = false;
            wVar.l();
        }

        int e() {
            return this.f2237a.size();
        }

        View e(int i) {
            return this.f2237a.get(i).f2263a;
        }

        void f() {
            this.f2237a.clear();
            ArrayList<w> arrayList = this.f2238b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        w f(int i) {
            int size;
            int iB;
            ArrayList<w> arrayList = this.f2238b;
            if (arrayList != null && (size = arrayList.size()) != 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    w wVar = this.f2238b.get(i2);
                    if (!wVar.k() && wVar.d() == i) {
                        wVar.b(32);
                        return wVar;
                    }
                }
                if (RecyclerView.this.m.b() && (iB = RecyclerView.this.f.b(i)) > 0 && iB < RecyclerView.this.m.a()) {
                    long jB = RecyclerView.this.m.b(iB);
                    for (int i3 = 0; i3 < size; i3++) {
                        w wVar2 = this.f2238b.get(i3);
                        if (!wVar2.k() && wVar2.g() == jB) {
                            wVar2.b(32);
                            return wVar2;
                        }
                    }
                }
            }
            return null;
        }

        w b(int i, boolean z) {
            View viewC;
            int size = this.f2237a.size();
            for (int i2 = 0; i2 < size; i2++) {
                w wVar = this.f2237a.get(i2);
                if (!wVar.k() && wVar.d() == i && !wVar.n() && (RecyclerView.this.D.g || !wVar.q())) {
                    wVar.b(32);
                    return wVar;
                }
            }
            if (!z && (viewC = RecyclerView.this.g.c(i)) != null) {
                w wVarE = RecyclerView.e(viewC);
                RecyclerView.this.g.e(viewC);
                int iB = RecyclerView.this.g.b(viewC);
                if (iB == -1) {
                    throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + wVarE + RecyclerView.this.a());
                }
                RecyclerView.this.g.e(iB);
                c(viewC);
                wVarE.b(8224);
                return wVarE;
            }
            int size2 = this.f2239c.size();
            for (int i3 = 0; i3 < size2; i3++) {
                w wVar2 = this.f2239c.get(i3);
                if (!wVar2.n() && wVar2.d() == i) {
                    if (!z) {
                        this.f2239c.remove(i3);
                    }
                    return wVar2;
                }
            }
            return null;
        }

        w a(long j, int i, boolean z) {
            for (int size = this.f2237a.size() - 1; size >= 0; size--) {
                w wVar = this.f2237a.get(size);
                if (wVar.g() == j && !wVar.k()) {
                    if (i == wVar.h()) {
                        wVar.b(32);
                        if (wVar.q() && !RecyclerView.this.D.a()) {
                            wVar.a(2, 14);
                        }
                        return wVar;
                    }
                    if (!z) {
                        this.f2237a.remove(size);
                        RecyclerView.this.removeDetachedView(wVar.f2263a, false);
                        b(wVar.f2263a);
                    }
                }
            }
            int size2 = this.f2239c.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                w wVar2 = this.f2239c.get(size2);
                if (wVar2.g() == j) {
                    if (i == wVar2.h()) {
                        if (!z) {
                            this.f2239c.remove(size2);
                        }
                        return wVar2;
                    }
                    if (!z) {
                        d(size2);
                        return null;
                    }
                }
            }
        }

        void d(w wVar) {
            if (RecyclerView.this.o != null) {
                RecyclerView.this.o.a(wVar);
            }
            if (RecyclerView.this.m != null) {
                RecyclerView.this.m.a(wVar);
            }
            if (RecyclerView.this.D != null) {
                RecyclerView.this.h.g(wVar);
            }
        }

        void a(a aVar, a aVar2, boolean z) {
            a();
            g().a(aVar, aVar2, z);
        }

        void a(int i, int i2) {
            int i3;
            int i4;
            int i5;
            if (i < i2) {
                i3 = -1;
                i5 = i;
                i4 = i2;
            } else {
                i3 = 1;
                i4 = i;
                i5 = i2;
            }
            int size = this.f2239c.size();
            for (int i6 = 0; i6 < size; i6++) {
                w wVar = this.f2239c.get(i6);
                if (wVar != null && wVar.f2265c >= i5 && wVar.f2265c <= i4) {
                    if (wVar.f2265c == i) {
                        wVar.a(i2 - i, false);
                    } else {
                        wVar.a(i3, false);
                    }
                }
            }
        }

        void b(int i, int i2) {
            int size = this.f2239c.size();
            for (int i3 = 0; i3 < size; i3++) {
                w wVar = this.f2239c.get(i3);
                if (wVar != null && wVar.f2265c >= i) {
                    wVar.a(i2, true);
                }
            }
        }

        void a(int i, int i2, boolean z) {
            int i3 = i + i2;
            for (int size = this.f2239c.size() - 1; size >= 0; size--) {
                w wVar = this.f2239c.get(size);
                if (wVar != null) {
                    if (wVar.f2265c >= i3) {
                        wVar.a(-i2, z);
                    } else if (wVar.f2265c >= i) {
                        wVar.b(8);
                        d(size);
                    }
                }
            }
        }

        void a(u uVar) {
            this.i = uVar;
        }

        void a(o oVar) {
            o oVar2 = this.f2241e;
            if (oVar2 != null) {
                oVar2.c();
            }
            this.f2241e = oVar;
            if (oVar == null || RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.f2241e.b();
        }

        o g() {
            if (this.f2241e == null) {
                this.f2241e = new o();
            }
            return this.f2241e;
        }

        void c(int i, int i2) {
            int i3;
            int i4 = i2 + i;
            for (int size = this.f2239c.size() - 1; size >= 0; size--) {
                w wVar = this.f2239c.get(size);
                if (wVar != null && (i3 = wVar.f2265c) >= i && i3 < i4) {
                    wVar.b(2);
                    d(size);
                }
            }
        }

        void h() {
            int size = this.f2239c.size();
            for (int i = 0; i < size; i++) {
                w wVar = this.f2239c.get(i);
                if (wVar != null) {
                    wVar.b(6);
                    wVar.a((Object) null);
                }
            }
            if (RecyclerView.this.m == null || !RecyclerView.this.m.b()) {
                d();
            }
        }

        void i() {
            int size = this.f2239c.size();
            for (int i = 0; i < size; i++) {
                this.f2239c.get(i).a();
            }
            int size2 = this.f2237a.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f2237a.get(i2).a();
            }
            ArrayList<w> arrayList = this.f2238b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.f2238b.get(i3).a();
                }
            }
        }

        void j() {
            int size = this.f2239c.size();
            for (int i = 0; i < size; i++) {
                j jVar = (j) this.f2239c.get(i).f2263a.getLayoutParams();
                if (jVar != null) {
                    jVar.f2230e = true;
                }
            }
        }
    }

    public static abstract class a<VH extends w> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b f2205a = new b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f2206b = false;

        public abstract int a();

        public int a(int i) {
            return 0;
        }

        public abstract VH a(ViewGroup viewGroup, int i);

        public void a(VH vh) {
        }

        public abstract void a(VH vh, int i);

        public void a(RecyclerView recyclerView) {
        }

        public long b(int i) {
            return -1L;
        }

        public void b(RecyclerView recyclerView) {
        }

        public boolean b(VH vh) {
            return false;
        }

        public void c(VH vh) {
        }

        public void d(VH vh) {
        }

        public void a(VH vh, int i, List<Object> list) {
            a(vh, i);
        }

        public final VH b(ViewGroup viewGroup, int i) {
            try {
                androidx.core.d.d.a("RV CreateView");
                VH vh = (VH) a(viewGroup, i);
                if (vh.f2263a.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                vh.f = i;
                return vh;
            } finally {
                androidx.core.d.d.a();
            }
        }

        public final void b(VH vh, int i) {
            vh.f2265c = i;
            if (b()) {
                vh.f2267e = b(i);
            }
            vh.a(1, 519);
            androidx.core.d.d.a("RV OnBindView");
            a(vh, i, vh.u());
            vh.t();
            ViewGroup.LayoutParams layoutParams = vh.f2263a.getLayoutParams();
            if (layoutParams instanceof j) {
                ((j) layoutParams).f2230e = true;
            }
            androidx.core.d.d.a();
        }

        public final boolean b() {
            return this.f2206b;
        }

        public void a(c cVar) {
            this.f2205a.registerObserver(cVar);
        }

        public void b(c cVar) {
            this.f2205a.unregisterObserver(cVar);
        }

        public final void c() {
            this.f2205a.a();
        }

        public final void c(int i) {
            this.f2205a.a(i, 1);
        }

        public final void d(int i) {
            this.f2205a.b(i, 1);
        }
    }

    void k(View view) {
        w wVarE = e(view);
        h(view);
        a aVar = this.m;
        if (aVar != null && wVarE != null) {
            aVar.d(wVarE);
        }
        List<k> list = this.ad;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.ad.get(size).b(view);
            }
        }
    }

    void l(View view) {
        w wVarE = e(view);
        g(view);
        a aVar = this.m;
        if (aVar != null && wVarE != null) {
            aVar.c(wVarE);
        }
        List<k> list = this.ad;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.ad.get(size).a(view);
            }
        }
    }

    public static abstract class i {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f2221e;
        private int f;
        private int g;
        private int h;
        androidx.recyclerview.widget.b p;
        RecyclerView q;
        s t;
        int x;
        boolean y;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final l.b f2217a = new l.b() { // from class: androidx.recyclerview.widget.RecyclerView.i.1
            @Override // androidx.recyclerview.widget.l.b
            public View a(int i) {
                return i.this.i(i);
            }

            @Override // androidx.recyclerview.widget.l.b
            public int a() {
                return i.this.A();
            }

            @Override // androidx.recyclerview.widget.l.b
            public int b() {
                return i.this.y() - i.this.C();
            }

            @Override // androidx.recyclerview.widget.l.b
            public int a(View view) {
                return i.this.h(view) - ((j) view.getLayoutParams()).leftMargin;
            }

            @Override // androidx.recyclerview.widget.l.b
            public int b(View view) {
                return i.this.j(view) + ((j) view.getLayoutParams()).rightMargin;
            }
        };

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final l.b f2218b = new l.b() { // from class: androidx.recyclerview.widget.RecyclerView.i.2
            @Override // androidx.recyclerview.widget.l.b
            public View a(int i) {
                return i.this.i(i);
            }

            @Override // androidx.recyclerview.widget.l.b
            public int a() {
                return i.this.B();
            }

            @Override // androidx.recyclerview.widget.l.b
            public int b() {
                return i.this.z() - i.this.D();
            }

            @Override // androidx.recyclerview.widget.l.b
            public int a(View view) {
                return i.this.i(view) - ((j) view.getLayoutParams()).topMargin;
            }

            @Override // androidx.recyclerview.widget.l.b
            public int b(View view) {
                return i.this.k(view) + ((j) view.getLayoutParams()).bottomMargin;
            }
        };
        androidx.recyclerview.widget.l r = new androidx.recyclerview.widget.l(this.f2217a);
        androidx.recyclerview.widget.l s = new androidx.recyclerview.widget.l(this.f2218b);
        boolean u = false;
        boolean v = false;
        boolean w = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f2219c = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f2220d = true;

        public interface a {
            void b(int i, int i2);
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f2224a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f2225b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f2226c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f2227d;
        }

        public int a(int i, p pVar, t tVar) {
            return 0;
        }

        public View a(View view, int i, p pVar, t tVar) {
            return null;
        }

        public abstract j a();

        public void a(int i, int i2, t tVar, a aVar) {
        }

        public void a(int i, a aVar) {
        }

        public void a(Parcelable parcelable) {
        }

        public void a(a aVar, a aVar2) {
        }

        public void a(t tVar) {
        }

        public void a(RecyclerView recyclerView) {
        }

        public void a(RecyclerView recyclerView, int i, int i2) {
        }

        public void a(RecyclerView recyclerView, int i, int i2, int i3) {
        }

        public boolean a(j jVar) {
            return jVar != null;
        }

        public boolean a(p pVar, t tVar, View view, int i, Bundle bundle) {
            return false;
        }

        public boolean a(RecyclerView recyclerView, ArrayList<View> arrayList, int i, int i2) {
            return false;
        }

        public int b(int i, p pVar, t tVar) {
            return 0;
        }

        public void b(RecyclerView recyclerView, int i, int i2) {
        }

        public boolean b() {
            return false;
        }

        public int c(t tVar) {
            return 0;
        }

        public void c(RecyclerView recyclerView, int i, int i2) {
        }

        public int d(p pVar, t tVar) {
            return 0;
        }

        public int d(t tVar) {
            return 0;
        }

        public Parcelable d() {
            return null;
        }

        public View d(View view, int i) {
            return null;
        }

        public void d(RecyclerView recyclerView) {
        }

        public int e(t tVar) {
            return 0;
        }

        public void e(int i) {
        }

        @Deprecated
        public void e(RecyclerView recyclerView) {
        }

        public boolean e() {
            return false;
        }

        public boolean e(p pVar, t tVar) {
            return false;
        }

        public int f(t tVar) {
            return 0;
        }

        public boolean f() {
            return false;
        }

        public int g(t tVar) {
            return 0;
        }

        public int h(t tVar) {
            return 0;
        }

        public void l(int i) {
        }

        boolean l() {
            return false;
        }

        public int u() {
            return -1;
        }

        void b(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.q = null;
                this.p = null;
                this.g = 0;
                this.h = 0;
            } else {
                this.q = recyclerView;
                this.p = recyclerView.g;
                this.g = recyclerView.getWidth();
                this.h = recyclerView.getHeight();
            }
            this.f2221e = 1073741824;
            this.f = 1073741824;
        }

        void c(int i, int i2) {
            this.g = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.f2221e = mode;
            if (mode == 0 && !RecyclerView.f2195b) {
                this.g = 0;
            }
            this.h = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f = mode2;
            if (mode2 != 0 || RecyclerView.f2195b) {
                return;
            }
            this.h = 0;
        }

        void d(int i, int i2) {
            int iV = v();
            if (iV == 0) {
                this.q.e(i, i2);
                return;
            }
            int i3 = Integer.MIN_VALUE;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 < iV; i7++) {
                View viewI = i(i7);
                Rect rect = this.q.k;
                a(viewI, rect);
                if (rect.left < i5) {
                    i5 = rect.left;
                }
                if (rect.right > i3) {
                    i3 = rect.right;
                }
                if (rect.top < i6) {
                    i6 = rect.top;
                }
                if (rect.bottom > i4) {
                    i4 = rect.bottom;
                }
            }
            this.q.k.set(i5, i6, i3, i4);
            a(this.q.k, i, i2);
        }

        public void a(Rect rect, int i, int i2) {
            f(a(i, rect.width() + A() + C(), F()), a(i2, rect.height() + B() + D(), G()));
        }

        public void o() {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public static int a(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (mode != Integer.MIN_VALUE) {
                return mode != 1073741824 ? Math.max(i2, i3) : size;
            }
            return Math.min(size, Math.max(i2, i3));
        }

        public void a(String str) {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                recyclerView.a(str);
            }
        }

        public boolean c() {
            return this.w;
        }

        public final boolean p() {
            return this.f2220d;
        }

        void c(RecyclerView recyclerView) {
            this.v = true;
            d(recyclerView);
        }

        void b(RecyclerView recyclerView, p pVar) {
            this.v = false;
            a(recyclerView, pVar);
        }

        public boolean q() {
            return this.v;
        }

        public boolean a(Runnable runnable) {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public void a(RecyclerView recyclerView, p pVar) {
            e(recyclerView);
        }

        public boolean r() {
            RecyclerView recyclerView = this.q;
            return recyclerView != null && recyclerView.i;
        }

        public void c(p pVar, t tVar) {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public j a(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof j) {
                return new j((j) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new j((ViewGroup.MarginLayoutParams) layoutParams);
            }
            return new j(layoutParams);
        }

        public j a(Context context, AttributeSet attributeSet) {
            return new j(context, attributeSet);
        }

        public boolean s() {
            s sVar = this.t;
            return sVar != null && sVar.d();
        }

        public int t() {
            return androidx.core.h.r.f(this.q);
        }

        public void a(View view) {
            a(view, -1);
        }

        public void a(View view, int i) {
            a(view, i, true);
        }

        public void b(View view) {
            b(view, -1);
        }

        public void b(View view, int i) {
            a(view, i, false);
        }

        private void a(View view, int i, boolean z) {
            w wVarE = RecyclerView.e(view);
            if (z || wVarE.q()) {
                this.q.h.e(wVarE);
            } else {
                this.q.h.f(wVarE);
            }
            j jVar = (j) view.getLayoutParams();
            if (wVarE.k() || wVarE.i()) {
                if (wVarE.i()) {
                    wVarE.j();
                } else {
                    wVarE.l();
                }
                this.p.a(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.q) {
                int iB = this.p.b(view);
                if (i == -1) {
                    i = this.p.b();
                }
                if (iB == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.q.indexOfChild(view) + this.q.a());
                }
                if (iB != i) {
                    this.q.n.e(iB, i);
                }
            } else {
                this.p.a(view, i, false);
                jVar.f2230e = true;
                s sVar = this.t;
                if (sVar != null && sVar.d()) {
                    this.t.b(view);
                }
            }
            if (jVar.f) {
                wVarE.f2263a.invalidate();
                jVar.f = false;
            }
        }

        public void c(View view) {
            this.p.a(view);
        }

        public void g(int i) {
            if (i(i) != null) {
                this.p.a(i);
            }
        }

        public int d(View view) {
            return ((j) view.getLayoutParams()).f();
        }

        public View e(View view) {
            View viewC;
            RecyclerView recyclerView = this.q;
            if (recyclerView == null || (viewC = recyclerView.c(view)) == null || this.p.c(viewC)) {
                return null;
            }
            return viewC;
        }

        public View c(int i) {
            int iV = v();
            for (int i2 = 0; i2 < iV; i2++) {
                View viewI = i(i2);
                w wVarE = RecyclerView.e(viewI);
                if (wVarE != null && wVarE.d() == i && !wVarE.c() && (this.q.D.a() || !wVarE.q())) {
                    return viewI;
                }
            }
            return null;
        }

        public void h(int i) {
            a(i, i(i));
        }

        private void a(int i, View view) {
            this.p.e(i);
        }

        public void a(View view, int i, j jVar) {
            w wVarE = RecyclerView.e(view);
            if (wVarE.q()) {
                this.q.h.e(wVarE);
            } else {
                this.q.h.f(wVarE);
            }
            this.p.a(view, i, jVar, wVarE.q());
        }

        public void c(View view, int i) {
            a(view, i, (j) view.getLayoutParams());
        }

        public void e(int i, int i2) {
            View viewI = i(i);
            if (viewI == null) {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.q.toString());
            }
            h(i);
            c(viewI, i2);
        }

        public void a(View view, p pVar) {
            c(view);
            pVar.a(view);
        }

        public void a(int i, p pVar) {
            View viewI = i(i);
            g(i);
            pVar.a(viewI);
        }

        public int v() {
            androidx.recyclerview.widget.b bVar = this.p;
            if (bVar != null) {
                return bVar.b();
            }
            return 0;
        }

        public View i(int i) {
            androidx.recyclerview.widget.b bVar = this.p;
            if (bVar != null) {
                return bVar.b(i);
            }
            return null;
        }

        public int w() {
            return this.f2221e;
        }

        public int x() {
            return this.f;
        }

        public int y() {
            return this.g;
        }

        public int z() {
            return this.h;
        }

        public int A() {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public int B() {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int C() {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public int D() {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public View E() {
            View focusedChild;
            RecyclerView recyclerView = this.q;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.p.c(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public void j(int i) {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                recyclerView.e(i);
            }
        }

        public void k(int i) {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                recyclerView.d(i);
            }
        }

        public void a(p pVar) {
            for (int iV = v() - 1; iV >= 0; iV--) {
                a(pVar, iV, i(iV));
            }
        }

        private void a(p pVar, int i, View view) {
            w wVarE = RecyclerView.e(view);
            if (wVarE.c()) {
                return;
            }
            if (wVarE.n() && !wVarE.q() && !this.q.m.b()) {
                g(i);
                pVar.b(wVarE);
            } else {
                h(i);
                pVar.c(view);
                this.q.h.h(wVarE);
            }
        }

        void b(p pVar) {
            int iE = pVar.e();
            for (int i = iE - 1; i >= 0; i--) {
                View viewE = pVar.e(i);
                w wVarE = RecyclerView.e(viewE);
                if (!wVarE.c()) {
                    wVarE.a(false);
                    if (wVarE.r()) {
                        this.q.removeDetachedView(viewE, false);
                    }
                    if (this.q.z != null) {
                        this.q.z.d(wVarE);
                    }
                    wVarE.a(true);
                    pVar.b(viewE);
                }
            }
            pVar.f();
            if (iE > 0) {
                this.q.invalidate();
            }
        }

        boolean a(View view, int i, int i2, j jVar) {
            return (this.f2219c && b(view.getMeasuredWidth(), i, jVar.width) && b(view.getMeasuredHeight(), i2, jVar.height)) ? false : true;
        }

        boolean b(View view, int i, int i2, j jVar) {
            return (!view.isLayoutRequested() && this.f2219c && b(view.getWidth(), i, jVar.width) && b(view.getHeight(), i2, jVar.height)) ? false : true;
        }

        private static boolean b(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 > 0 && i != i3) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i;
            }
            return true;
        }

        public void a(View view, int i, int i2) {
            j jVar = (j) view.getLayoutParams();
            Rect rectI = this.q.i(view);
            int i3 = i + rectI.left + rectI.right;
            int i4 = i2 + rectI.top + rectI.bottom;
            int iA = a(y(), w(), A() + C() + jVar.leftMargin + jVar.rightMargin + i3, jVar.width, e());
            int iA2 = a(z(), x(), B() + D() + jVar.topMargin + jVar.bottomMargin + i4, jVar.height, f());
            if (b(view, iA, iA2, jVar)) {
                view.measure(iA, iA2);
            }
        }

        public static int a(int i, int i2, int i3, int i4, boolean z) {
            int iMax = Math.max(0, i - i3);
            if (z) {
                if (i4 < 0) {
                    if (i4 != -1 || (i2 != Integer.MIN_VALUE && (i2 == 0 || i2 != 1073741824))) {
                        i2 = 0;
                        i4 = 0;
                    } else {
                        i4 = iMax;
                    }
                }
                i2 = 1073741824;
            } else {
                if (i4 < 0) {
                    if (i4 != -1) {
                        if (i4 == -2) {
                            i2 = (i2 == Integer.MIN_VALUE || i2 == 1073741824) ? Integer.MIN_VALUE : 0;
                        }
                        i2 = 0;
                        i4 = 0;
                    }
                    i4 = iMax;
                }
                i2 = 1073741824;
            }
            return View.MeasureSpec.makeMeasureSpec(i4, i2);
        }

        public int f(View view) {
            Rect rect = ((j) view.getLayoutParams()).f2229d;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public int g(View view) {
            Rect rect = ((j) view.getLayoutParams()).f2229d;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public void a(View view, int i, int i2, int i3, int i4) {
            j jVar = (j) view.getLayoutParams();
            Rect rect = jVar.f2229d;
            view.layout(i + rect.left + jVar.leftMargin, i2 + rect.top + jVar.topMargin, (i3 - rect.right) - jVar.rightMargin, (i4 - rect.bottom) - jVar.bottomMargin);
        }

        public void a(View view, boolean z, Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((j) view.getLayoutParams()).f2229d;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.q != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.q.l;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public void a(View view, Rect rect) {
            RecyclerView.a(view, rect);
        }

        public int h(View view) {
            return view.getLeft() - n(view);
        }

        public int i(View view) {
            return view.getTop() - l(view);
        }

        public int j(View view) {
            return view.getRight() + o(view);
        }

        public int k(View view) {
            return view.getBottom() + m(view);
        }

        public void b(View view, Rect rect) {
            RecyclerView recyclerView = this.q;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.i(view));
            }
        }

        public int l(View view) {
            return ((j) view.getLayoutParams()).f2229d.top;
        }

        public int m(View view) {
            return ((j) view.getLayoutParams()).f2229d.bottom;
        }

        public int n(View view) {
            return ((j) view.getLayoutParams()).f2229d.left;
        }

        public int o(View view) {
            return ((j) view.getLayoutParams()).f2229d.right;
        }

        private int[] b(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            int[] iArr = new int[2];
            int iA = A();
            int iB = B();
            int iY = y() - C();
            int iZ = z() - D();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int iWidth = rect.width() + left;
            int iHeight = rect.height() + top;
            int i = left - iA;
            int iMin = Math.min(0, i);
            int i2 = top - iB;
            int iMin2 = Math.min(0, i2);
            int i3 = iWidth - iY;
            int iMax = Math.max(0, i3);
            int iMax2 = Math.max(0, iHeight - iZ);
            if (t() != 1) {
                if (iMin == 0) {
                    iMin = Math.min(i, iMax);
                }
                iMax = iMin;
            } else if (iMax == 0) {
                iMax = Math.max(iMin, i3);
            }
            if (iMin2 == 0) {
                iMin2 = Math.min(i2, iMax2);
            }
            iArr[0] = iMax;
            iArr[1] = iMin2;
            return iArr;
        }

        public boolean a(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            return a(recyclerView, view, rect, z, false);
        }

        public boolean a(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            int[] iArrB = b(recyclerView, view, rect, z);
            int i = iArrB[0];
            int i2 = iArrB[1];
            if ((z2 && !d(recyclerView, i, i2)) || (i == 0 && i2 == 0)) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(i, i2);
            } else {
                recyclerView.a(i, i2);
            }
            return true;
        }

        public boolean a(View view, boolean z, boolean z2) {
            boolean z3 = this.r.a(view, 24579) && this.s.a(view, 24579);
            return z ? z3 : !z3;
        }

        private boolean d(RecyclerView recyclerView, int i, int i2) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int iA = A();
            int iB = B();
            int iY = y() - C();
            int iZ = z() - D();
            Rect rect = this.q.k;
            a(focusedChild, rect);
            return rect.left - i < iY && rect.right - i > iA && rect.top - i2 < iZ && rect.bottom - i2 > iB;
        }

        @Deprecated
        public boolean a(RecyclerView recyclerView, View view, View view2) {
            return s() || recyclerView.o();
        }

        public boolean a(RecyclerView recyclerView, t tVar, View view, View view2) {
            return a(recyclerView, view, view2);
        }

        public void a(RecyclerView recyclerView, int i, int i2, Object obj) {
            c(recyclerView, i, i2);
        }

        public void a(p pVar, t tVar, int i, int i2) {
            this.q.e(i, i2);
        }

        public void f(int i, int i2) {
            this.q.setMeasuredDimension(i, i2);
        }

        public int F() {
            return androidx.core.h.r.i(this.q);
        }

        public int G() {
            return androidx.core.h.r.j(this.q);
        }

        void H() {
            s sVar = this.t;
            if (sVar != null) {
                sVar.b();
            }
        }

        void a(s sVar) {
            if (this.t == sVar) {
                this.t = null;
            }
        }

        public void c(p pVar) {
            for (int iV = v() - 1; iV >= 0; iV--) {
                if (!RecyclerView.e(i(iV)).c()) {
                    a(iV, pVar);
                }
            }
        }

        void a(androidx.core.h.a.c cVar) {
            a(this.q.f2198e, this.q.D, cVar);
        }

        public void a(p pVar, t tVar, androidx.core.h.a.c cVar) {
            if (this.q.canScrollVertically(-1) || this.q.canScrollHorizontally(-1)) {
                cVar.a(8192);
                cVar.c(true);
            }
            if (this.q.canScrollVertically(1) || this.q.canScrollHorizontally(1)) {
                cVar.a(4096);
                cVar.c(true);
            }
            cVar.a(c.a.a(a(pVar, tVar), b(pVar, tVar), e(pVar, tVar), d(pVar, tVar)));
        }

        public void a(AccessibilityEvent accessibilityEvent) {
            a(this.q.f2198e, this.q.D, accessibilityEvent);
        }

        public void a(p pVar, t tVar, AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.q;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1) && !this.q.canScrollVertically(-1) && !this.q.canScrollHorizontally(-1) && !this.q.canScrollHorizontally(1)) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            if (this.q.m != null) {
                accessibilityEvent.setItemCount(this.q.m.a());
            }
        }

        void a(View view, androidx.core.h.a.c cVar) {
            w wVarE = RecyclerView.e(view);
            if (wVarE == null || wVarE.q() || this.p.c(wVarE.f2263a)) {
                return;
            }
            a(this.q.f2198e, this.q.D, view, cVar);
        }

        public void a(p pVar, t tVar, View view, androidx.core.h.a.c cVar) {
            cVar.b(c.b.a(f() ? d(view) : 0, 1, e() ? d(view) : 0, 1, false, false));
        }

        public void I() {
            this.u = true;
        }

        public int a(p pVar, t tVar) {
            RecyclerView recyclerView = this.q;
            if (recyclerView == null || recyclerView.m == null || !f()) {
                return 1;
            }
            return this.q.m.a();
        }

        public int b(p pVar, t tVar) {
            RecyclerView recyclerView = this.q;
            if (recyclerView == null || recyclerView.m == null || !e()) {
                return 1;
            }
            return this.q.m.a();
        }

        boolean a(int i, Bundle bundle) {
            return a(this.q.f2198e, this.q.D, i, bundle);
        }

        public boolean a(p pVar, t tVar, int i, Bundle bundle) {
            int iZ;
            int iY;
            RecyclerView recyclerView = this.q;
            if (recyclerView == null) {
                return false;
            }
            if (i != 4096) {
                if (i != 8192) {
                    iZ = 0;
                } else {
                    iZ = recyclerView.canScrollVertically(-1) ? -((z() - B()) - D()) : 0;
                    if (this.q.canScrollHorizontally(-1)) {
                        iY = -((y() - A()) - C());
                    }
                }
            } else {
                iZ = recyclerView.canScrollVertically(1) ? (z() - B()) - D() : 0;
                iY = this.q.canScrollHorizontally(1) ? (y() - A()) - C() : 0;
            }
            if (iZ == 0 && iY == 0) {
                return false;
            }
            this.q.a(iY, iZ);
            return true;
        }

        boolean a(View view, int i, Bundle bundle) {
            return a(this.q.f2198e, this.q.D, view, i, bundle);
        }

        public static b a(Context context, AttributeSet attributeSet, int i, int i2) {
            b bVar = new b();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.b.RecyclerView, i, i2);
            bVar.f2224a = typedArrayObtainStyledAttributes.getInt(a.b.RecyclerView_android_orientation, 1);
            bVar.f2225b = typedArrayObtainStyledAttributes.getInt(a.b.RecyclerView_spanCount, 1);
            bVar.f2226c = typedArrayObtainStyledAttributes.getBoolean(a.b.RecyclerView_reverseLayout, false);
            bVar.f2227d = typedArrayObtainStyledAttributes.getBoolean(a.b.RecyclerView_stackFromEnd, false);
            typedArrayObtainStyledAttributes.recycle();
            return bVar;
        }

        void f(RecyclerView recyclerView) {
            c(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        boolean J() {
            int iV = v();
            for (int i = 0; i < iV; i++) {
                ViewGroup.LayoutParams layoutParams = i(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }
    }

    public static abstract class h {
        @Deprecated
        public void a(Canvas canvas, RecyclerView recyclerView) {
        }

        @Deprecated
        public void b(Canvas canvas, RecyclerView recyclerView) {
        }

        public void b(Canvas canvas, RecyclerView recyclerView, t tVar) {
            a(canvas, recyclerView);
        }

        public void a(Canvas canvas, RecyclerView recyclerView, t tVar) {
            b(canvas, recyclerView);
        }

        @Deprecated
        public void a(Rect rect, int i, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void a(Rect rect, View view, RecyclerView recyclerView, t tVar) {
            a(rect, ((j) view.getLayoutParams()).f(), recyclerView);
        }
    }

    public static abstract class w {
        private static final List<Object> q = Collections.emptyList();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final View f2263a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        WeakReference<RecyclerView> f2264b;
        int j;
        RecyclerView p;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2265c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2266d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        long f2267e = -1;
        int f = -1;
        int g = -1;
        w h = null;
        w i = null;
        List<Object> k = null;
        List<Object> l = null;
        private int r = 0;
        p m = null;
        boolean n = false;
        private int s = 0;
        int o = -1;

        public w(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.f2263a = view;
        }

        void a(int i, int i2, boolean z) {
            b(8);
            a(i2, z);
            this.f2265c = i;
        }

        void a(int i, boolean z) {
            if (this.f2266d == -1) {
                this.f2266d = this.f2265c;
            }
            if (this.g == -1) {
                this.g = this.f2265c;
            }
            if (z) {
                this.g += i;
            }
            this.f2265c += i;
            if (this.f2263a.getLayoutParams() != null) {
                ((j) this.f2263a.getLayoutParams()).f2230e = true;
            }
        }

        void a() {
            this.f2266d = -1;
            this.g = -1;
        }

        void b() {
            if (this.f2266d == -1) {
                this.f2266d = this.f2265c;
            }
        }

        boolean c() {
            return (this.j & 128) != 0;
        }

        public final int d() {
            int i = this.g;
            return i == -1 ? this.f2265c : i;
        }

        public final int e() {
            RecyclerView recyclerView = this.p;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.d(this);
        }

        public final int f() {
            return this.f2266d;
        }

        public final long g() {
            return this.f2267e;
        }

        public final int h() {
            return this.f;
        }

        boolean i() {
            return this.m != null;
        }

        void j() {
            this.m.c(this);
        }

        boolean k() {
            return (this.j & 32) != 0;
        }

        void l() {
            this.j &= -33;
        }

        void m() {
            this.j &= -257;
        }

        void a(p pVar, boolean z) {
            this.m = pVar;
            this.n = z;
        }

        boolean n() {
            return (this.j & 4) != 0;
        }

        boolean o() {
            return (this.j & 2) != 0;
        }

        boolean p() {
            return (this.j & 1) != 0;
        }

        boolean q() {
            return (this.j & 8) != 0;
        }

        boolean a(int i) {
            return (i & this.j) != 0;
        }

        boolean r() {
            return (this.j & 256) != 0;
        }

        boolean s() {
            return (this.j & 512) != 0 || n();
        }

        void a(int i, int i2) {
            this.j = (i & i2) | (this.j & (i2 ^ (-1)));
        }

        void b(int i) {
            this.j = i | this.j;
        }

        void a(Object obj) {
            if (obj == null) {
                b(1024);
            } else if ((1024 & this.j) == 0) {
                A();
                this.k.add(obj);
            }
        }

        private void A() {
            if (this.k == null) {
                ArrayList arrayList = new ArrayList();
                this.k = arrayList;
                this.l = Collections.unmodifiableList(arrayList);
            }
        }

        void t() {
            List<Object> list = this.k;
            if (list != null) {
                list.clear();
            }
            this.j &= -1025;
        }

        List<Object> u() {
            if ((this.j & 1024) == 0) {
                List<Object> list = this.k;
                if (list == null || list.size() == 0) {
                    return q;
                }
                return this.l;
            }
            return q;
        }

        void v() {
            this.j = 0;
            this.f2265c = -1;
            this.f2266d = -1;
            this.f2267e = -1L;
            this.g = -1;
            this.r = 0;
            this.h = null;
            this.i = null;
            t();
            this.s = 0;
            this.o = -1;
            RecyclerView.c(this);
        }

        void a(RecyclerView recyclerView) {
            int i = this.o;
            if (i != -1) {
                this.s = i;
            } else {
                this.s = androidx.core.h.r.e(this.f2263a);
            }
            recyclerView.a(this, 4);
        }

        void b(RecyclerView recyclerView) {
            recyclerView.a(this, this.s);
            this.s = 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.f2265c + " id=" + this.f2267e + ", oldPos=" + this.f2266d + ", pLpos:" + this.g);
            if (i()) {
                sb.append(" scrap ");
                sb.append(this.n ? "[changeScrap]" : "[attachedScrap]");
            }
            if (n()) {
                sb.append(" invalid");
            }
            if (!p()) {
                sb.append(" unbound");
            }
            if (o()) {
                sb.append(" update");
            }
            if (q()) {
                sb.append(" removed");
            }
            if (c()) {
                sb.append(" ignored");
            }
            if (r()) {
                sb.append(" tmpDetached");
            }
            if (!w()) {
                sb.append(" not recyclable(" + this.r + ")");
            }
            if (s()) {
                sb.append(" undefined adapter position");
            }
            if (this.f2263a.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        public final void a(boolean z) {
            int i = this.r;
            int i2 = z ? i - 1 : i + 1;
            this.r = i2;
            if (i2 < 0) {
                this.r = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                return;
            }
            if (!z && i2 == 1) {
                this.j |= 16;
            } else if (z && this.r == 0) {
                this.j &= -17;
            }
        }

        public final boolean w() {
            return (this.j & 16) == 0 && !androidx.core.h.r.c(this.f2263a);
        }

        boolean x() {
            return (this.j & 16) != 0;
        }

        boolean y() {
            return (this.j & 16) == 0 && androidx.core.h.r.c(this.f2263a);
        }

        boolean z() {
            return (this.j & 2) != 0;
        }
    }

    boolean a(w wVar, int i2) {
        if (o()) {
            wVar.o = i2;
            this.K.add(wVar);
            return false;
        }
        androidx.core.h.r.b(wVar.f2263a, i2);
        return true;
    }

    void x() {
        int i2;
        for (int size = this.K.size() - 1; size >= 0; size--) {
            w wVar = this.K.get(size);
            if (wVar.f2263a.getParent() == this && !wVar.c() && (i2 = wVar.o) != -1) {
                androidx.core.h.r.b(wVar.f2263a, i2);
                wVar.o = -1;
            }
        }
        this.K.clear();
    }

    int d(w wVar) {
        if (wVar.a(524) || !wVar.p()) {
            return -1;
        }
        return this.f.c(wVar.f2265c);
    }

    void a(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + a());
        }
        Resources resources = getContext().getResources();
        new androidx.recyclerview.widget.d(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(a.C0054a.fastscroll_default_thickness), resources.getDimensionPixelSize(a.C0054a.fastscroll_minimum_range), resources.getDimensionPixelOffset(a.C0054a.fastscroll_margin));
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().a(z);
    }

    @Override // android.view.View, androidx.core.h.i
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().a();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().b(i2);
    }

    public boolean j(int i2, int i3) {
        return getScrollingChildHelper().a(i2, i3);
    }

    @Override // android.view.View, androidx.core.h.i
    public void stopNestedScroll() {
        getScrollingChildHelper().c();
    }

    @Override // androidx.core.h.j
    public void a(int i2) {
        getScrollingChildHelper().c(i2);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().b();
    }

    public boolean h(int i2) {
        return getScrollingChildHelper().a(i2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().a(i2, i3, i4, i5, iArr);
    }

    public boolean a(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        return getScrollingChildHelper().a(i2, i3, i4, i5, iArr, i6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2);
    }

    public boolean a(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2, i4);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z) {
        return getScrollingChildHelper().a(f2, f3, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().a(f2, f3);
    }

    public static class j extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        w f2228c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Rect f2229d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f2230e;
        boolean f;

        public j(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2229d = new Rect();
            this.f2230e = true;
            this.f = false;
        }

        public j(int i, int i2) {
            super(i, i2);
            this.f2229d = new Rect();
            this.f2230e = true;
            this.f = false;
        }

        public j(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2229d = new Rect();
            this.f2230e = true;
            this.f = false;
        }

        public j(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2229d = new Rect();
            this.f2230e = true;
            this.f = false;
        }

        public j(j jVar) {
            super((ViewGroup.LayoutParams) jVar);
            this.f2229d = new Rect();
            this.f2230e = true;
            this.f = false;
        }

        public boolean c() {
            return this.f2228c.n();
        }

        public boolean d() {
            return this.f2228c.q();
        }

        public boolean e() {
            return this.f2228c.z();
        }

        public int f() {
            return this.f2228c.d();
        }
    }

    public static abstract class c {
        public void a() {
        }

        public void a(int i, int i2) {
        }

        public void b(int i, int i2) {
        }

        public void a(int i, int i2, Object obj) {
            a(i, i2);
        }
    }

    public static abstract class s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f2243a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private RecyclerView f2244b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private i f2245c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f2246d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f2247e;
        private View f;
        private final a g;

        public interface b {
            PointF d(int i);
        }

        protected abstract void a(int i, int i2, t tVar, a aVar);

        protected abstract void a(View view, t tVar, a aVar);

        protected abstract void f();

        public void a(int i) {
            this.f2243a = i;
        }

        public PointF b(int i) {
            Object objA = a();
            if (objA instanceof b) {
                return ((b) objA).d(i);
            }
            Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + b.class.getCanonicalName());
            return null;
        }

        public i a() {
            return this.f2245c;
        }

        protected final void b() {
            if (this.f2247e) {
                this.f2247e = false;
                f();
                this.f2244b.D.f2253a = -1;
                this.f = null;
                this.f2243a = -1;
                this.f2246d = false;
                this.f2245c.a(this);
                this.f2245c = null;
                this.f2244b = null;
            }
        }

        public boolean c() {
            return this.f2246d;
        }

        public boolean d() {
            return this.f2247e;
        }

        public int e() {
            return this.f2243a;
        }

        void a(int i, int i2) {
            PointF pointFB;
            RecyclerView recyclerView = this.f2244b;
            if (!this.f2247e || this.f2243a == -1 || recyclerView == null) {
                b();
            }
            if (this.f2246d && this.f == null && this.f2245c != null && (pointFB = b(this.f2243a)) != null && (pointFB.x != 0.0f || pointFB.y != 0.0f)) {
                recyclerView.a((int) Math.signum(pointFB.x), (int) Math.signum(pointFB.y), (int[]) null);
            }
            this.f2246d = false;
            View view = this.f;
            if (view != null) {
                if (a(view) == this.f2243a) {
                    a(this.f, recyclerView.D, this.g);
                    this.g.a(recyclerView);
                    b();
                } else {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    this.f = null;
                }
            }
            if (this.f2247e) {
                a(i, i2, recyclerView.D, this.g);
                boolean zA = this.g.a();
                this.g.a(recyclerView);
                if (zA) {
                    if (this.f2247e) {
                        this.f2246d = true;
                        recyclerView.A.a();
                    } else {
                        b();
                    }
                }
            }
        }

        public int a(View view) {
            return this.f2244b.f(view);
        }

        protected void b(View view) {
            if (a(view) == e()) {
                this.f = view;
            }
        }

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private int f2248a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private int f2249b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f2250c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f2251d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private Interpolator f2252e;
            private boolean f;
            private int g;

            boolean a() {
                return this.f2251d >= 0;
            }

            void a(RecyclerView recyclerView) {
                int i = this.f2251d;
                if (i >= 0) {
                    this.f2251d = -1;
                    recyclerView.b(i);
                    this.f = false;
                } else {
                    if (this.f) {
                        b();
                        if (this.f2252e == null) {
                            if (this.f2250c == Integer.MIN_VALUE) {
                                recyclerView.A.b(this.f2248a, this.f2249b);
                            } else {
                                recyclerView.A.a(this.f2248a, this.f2249b, this.f2250c);
                            }
                        } else {
                            recyclerView.A.a(this.f2248a, this.f2249b, this.f2250c, this.f2252e);
                        }
                        int i2 = this.g + 1;
                        this.g = i2;
                        if (i2 > 10) {
                            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                        }
                        this.f = false;
                        return;
                    }
                    this.g = 0;
                }
            }

            private void b() {
                if (this.f2252e != null && this.f2250c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.f2250c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }
        }
    }

    static class b extends Observable<c> {
        b() {
        }

        public void a() {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).a();
            }
        }

        public void a(int i, int i2) {
            a(i, i2, null);
        }

        public void a(int i, int i2, Object obj) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).a(i, i2, obj);
            }
        }

        public void b(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).b(i, i2);
            }
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.recyclerview.widget.RecyclerView.SavedState.1
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
        Parcelable f2204a;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2204a = parcel.readParcelable(classLoader == null ? i.class.getClassLoader() : classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.f2204a, 0);
        }

        void a(SavedState savedState) {
            this.f2204a = savedState.f2204a;
        }
    }

    public static class t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2253a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2254b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2255c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2256d = 1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f2257e = 0;
        boolean f = false;
        boolean g = false;
        boolean h = false;
        boolean i = false;
        boolean j = false;
        boolean k = false;
        int l;
        long m;
        int n;
        int o;
        int p;
        private SparseArray<Object> q;

        void a(int i) {
            if ((this.f2256d & i) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f2256d));
        }

        void a(a aVar) {
            this.f2256d = 1;
            this.f2257e = aVar.a();
            this.g = false;
            this.h = false;
            this.i = false;
        }

        public boolean a() {
            return this.g;
        }

        public boolean b() {
            return this.k;
        }

        public int c() {
            return this.f2253a;
        }

        public boolean d() {
            return this.f2253a != -1;
        }

        public int e() {
            return this.g ? this.f2254b - this.f2255c : this.f2257e;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f2253a + ", mData=" + this.q + ", mItemCount=" + this.f2257e + ", mIsMeasuring=" + this.i + ", mPreviousLayoutItemCount=" + this.f2254b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f2255c + ", mStructureChanged=" + this.f + ", mInPreLayout=" + this.g + ", mRunSimpleAnimations=" + this.j + ", mRunPredictiveAnimations=" + this.k + '}';
        }
    }

    private class g implements f.b {
        g() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.f.b
        public void a(w wVar) {
            wVar.a(true);
            if (wVar.h != null && wVar.i == null) {
                wVar.h = null;
            }
            wVar.i = null;
            if (wVar.x() || RecyclerView.this.a(wVar.f2263a) || !wVar.r()) {
                return;
            }
            RecyclerView.this.removeDetachedView(wVar.f2263a, false);
        }
    }

    public static abstract class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private b f2207a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ArrayList<a> f2208b = new ArrayList<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f2209c = 120;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f2210d = 120;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f2211e = 250;
        private long f = 250;

        public interface a {
            void a();
        }

        interface b {
            void a(w wVar);
        }

        public abstract void a();

        public abstract boolean a(w wVar, c cVar, c cVar2);

        public abstract boolean a(w wVar, w wVar2, c cVar, c cVar2);

        public abstract boolean b();

        public abstract boolean b(w wVar, c cVar, c cVar2);

        public abstract boolean c(w wVar, c cVar, c cVar2);

        public abstract void d();

        public abstract void d(w wVar);

        public void g(w wVar) {
        }

        public boolean h(w wVar) {
            return true;
        }

        public long e() {
            return this.f2211e;
        }

        public long f() {
            return this.f2209c;
        }

        public long g() {
            return this.f2210d;
        }

        public long h() {
            return this.f;
        }

        void a(b bVar) {
            this.f2207a = bVar;
        }

        public c a(t tVar, w wVar, int i, List<Object> list) {
            return j().a(wVar);
        }

        public c a(t tVar, w wVar) {
            return j().a(wVar);
        }

        static int e(w wVar) {
            int i = wVar.j & 14;
            if (wVar.n()) {
                return 4;
            }
            if ((i & 4) != 0) {
                return i;
            }
            int iF = wVar.f();
            int iE = wVar.e();
            return (iF == -1 || iE == -1 || iF == iE) ? i : i | 2048;
        }

        public final void f(w wVar) {
            g(wVar);
            b bVar = this.f2207a;
            if (bVar != null) {
                bVar.a(wVar);
            }
        }

        public boolean a(w wVar, List<Object> list) {
            return h(wVar);
        }

        public final void i() {
            int size = this.f2208b.size();
            for (int i = 0; i < size; i++) {
                this.f2208b.get(i).a();
            }
            this.f2208b.clear();
        }

        public c j() {
            return new c();
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f2212a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f2213b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f2214c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f2215d;

            public c a(w wVar) {
                return a(wVar, 0);
            }

            public c a(w wVar, int i) {
                View view = wVar.f2263a;
                this.f2212a = view.getLeft();
                this.f2213b = view.getTop();
                this.f2214c = view.getRight();
                this.f2215d = view.getBottom();
                return this;
            }
        }
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i3) {
        d dVar = this.aC;
        if (dVar == null) {
            return super.getChildDrawingOrder(i2, i3);
        }
        return dVar.a(i2, i3);
    }

    private androidx.core.h.k getScrollingChildHelper() {
        if (this.aE == null) {
            this.aE = new androidx.core.h.k(this);
        }
        return this.aE;
    }
}
