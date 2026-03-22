package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.a;
import androidx.core.g.d;
import androidx.core.h.m;
import androidx.core.h.n;
import androidx.core.h.o;
import androidx.core.h.r;
import androidx.core.h.z;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class CoordinatorLayout extends ViewGroup implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f1229a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Class<?>[] f1230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final ThreadLocal<Map<String, Constructor<b>>> f1231c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Comparator<View> f1232d;
    private static final d.a<Rect> f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ViewGroup.OnHierarchyChangeListener f1233e;
    private final List<View> g;
    private final androidx.coordinatorlayout.widget.a<View> h;
    private final List<View> i;
    private final List<View> j;
    private final int[] k;
    private Paint l;
    private boolean m;
    private boolean n;
    private int[] o;
    private View p;
    private View q;
    private f r;
    private boolean s;
    private z t;
    private boolean u;
    private Drawable v;
    private o w;
    private final n x;

    public interface a {
        b getBehavior();
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    public @interface c {
        Class<? extends b> a();
    }

    private static int a(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    private static int c(int i) {
        if ((i & 7) == 0) {
            i |= 8388611;
        }
        return (i & 112) == 0 ? i | 48 : i;
    }

    private static int d(int i) {
        if (i == 0) {
            return 8388661;
        }
        return i;
    }

    private static int e(int i) {
        if (i == 0) {
            return 17;
        }
        return i;
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f1229a = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            f1232d = new g();
        } else {
            f1232d = null;
        }
        f1230b = new Class[]{Context.class, AttributeSet.class};
        f1231c = new ThreadLocal<>();
        f = new d.c(12);
    }

    private static Rect e() {
        Rect rectA = f.a();
        return rectA == null ? new Rect() : rectA;
    }

    private static void a(Rect rect) {
        rect.setEmpty();
        f.a(rect);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0022a.coordinatorLayoutStyle);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes;
        super(context, attributeSet, i);
        this.g = new ArrayList();
        this.h = new androidx.coordinatorlayout.widget.a<>();
        this.i = new ArrayList();
        this.j = new ArrayList();
        this.k = new int[2];
        this.x = new n(this);
        if (i == 0) {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.c.CoordinatorLayout, 0, a.b.Widget_Support_CoordinatorLayout);
        } else {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.c.CoordinatorLayout, i, 0);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(a.c.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.o = resources.getIntArray(resourceId);
            float f2 = resources.getDisplayMetrics().density;
            int length = this.o.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.o[i2] = (int) (r1[i2] * f2);
            }
        }
        this.v = typedArrayObtainStyledAttributes.getDrawable(a.c.CoordinatorLayout_statusBarBackground);
        typedArrayObtainStyledAttributes.recycle();
        g();
        super.setOnHierarchyChangeListener(new d());
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f1233e = onHierarchyChangeListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a(false);
        if (this.s) {
            if (this.r == null) {
                this.r = new f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.r);
        }
        if (this.t == null && r.p(this)) {
            r.o(this);
        }
        this.n = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a(false);
        if (this.s && this.r != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.r);
        }
        View view = this.q;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.n = false;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.v;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.v = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.v.setState(getDrawableState());
                }
                androidx.core.graphics.drawable.a.b(this.v, r.f(this));
                this.v.setVisible(getVisibility() == 0, false);
                this.v.setCallback(this);
            }
            r.d(this);
        }
    }

    public Drawable getStatusBarBackground() {
        return this.v;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.v;
        boolean state = false;
        if (drawable != null && drawable.isStateful()) {
            state = false | drawable.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.v;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.v;
        if (drawable == null || drawable.isVisible() == z) {
            return;
        }
        this.v.setVisible(z, false);
    }

    public void setStatusBarBackgroundResource(int i) {
        setStatusBarBackground(i != 0 ? androidx.core.a.b.a(getContext(), i) : null);
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    final z a(z zVar) {
        if (androidx.core.g.c.a(this.t, zVar)) {
            return zVar;
        }
        this.t = zVar;
        boolean z = zVar != null && zVar.b() > 0;
        this.u = z;
        setWillNotDraw(!z && getBackground() == null);
        z zVarB = b(zVar);
        requestLayout();
        return zVarB;
    }

    public final z getLastWindowInsets() {
        return this.t;
    }

    private void a(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            b bVarB = ((e) childAt.getLayoutParams()).b();
            if (bVarB != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    bVarB.a(this, childAt, motionEventObtain);
                } else {
                    bVarB.b(this, childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((e) getChildAt(i2).getLayoutParams()).f();
        }
        this.p = null;
        this.m = false;
    }

    private void a(List<View> list) {
        list.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            list.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i) : i));
        }
        Comparator<View> comparator = f1232d;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    private boolean a(MotionEvent motionEvent, int i) {
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.i;
        a(list);
        int size = list.size();
        MotionEvent motionEventObtain = null;
        boolean zA = false;
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            View view = list.get(i2);
            e eVar = (e) view.getLayoutParams();
            b bVarB = eVar.b();
            if (!(zA || z) || actionMasked == 0) {
                if (!zA && bVarB != null) {
                    if (i == 0) {
                        zA = bVarB.a(this, view, motionEvent);
                    } else if (i == 1) {
                        zA = bVarB.b(this, view, motionEvent);
                    }
                    if (zA) {
                        this.p = view;
                    }
                }
                boolean zE = eVar.e();
                boolean zA2 = eVar.a(this, view);
                z = zA2 && !zE;
                if (zA2 && !z) {
                    break;
                }
            } else if (bVarB != null) {
                if (motionEventObtain == null) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i == 0) {
                    bVarB.a(this, view, motionEventObtain);
                } else if (i == 1) {
                    bVarB.b(this, view, motionEventObtain);
                }
            }
        }
        list.clear();
        return zA;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            a(true);
        }
        boolean zA = a(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            a(true);
        }
        return zA;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b A[PHI: r3
  0x002b: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:9:0x0022, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r18.getActionMasked()
            android.view.View r3 = r0.p
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L15
            boolean r3 = r0.a(r1, r4)
            if (r3 == 0) goto L2b
            goto L16
        L15:
            r3 = 0
        L16:
            android.view.View r6 = r0.p
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$e r6 = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) r6
            androidx.coordinatorlayout.widget.CoordinatorLayout$b r6 = r6.b()
            if (r6 == 0) goto L2b
            android.view.View r7 = r0.p
            boolean r6 = r6.b(r0, r7, r1)
            goto L2c
        L2b:
            r6 = 0
        L2c:
            android.view.View r7 = r0.p
            r8 = 0
            if (r7 != 0) goto L37
            boolean r1 = super.onTouchEvent(r18)
            r6 = r6 | r1
            goto L4a
        L37:
            if (r3 == 0) goto L4a
            long r11 = android.os.SystemClock.uptimeMillis()
            r13 = 3
            r14 = 0
            r15 = 0
            r16 = 0
            r9 = r11
            android.view.MotionEvent r8 = android.view.MotionEvent.obtain(r9, r11, r13, r14, r15, r16)
            super.onTouchEvent(r8)
        L4a:
            if (r8 == 0) goto L4f
            r8.recycle()
        L4f:
            if (r2 == r4) goto L54
            r1 = 3
            if (r2 != r1) goto L57
        L54:
            r0.a(r5)
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.m) {
            return;
        }
        a(false);
        this.m = true;
    }

    private int b(int i) {
        int[] iArr = this.o;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i);
            return 0;
        }
        if (i < 0 || i >= iArr.length) {
            Log.e("CoordinatorLayout", "Keyline index " + i + " out of range for " + this);
            return 0;
        }
        return iArr[i];
    }

    static b a(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0 && !TextUtils.isEmpty(f1229a)) {
            str = f1229a + '.' + str;
        }
        try {
            Map map = f1231c.get();
            if (map == null) {
                map = new HashMap();
                f1231c.set((Map<String, Constructor<b>>) map);
            }
            Constructor<?> constructor = (Constructor) map.get(str);
            if (constructor == null) {
                constructor = context.getClassLoader().loadClass(str).getConstructor(f1230b);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return (b) constructor.newInstance(context, attributeSet);
        } catch (Exception e2) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    e a(View view) {
        e eVar = (e) view.getLayoutParams();
        if (!eVar.f1238b) {
            if (view instanceof a) {
                b behavior = ((a) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                eVar.a(behavior);
                eVar.f1238b = true;
            } else {
                c cVar = null;
                for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                    cVar = (c) superclass.getAnnotation(c.class);
                    if (cVar != null) {
                        break;
                    }
                }
                if (cVar != null) {
                    try {
                        eVar.a(cVar.a().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e2) {
                        Log.e("CoordinatorLayout", "Default behavior class " + cVar.a().getName() + " could not be instantiated. Did you forget a default constructor?", e2);
                    }
                }
                eVar.f1238b = true;
            }
        }
        return eVar;
    }

    private void f() {
        this.g.clear();
        this.h.a();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            e eVarA = a(childAt);
            eVarA.b(this, childAt);
            this.h.a(childAt);
            for (int i2 = 0; i2 < childCount; i2++) {
                if (i2 != i) {
                    View childAt2 = getChildAt(i2);
                    if (eVarA.a(this, childAt, childAt2)) {
                        if (!this.h.b(childAt2)) {
                            this.h.a(childAt2);
                        }
                        this.h.a(childAt2, childAt);
                    }
                }
            }
        }
        this.g.addAll(this.h.b());
        Collections.reverse(this.g);
    }

    void a(View view, Rect rect) {
        androidx.coordinatorlayout.widget.b.b(this, view, rect);
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    public void a(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x011f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r31, int r32) {
        /*
            Method dump skipped, instruction units count: 393
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    private z b(z zVar) {
        b bVarB;
        if (zVar.e()) {
            return zVar;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (r.p(childAt) && (bVarB = ((e) childAt.getLayoutParams()).b()) != null) {
                zVar = bVarB.a(this, childAt, zVar);
                if (zVar.e()) {
                    break;
                }
            }
        }
        return zVar;
    }

    public void a(View view, int i) {
        e eVar = (e) view.getLayoutParams();
        if (eVar.d()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        if (eVar.k != null) {
            a(view, eVar.k, i);
        } else if (eVar.f1241e >= 0) {
            b(view, eVar.f1241e, i);
        } else {
            d(view, i);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        b bVarB;
        int iF = r.f(this);
        int size = this.g.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.g.get(i5);
            if (view.getVisibility() != 8 && ((bVarB = ((e) view.getLayoutParams()).b()) == null || !bVarB.a(this, view, iF))) {
                a(view, iF);
            }
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.u || this.v == null) {
            return;
        }
        z zVar = this.t;
        int iB = zVar != null ? zVar.b() : 0;
        if (iB > 0) {
            this.v.setBounds(0, 0, getWidth(), iB);
            this.v.draw(canvas);
        }
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        g();
    }

    void b(View view, Rect rect) {
        ((e) view.getLayoutParams()).a(rect);
    }

    void c(View view, Rect rect) {
        rect.set(((e) view.getLayoutParams()).c());
    }

    void a(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            a(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    private void a(View view, int i, Rect rect, Rect rect2, e eVar, int i2, int i3) {
        int iWidth;
        int iHeight;
        int iA = androidx.core.h.c.a(e(eVar.f1239c), i);
        int iA2 = androidx.core.h.c.a(c(eVar.f1240d), i);
        int i4 = iA & 7;
        int i5 = iA & 112;
        int i6 = iA2 & 7;
        int i7 = iA2 & 112;
        if (i6 == 1) {
            iWidth = rect.left + (rect.width() / 2);
        } else if (i6 != 5) {
            iWidth = rect.left;
        } else {
            iWidth = rect.right;
        }
        if (i7 == 16) {
            iHeight = rect.top + (rect.height() / 2);
        } else if (i7 != 80) {
            iHeight = rect.top;
        } else {
            iHeight = rect.bottom;
        }
        if (i4 == 1) {
            iWidth -= i2 / 2;
        } else if (i4 != 5) {
            iWidth -= i2;
        }
        if (i5 == 16) {
            iHeight -= i3 / 2;
        } else if (i5 != 80) {
            iHeight -= i3;
        }
        rect2.set(iWidth, iHeight, i2 + iWidth, i3 + iHeight);
    }

    private void a(e eVar, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + eVar.leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - eVar.rightMargin));
        int iMax2 = Math.max(getPaddingTop() + eVar.topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - eVar.bottomMargin));
        rect.set(iMax, iMax2, i + iMax, i2 + iMax2);
    }

    void a(View view, int i, Rect rect, Rect rect2) {
        e eVar = (e) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        a(view, i, rect, rect2, eVar, measuredWidth, measuredHeight);
        a(eVar, rect2, measuredWidth, measuredHeight);
    }

    private void a(View view, View view2, int i) {
        Rect rectE = e();
        Rect rectE2 = e();
        try {
            a(view2, rectE);
            a(view, i, rectE, rectE2);
            view.layout(rectE2.left, rectE2.top, rectE2.right, rectE2.bottom);
        } finally {
            a(rectE);
            a(rectE2);
        }
    }

    private void b(View view, int i, int i2) {
        e eVar = (e) view.getLayoutParams();
        int iA = androidx.core.h.c.a(d(eVar.f1239c), i2);
        int i3 = iA & 7;
        int i4 = iA & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i2 == 1) {
            i = width - i;
        }
        int iB = b(i) - measuredWidth;
        int i5 = 0;
        if (i3 == 1) {
            iB += measuredWidth / 2;
        } else if (i3 == 5) {
            iB += measuredWidth;
        }
        if (i4 == 16) {
            i5 = 0 + (measuredHeight / 2);
        } else if (i4 == 80) {
            i5 = measuredHeight + 0;
        }
        int iMax = Math.max(getPaddingLeft() + eVar.leftMargin, Math.min(iB, ((width - getPaddingRight()) - measuredWidth) - eVar.rightMargin));
        int iMax2 = Math.max(getPaddingTop() + eVar.topMargin, Math.min(i5, ((height - getPaddingBottom()) - measuredHeight) - eVar.bottomMargin));
        view.layout(iMax, iMax2, measuredWidth + iMax, measuredHeight + iMax2);
    }

    private void d(View view, int i) {
        e eVar = (e) view.getLayoutParams();
        Rect rectE = e();
        rectE.set(getPaddingLeft() + eVar.leftMargin, getPaddingTop() + eVar.topMargin, (getWidth() - getPaddingRight()) - eVar.rightMargin, (getHeight() - getPaddingBottom()) - eVar.bottomMargin);
        if (this.t != null && r.p(this) && !r.p(view)) {
            rectE.left += this.t.a();
            rectE.top += this.t.b();
            rectE.right -= this.t.c();
            rectE.bottom -= this.t.d();
        }
        Rect rectE2 = e();
        androidx.core.h.c.a(c(eVar.f1239c), view.getMeasuredWidth(), view.getMeasuredHeight(), rectE, rectE2, i);
        view.layout(rectE2.left, rectE2.top, rectE2.right, rectE2.bottom);
        a(rectE);
        a(rectE2);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        e eVar = (e) view.getLayoutParams();
        if (eVar.f1237a != null) {
            float fB = eVar.f1237a.b(this, view);
            if (fB > 0.0f) {
                if (this.l == null) {
                    this.l = new Paint();
                }
                this.l.setColor(eVar.f1237a.a(this, view));
                this.l.setAlpha(a(Math.round(fB * 255.0f), 0, 255));
                int iSave = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.l);
                canvas.restoreToCount(iSave);
            }
        }
        return super.drawChild(canvas, view, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void a(int r18) {
        /*
            Method dump skipped, instruction units count: 273
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.a(int):void");
    }

    private void a(View view, Rect rect, int i) {
        boolean z;
        boolean z2;
        int width;
        int i2;
        int height;
        int i3;
        if (r.w(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            e eVar = (e) view.getLayoutParams();
            b bVarB = eVar.b();
            Rect rectE = e();
            Rect rectE2 = e();
            rectE2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (bVarB != null && bVarB.a(this, view, rectE)) {
                if (!rectE2.contains(rectE)) {
                    throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + rectE.toShortString() + " | Bounds:" + rectE2.toShortString());
                }
            } else {
                rectE.set(rectE2);
            }
            a(rectE2);
            if (rectE.isEmpty()) {
                a(rectE);
                return;
            }
            int iA = androidx.core.h.c.a(eVar.h, i);
            boolean z3 = true;
            if ((iA & 48) != 48 || (i3 = (rectE.top - eVar.topMargin) - eVar.j) >= rect.top) {
                z = false;
            } else {
                f(view, rect.top - i3);
                z = true;
            }
            if ((iA & 80) == 80 && (height = ((getHeight() - rectE.bottom) - eVar.bottomMargin) + eVar.j) < rect.bottom) {
                f(view, height - rect.bottom);
                z = true;
            }
            if (!z) {
                f(view, 0);
            }
            if ((iA & 3) != 3 || (i2 = (rectE.left - eVar.leftMargin) - eVar.i) >= rect.left) {
                z2 = false;
            } else {
                e(view, rect.left - i2);
                z2 = true;
            }
            if ((iA & 5) != 5 || (width = ((getWidth() - rectE.right) - eVar.rightMargin) + eVar.i) >= rect.right) {
                z3 = z2;
            } else {
                e(view, width - rect.right);
            }
            if (!z3) {
                e(view, 0);
            }
            a(rectE);
        }
    }

    private void e(View view, int i) {
        e eVar = (e) view.getLayoutParams();
        if (eVar.i != i) {
            r.e(view, i - eVar.i);
            eVar.i = i;
        }
    }

    private void f(View view, int i) {
        e eVar = (e) view.getLayoutParams();
        if (eVar.j != i) {
            r.d(view, i - eVar.j);
            eVar.j = i;
        }
    }

    public void b(View view) {
        List listC = this.h.c(view);
        if (listC == null || listC.isEmpty()) {
            return;
        }
        for (int i = 0; i < listC.size(); i++) {
            View view2 = (View) listC.get(i);
            b bVarB = ((e) view2.getLayoutParams()).b();
            if (bVarB != null) {
                bVarB.b(this, view2, view);
            }
        }
    }

    public List<View> c(View view) {
        List<View> listD = this.h.d(view);
        this.j.clear();
        if (listD != null) {
            this.j.addAll(listD);
        }
        return this.j;
    }

    public List<View> d(View view) {
        List listC = this.h.c(view);
        this.j.clear();
        if (listC != null) {
            this.j.addAll(listC);
        }
        return this.j;
    }

    final List<View> getDependencySortedChildren() {
        f();
        return Collections.unmodifiableList(this.g);
    }

    void a() {
        int childCount = getChildCount();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            if (e(getChildAt(i))) {
                z = true;
                break;
            }
            i++;
        }
        if (z != this.s) {
            if (z) {
                b();
            } else {
                c();
            }
        }
    }

    private boolean e(View view) {
        return this.h.e(view);
    }

    void b() {
        if (this.n) {
            if (this.r == null) {
                this.r = new f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.r);
        }
        this.s = true;
    }

    void c() {
        if (this.n && this.r != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.r);
        }
        this.s = false;
    }

    void b(View view, int i) {
        b bVarB;
        e eVar = (e) view.getLayoutParams();
        if (eVar.k != null) {
            Rect rectE = e();
            Rect rectE2 = e();
            Rect rectE3 = e();
            a(eVar.k, rectE);
            a(view, false, rectE2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            a(view, i, rectE, rectE3, eVar, measuredWidth, measuredHeight);
            boolean z = (rectE3.left == rectE2.left && rectE3.top == rectE2.top) ? false : true;
            a(eVar, rectE3, measuredWidth, measuredHeight);
            int i2 = rectE3.left - rectE2.left;
            int i3 = rectE3.top - rectE2.top;
            if (i2 != 0) {
                r.e(view, i2);
            }
            if (i3 != 0) {
                r.d(view, i3);
            }
            if (z && (bVarB = eVar.b()) != null) {
                bVarB.b(this, view, eVar.k);
            }
            a(rectE);
            a(rectE2);
            a(rectE3);
        }
    }

    public boolean a(View view, int i, int i2) {
        Rect rectE = e();
        a(view, rectE);
        try {
            return rectE.contains(i, i2);
        } finally {
            a(rectE);
        }
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof e) {
            return new e((e) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new e((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new e(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public e generateDefaultLayoutParams() {
        return new e(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof e) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.h.l
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return a(view, view2, i, 0);
    }

    @Override // androidx.core.h.m
    public boolean a(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                b bVarB = eVar.b();
                if (bVarB != null) {
                    boolean zA = bVarB.a(this, childAt, view, view2, i, i2);
                    z |= zA;
                    eVar.a(i2, zA);
                } else {
                    eVar.a(i2, false);
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.h.l
    public void onNestedScrollAccepted(View view, View view2, int i) {
        b(view, view2, i, 0);
    }

    @Override // androidx.core.h.m
    public void b(View view, View view2, int i, int i2) {
        b bVarB;
        this.x.a(view, view2, i, i2);
        this.q = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            e eVar = (e) childAt.getLayoutParams();
            if (eVar.b(i2) && (bVarB = eVar.b()) != null) {
                bVarB.b(this, childAt, view, view2, i, i2);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.h.l
    public void onStopNestedScroll(View view) {
        c(view, 0);
    }

    @Override // androidx.core.h.m
    public void c(View view, int i) {
        this.x.a(view, i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            e eVar = (e) childAt.getLayoutParams();
            if (eVar.b(i)) {
                b bVarB = eVar.b();
                if (bVarB != null) {
                    bVarB.a(this, childAt, view, i);
                }
                eVar.a(i);
                eVar.h();
            }
        }
        this.q = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.h.l
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        a(view, i, i2, i3, i4, 0);
    }

    @Override // androidx.core.h.m
    public void a(View view, int i, int i2, int i3, int i4, int i5) {
        b bVarB;
        int childCount = getChildCount();
        boolean z = false;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.b(i5) && (bVarB = eVar.b()) != null) {
                    bVarB.a(this, childAt, view, i, i2, i3, i4, i5);
                    z = true;
                }
            }
        }
        if (z) {
            a(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.h.l
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        a(view, i, i2, iArr, 0);
    }

    @Override // androidx.core.h.m
    public void a(View view, int i, int i2, int[] iArr, int i3) {
        b bVarB;
        int childCount = getChildCount();
        boolean z = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.b(i3) && (bVarB = eVar.b()) != null) {
                    int[] iArr2 = this.k;
                    iArr2[1] = 0;
                    iArr2[0] = 0;
                    bVarB.a(this, childAt, view, i, i2, iArr2, i3);
                    int[] iArr3 = this.k;
                    iMax = i > 0 ? Math.max(iMax, iArr3[0]) : Math.min(iMax, iArr3[0]);
                    int[] iArr4 = this.k;
                    iMax2 = i2 > 0 ? Math.max(iMax2, iArr4[1]) : Math.min(iMax2, iArr4[1]);
                    z = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z) {
            a(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.h.l
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        b bVarB;
        int childCount = getChildCount();
        boolean zA = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.b(0) && (bVarB = eVar.b()) != null) {
                    zA |= bVarB.a(this, childAt, view, f2, f3, z);
                }
            }
        }
        if (zA) {
            a(1);
        }
        return zA;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.h.l
    public boolean onNestedPreFling(View view, float f2, float f3) {
        b bVarB;
        int childCount = getChildCount();
        boolean zA = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.b(0) && (bVarB = eVar.b()) != null) {
                    zA |= bVarB.a(this, childAt, view, f2, f3);
                }
            }
        }
        return zA;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.x.a();
    }

    class f implements ViewTreeObserver.OnPreDrawListener {
        f() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.a(0);
            return true;
        }
    }

    static class g implements Comparator<View> {
        g() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            float fX = r.x(view);
            float fX2 = r.x(view2);
            if (fX > fX2) {
                return -1;
            }
            return fX < fX2 ? 1 : 0;
        }
    }

    public static abstract class b<V extends View> {
        public int a(CoordinatorLayout coordinatorLayout, V v) {
            return -16777216;
        }

        public z a(CoordinatorLayout coordinatorLayout, V v, z zVar) {
            return zVar;
        }

        public void a() {
        }

        public void a(e eVar) {
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        @Deprecated
        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        }

        @Deprecated
        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2, boolean z) {
            return false;
        }

        @Deprecated
        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
            return false;
        }

        public float b(CoordinatorLayout coordinatorLayout, V v) {
            return 0.0f;
        }

        @Deprecated
        public void b(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        }

        public boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public boolean b(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public void c(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        @Deprecated
        public void d(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public b() {
        }

        public b(Context context, AttributeSet attributeSet) {
        }

        public boolean c(CoordinatorLayout coordinatorLayout, V v) {
            return b(coordinatorLayout, v) > 0.0f;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                return a(coordinatorLayout, v, view, view2, i);
            }
            return false;
        }

        public void b(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                b(coordinatorLayout, v, view, view2, i);
            }
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
            if (i == 0) {
                d(coordinatorLayout, v, view);
            }
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                a(coordinatorLayout, v, view, i, i2, i3, i4);
            }
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
            if (i3 == 0) {
                a(coordinatorLayout, v, view, i, i2, iArr);
            }
        }

        public Parcelable d(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }
    }

    public static class e extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        b f1237a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f1238b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1239c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1240d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1241e;
        int f;
        public int g;
        public int h;
        int i;
        int j;
        View k;
        View l;
        final Rect m;
        Object n;
        private boolean o;
        private boolean p;
        private boolean q;
        private boolean r;

        public e(int i, int i2) {
            super(i, i2);
            this.f1238b = false;
            this.f1239c = 0;
            this.f1240d = 0;
            this.f1241e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
        }

        e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1238b = false;
            this.f1239c = 0;
            this.f1240d = 0;
            this.f1241e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.c.CoordinatorLayout_Layout);
            this.f1239c = typedArrayObtainStyledAttributes.getInteger(a.c.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f = typedArrayObtainStyledAttributes.getResourceId(a.c.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f1240d = typedArrayObtainStyledAttributes.getInteger(a.c.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f1241e = typedArrayObtainStyledAttributes.getInteger(a.c.CoordinatorLayout_Layout_layout_keyline, -1);
            this.g = typedArrayObtainStyledAttributes.getInt(a.c.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.h = typedArrayObtainStyledAttributes.getInt(a.c.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(a.c.CoordinatorLayout_Layout_layout_behavior);
            this.f1238b = zHasValue;
            if (zHasValue) {
                this.f1237a = CoordinatorLayout.a(context, attributeSet, typedArrayObtainStyledAttributes.getString(a.c.CoordinatorLayout_Layout_layout_behavior));
            }
            typedArrayObtainStyledAttributes.recycle();
            b bVar = this.f1237a;
            if (bVar != null) {
                bVar.a(this);
            }
        }

        public e(e eVar) {
            super((ViewGroup.MarginLayoutParams) eVar);
            this.f1238b = false;
            this.f1239c = 0;
            this.f1240d = 0;
            this.f1241e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
        }

        public e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1238b = false;
            this.f1239c = 0;
            this.f1240d = 0;
            this.f1241e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1238b = false;
            this.f1239c = 0;
            this.f1240d = 0;
            this.f1241e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
        }

        public int a() {
            return this.f;
        }

        public b b() {
            return this.f1237a;
        }

        public void a(b bVar) {
            b bVar2 = this.f1237a;
            if (bVar2 != bVar) {
                if (bVar2 != null) {
                    bVar2.a();
                }
                this.f1237a = bVar;
                this.n = null;
                this.f1238b = true;
                if (bVar != null) {
                    bVar.a(this);
                }
            }
        }

        void a(Rect rect) {
            this.m.set(rect);
        }

        Rect c() {
            return this.m;
        }

        boolean d() {
            return this.k == null && this.f != -1;
        }

        boolean e() {
            if (this.f1237a == null) {
                this.o = false;
            }
            return this.o;
        }

        boolean a(CoordinatorLayout coordinatorLayout, View view) {
            boolean z = this.o;
            if (z) {
                return true;
            }
            b bVar = this.f1237a;
            boolean zC = (bVar != null ? bVar.c(coordinatorLayout, view) : false) | z;
            this.o = zC;
            return zC;
        }

        void f() {
            this.o = false;
        }

        void a(int i) {
            a(i, false);
        }

        void a(int i, boolean z) {
            if (i == 0) {
                this.p = z;
            } else {
                if (i != 1) {
                    return;
                }
                this.q = z;
            }
        }

        boolean b(int i) {
            if (i == 0) {
                return this.p;
            }
            if (i != 1) {
                return false;
            }
            return this.q;
        }

        boolean g() {
            return this.r;
        }

        void a(boolean z) {
            this.r = z;
        }

        void h() {
            this.r = false;
        }

        boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            b bVar;
            return view2 == this.l || a(view2, r.f(coordinatorLayout)) || ((bVar = this.f1237a) != null && bVar.a(coordinatorLayout, view, view2));
        }

        View b(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f == -1) {
                this.l = null;
                this.k = null;
                return null;
            }
            if (this.k == null || !b(view, coordinatorLayout)) {
                a(view, coordinatorLayout);
            }
            return this.k;
        }

        private void a(View view, CoordinatorLayout coordinatorLayout) {
            View viewFindViewById = coordinatorLayout.findViewById(this.f);
            this.k = viewFindViewById;
            if (viewFindViewById == null) {
                if (coordinatorLayout.isInEditMode()) {
                    this.l = null;
                    this.k = null;
                    return;
                }
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f) + " to anchor view " + view);
            }
            if (viewFindViewById == coordinatorLayout) {
                if (coordinatorLayout.isInEditMode()) {
                    this.l = null;
                    this.k = null;
                    return;
                }
                throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
            }
            for (ViewParent parent = viewFindViewById.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                if (parent == view) {
                    if (coordinatorLayout.isInEditMode()) {
                        this.l = null;
                        this.k = null;
                        return;
                    }
                    throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                }
                if (parent instanceof View) {
                    viewFindViewById = parent;
                }
            }
            this.l = viewFindViewById;
        }

        private boolean b(View view, CoordinatorLayout coordinatorLayout) {
            if (this.k.getId() != this.f) {
                return false;
            }
            View view2 = this.k;
            for (ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent == null || parent == view) {
                    this.l = null;
                    this.k = null;
                    return false;
                }
                if (parent instanceof View) {
                    view2 = parent;
                }
            }
            this.l = view2;
            return true;
        }

        private boolean a(View view, int i) {
            int iA = androidx.core.h.c.a(((e) view.getLayoutParams()).g, i);
            return iA != 0 && (androidx.core.h.c.a(this.h, i) & iA) == iA;
        }
    }

    private class d implements ViewGroup.OnHierarchyChangeListener {
        d() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (CoordinatorLayout.this.f1233e != null) {
                CoordinatorLayout.this.f1233e.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.a(2);
            if (CoordinatorLayout.this.f1233e != null) {
                CoordinatorLayout.this.f1233e.onChildViewRemoved(view, view2);
            }
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        SparseArray<Parcelable> sparseArray = savedState.f1235a;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            b bVarB = a(childAt).b();
            if (id != -1 && bVarB != null && (parcelable2 = sparseArray.get(id)) != null) {
                bVarB.a(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableD;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            b bVarB = ((e) childAt.getLayoutParams()).b();
            if (id != -1 && bVarB != null && (parcelableD = bVarB.d(this, childAt)) != null) {
                sparseArray.append(id, parcelableD);
            }
        }
        savedState.f1235a = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        b bVarB = ((e) view.getLayoutParams()).b();
        if (bVarB == null || !bVarB.a(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    private void g() {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (r.p(this)) {
            if (this.w == null) {
                this.w = new o() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.1
                    @Override // androidx.core.h.o
                    public z a(View view, z zVar) {
                        return CoordinatorLayout.this.a(zVar);
                    }
                };
            }
            r.a(this, this.w);
            setSystemUiVisibility(1280);
            return;
        }
        r.a(this, (o) null);
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState.1
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
        SparseArray<Parcelable> f1235a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int i = parcel.readInt();
            int[] iArr = new int[i];
            parcel.readIntArray(iArr);
            Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
            this.f1235a = new SparseArray<>(i);
            for (int i2 = 0; i2 < i; i2++) {
                this.f1235a.append(iArr[i2], parcelableArray[i2]);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            SparseArray<Parcelable> sparseArray = this.f1235a;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.f1235a.keyAt(i2);
                parcelableArr[i2] = this.f1235a.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }
}
