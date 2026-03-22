package android.support.design.widget;

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
import android.support.design.a;
import android.support.v4.g.k;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.aa;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class CoordinatorLayout extends ViewGroup implements android.support.v4.view.m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Class<?>[] f284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final ThreadLocal<Map<String, Constructor<a>>> f285c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Comparator<View> f286d;
    private static final k.a<Rect> f;
    ViewGroup.OnHierarchyChangeListener e;
    private final List<View> g;
    private final android.support.design.widget.e<View> h;
    private final List<View> i;
    private final List<View> j;
    private final int[] k;
    private Paint l;
    private boolean m;
    private boolean n;
    private int[] o;
    private View p;
    private View q;
    private e r;
    private boolean s;
    private aa t;
    private boolean u;
    private Drawable v;
    private android.support.v4.view.o w;
    private final android.support.v4.view.n x;

    @Retention(RetentionPolicy.RUNTIME)
    public @interface b {
        Class<? extends a> a();
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f283a = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            f286d = new f();
        } else {
            f286d = null;
        }
        f284b = new Class[]{Context.class, AttributeSet.class};
        f285c = new ThreadLocal<>();
        f = new k.c(12);
    }

    private static Rect e() {
        Rect rectA = f.a();
        if (rectA == null) {
            return new Rect();
        }
        return rectA;
    }

    private static void a(Rect rect) {
        rect.setEmpty();
        f.a(rect);
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = new ArrayList();
        this.h = new android.support.design.widget.e<>();
        this.i = new ArrayList();
        this.j = new ArrayList();
        this.k = new int[2];
        this.x = new android.support.v4.view.n(this);
        q.a(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.CoordinatorLayout, i, a.i.Widget_Design_CoordinatorLayout);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(a.j.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.o = resources.getIntArray(resourceId);
            float f2 = resources.getDisplayMetrics().density;
            int length = this.o.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.o[i2] = (int) (this.o[i2] * f2);
            }
        }
        this.v = typedArrayObtainStyledAttributes.getDrawable(a.j.CoordinatorLayout_statusBarBackground);
        typedArrayObtainStyledAttributes.recycle();
        g();
        super.setOnHierarchyChangeListener(new c());
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.e = onHierarchyChangeListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a(false);
        if (this.s) {
            if (this.r == null) {
                this.r = new e();
            }
            getViewTreeObserver().addOnPreDrawListener(this.r);
        }
        if (this.t == null && android.support.v4.view.s.o(this)) {
            android.support.v4.view.s.n(this);
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
        if (this.q != null) {
            onStopNestedScroll(this.q);
        }
        this.n = false;
    }

    public void setStatusBarBackground(Drawable drawable) {
        if (this.v != drawable) {
            if (this.v != null) {
                this.v.setCallback(null);
            }
            this.v = drawable != null ? drawable.mutate() : null;
            if (this.v != null) {
                if (this.v.isStateful()) {
                    this.v.setState(getDrawableState());
                }
                android.support.v4.b.a.a.b(this.v, android.support.v4.view.s.e(this));
                this.v.setVisible(getVisibility() == 0, false);
                this.v.setCallback(this);
            }
            android.support.v4.view.s.c(this);
        }
    }

    public Drawable getStatusBarBackground() {
        return this.v;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        boolean state = false;
        Drawable drawable = this.v;
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
        if (this.v != null && this.v.isVisible() != z) {
            this.v.setVisible(z, false);
        }
    }

    public void setStatusBarBackgroundResource(int i) {
        setStatusBarBackground(i != 0 ? android.support.v4.a.c.a(getContext(), i) : null);
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    final aa a(aa aaVar) {
        if (!android.support.v4.g.i.a(this.t, aaVar)) {
            this.t = aaVar;
            this.u = aaVar != null && aaVar.b() > 0;
            setWillNotDraw(!this.u && getBackground() == null);
            aa aaVarB = b(aaVar);
            requestLayout();
            return aaVarB;
        }
        return aaVar;
    }

    final aa getLastWindowInsets() {
        return this.t;
    }

    private void a(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            a aVarB = ((d) childAt.getLayoutParams()).b();
            if (aVarB != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    aVarB.a(this, childAt, motionEventObtain);
                } else {
                    aVarB.b(this, childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((d) getChildAt(i2).getLayoutParams()).f();
        }
        this.m = false;
    }

    private void a(List<View> list) {
        list.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            list.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i) : i));
        }
        if (f286d != null) {
            Collections.sort(list, f286d);
        }
    }

    private boolean a(MotionEvent motionEvent, int i) {
        boolean z;
        MotionEvent motionEventObtain;
        boolean z2;
        boolean zB = false;
        boolean z3 = false;
        MotionEvent motionEvent2 = null;
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.i;
        a(list);
        int size = list.size();
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                View view = list.get(i2);
                d dVar = (d) view.getLayoutParams();
                a aVarB = dVar.b();
                if ((zB || z3) && actionMasked != 0) {
                    if (aVarB != null) {
                        if (motionEvent2 == null) {
                            long jUptimeMillis = SystemClock.uptimeMillis();
                            motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                        } else {
                            motionEventObtain = motionEvent2;
                        }
                        switch (i) {
                            case 0:
                                aVarB.a(this, view, motionEventObtain);
                                break;
                            case 1:
                                aVarB.b(this, view, motionEventObtain);
                                break;
                        }
                        z2 = z3;
                        z = zB;
                    } else {
                        motionEventObtain = motionEvent2;
                        z = zB;
                        z2 = z3;
                    }
                } else {
                    if (!zB && aVarB != null) {
                        switch (i) {
                            case 0:
                                zB = aVarB.a(this, view, motionEvent);
                                break;
                            case 1:
                                zB = aVarB.b(this, view, motionEvent);
                                break;
                        }
                        if (zB) {
                            this.p = view;
                        }
                    }
                    z = zB;
                    boolean zE = dVar.e();
                    boolean zA = dVar.a(this, view);
                    boolean z4 = zA && !zE;
                    if (!zA || z4) {
                        MotionEvent motionEvent3 = motionEvent2;
                        z2 = z4;
                        motionEventObtain = motionEvent3;
                    }
                }
                i2++;
                z3 = z2;
                zB = z;
                motionEvent2 = motionEventObtain;
            } else {
                z = zB;
            }
        }
        list.clear();
        return z;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = null;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            a(true);
        }
        boolean zA = a(motionEvent, 0);
        if (0 != 0) {
            motionEvent2.recycle();
        }
        if (actionMasked == 1 || actionMasked == 3) {
            a(true);
        }
        return zA;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0043  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r12) {
        /*
            r11 = this;
            r4 = 3
            r10 = 1
            r5 = 0
            r7 = 0
            r2 = 0
            int r9 = r12.getActionMasked()
            android.view.View r0 = r11.p
            if (r0 != 0) goto L5d
            boolean r0 = r11.a(r12, r10)
            if (r0 == 0) goto L5a
            r1 = r0
        L14:
            android.view.View r0 = r11.p
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            android.support.design.widget.CoordinatorLayout$d r0 = (android.support.design.widget.CoordinatorLayout.d) r0
            android.support.design.widget.CoordinatorLayout$a r0 = r0.b()
            if (r0 == 0) goto L58
            android.view.View r3 = r11.p
            boolean r0 = r0.b(r11, r3, r12)
            r8 = r0
        L29:
            android.view.View r0 = r11.p
            if (r0 != 0) goto L43
            boolean r0 = super.onTouchEvent(r12)
            r8 = r8 | r0
        L32:
            if (r8 != 0) goto L36
            if (r9 != 0) goto L36
        L36:
            if (r2 == 0) goto L3b
            r2.recycle()
        L3b:
            if (r9 == r10) goto L3f
            if (r9 != r4) goto L42
        L3f:
            r11.a(r7)
        L42:
            return r8
        L43:
            if (r1 == 0) goto L32
            if (r2 != 0) goto L56
            long r0 = android.os.SystemClock.uptimeMillis()
            r2 = r0
            r6 = r5
            android.view.MotionEvent r0 = android.view.MotionEvent.obtain(r0, r2, r4, r5, r6, r7)
        L51:
            super.onTouchEvent(r0)
            r2 = r0
            goto L32
        L56:
            r0 = r2
            goto L51
        L58:
            r8 = r7
            goto L29
        L5a:
            r1 = r0
            r8 = r7
            goto L29
        L5d:
            r1 = r7
            goto L14
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z && !this.m) {
            a(false);
            this.m = true;
        }
    }

    private int b(int i) {
        if (this.o == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i);
            return 0;
        }
        if (i < 0 || i >= this.o.length) {
            Log.e("CoordinatorLayout", "Keyline index " + i + " out of range for " + this);
            return 0;
        }
        return this.o[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    static a a(Context context, AttributeSet attributeSet, String str) {
        Map<String, Constructor<a>> map;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0 && !TextUtils.isEmpty(f283a)) {
            str = f283a + '.' + str;
        }
        try {
            Map<String, Constructor<a>> map2 = f285c.get();
            if (map2 == null) {
                HashMap map3 = new HashMap();
                f285c.set(map3);
                map = map3;
            } else {
                map = map2;
            }
            Constructor<a> constructor = map.get(str);
            if (constructor == null) {
                constructor = Class.forName(str, true, context.getClassLoader()).getConstructor(f284b);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return constructor.newInstance(context, attributeSet);
        } catch (Exception e2) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e2);
        }
    }

    d a(View view) {
        d dVar = (d) view.getLayoutParams();
        if (!dVar.f291b) {
            b bVar = null;
            for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                bVar = (b) superclass.getAnnotation(b.class);
                if (bVar != null) {
                    break;
                }
            }
            b bVar2 = bVar;
            if (bVar2 != null) {
                try {
                    dVar.a(bVar2.a().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                } catch (Exception e2) {
                    Log.e("CoordinatorLayout", "Default behavior class " + bVar2.a().getName() + " could not be instantiated. Did you forget a default constructor?", e2);
                }
            }
            dVar.f291b = true;
        }
        return dVar;
    }

    private void f() {
        this.g.clear();
        this.h.a();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            d dVarA = a(childAt);
            dVarA.b(this, childAt);
            this.h.a(childAt);
            for (int i2 = 0; i2 < childCount; i2++) {
                if (i2 != i) {
                    View childAt2 = getChildAt(i2);
                    if (dVarA.a(this, childAt, childAt2)) {
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
        r.b(this, view, rect);
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

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        int iMax;
        int iCombineMeasuredStates;
        int i3;
        f();
        a();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int iE = android.support.v4.view.s.e(this);
        boolean z = iE == 1;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int i4 = paddingLeft + paddingRight;
        int i5 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        int i6 = 0;
        boolean z2 = this.t != null && android.support.v4.view.s.o(this);
        int size3 = this.g.size();
        int i7 = 0;
        while (i7 < size3) {
            View view = this.g.get(i7);
            if (view.getVisibility() == 8) {
                iCombineMeasuredStates = i6;
                iMax = suggestedMinimumHeight;
                i3 = suggestedMinimumWidth;
            } else {
                d dVar = (d) view.getLayoutParams();
                int iMax2 = 0;
                if (dVar.e >= 0 && mode != 0) {
                    int iB = b(dVar.e);
                    int iA = android.support.v4.view.d.a(d(dVar.f292c), iE) & 7;
                    if ((iA == 3 && !z) || (iA == 5 && z)) {
                        iMax2 = Math.max(0, (size - paddingRight) - iB);
                    } else if ((iA == 5 && !z) || (iA == 3 && z)) {
                        iMax2 = Math.max(0, iB - paddingLeft);
                    }
                }
                if (!z2 || android.support.v4.view.s.o(view)) {
                    iMakeMeasureSpec = i2;
                    iMakeMeasureSpec2 = i;
                } else {
                    int iA2 = this.t.a() + this.t.c();
                    int iB2 = this.t.b() + this.t.d();
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size - iA2, mode);
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size2 - iB2, mode2);
                }
                a aVarB = dVar.b();
                if (aVarB == null || !aVarB.a(this, view, iMakeMeasureSpec2, iMax2, iMakeMeasureSpec, 0)) {
                    a(view, iMakeMeasureSpec2, iMax2, iMakeMeasureSpec, 0);
                }
                int iMax3 = Math.max(suggestedMinimumWidth, view.getMeasuredWidth() + i4 + dVar.leftMargin + dVar.rightMargin);
                iMax = Math.max(suggestedMinimumHeight, view.getMeasuredHeight() + i5 + dVar.topMargin + dVar.bottomMargin);
                iCombineMeasuredStates = View.combineMeasuredStates(i6, view.getMeasuredState());
                i3 = iMax3;
            }
            i7++;
            i6 = iCombineMeasuredStates;
            suggestedMinimumHeight = iMax;
            suggestedMinimumWidth = i3;
        }
        setMeasuredDimension(View.resolveSizeAndState(suggestedMinimumWidth, i, (-16777216) & i6), View.resolveSizeAndState(suggestedMinimumHeight, i2, i6 << 16));
    }

    private aa b(aa aaVar) {
        aa aaVarA;
        a aVarB;
        if (!aaVar.e()) {
            int childCount = getChildCount();
            int i = 0;
            aa aaVar2 = aaVar;
            while (true) {
                if (i >= childCount) {
                    aaVarA = aaVar2;
                    break;
                }
                View childAt = getChildAt(i);
                if (!android.support.v4.view.s.o(childAt) || (aVarB = ((d) childAt.getLayoutParams()).b()) == null) {
                    aaVarA = aaVar2;
                } else {
                    aaVarA = aVarB.a(this, childAt, aaVar2);
                    if (aaVarA.e()) {
                        break;
                    }
                }
                i++;
                aaVar2 = aaVarA;
            }
            return aaVarA;
        }
        return aaVar;
    }

    public void a(View view, int i) {
        d dVar = (d) view.getLayoutParams();
        if (dVar.d()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        if (dVar.k != null) {
            a(view, dVar.k, i);
        } else if (dVar.e >= 0) {
            b(view, dVar.e, i);
        } else {
            d(view, i);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        a aVarB;
        int iE = android.support.v4.view.s.e(this);
        int size = this.g.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.g.get(i5);
            if (view.getVisibility() != 8 && ((aVarB = ((d) view.getLayoutParams()).b()) == null || !aVarB.a(this, view, iE))) {
                a(view, iE);
            }
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.u && this.v != null) {
            int iB = this.t != null ? this.t.b() : 0;
            if (iB > 0) {
                this.v.setBounds(0, 0, getWidth(), iB);
                this.v.draw(canvas);
            }
        }
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        g();
    }

    void b(View view, Rect rect) {
        ((d) view.getLayoutParams()).a(rect);
    }

    void c(View view, Rect rect) {
        rect.set(((d) view.getLayoutParams()).c());
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

    private void a(View view, int i, Rect rect, Rect rect2, d dVar, int i2, int i3) {
        int iWidth;
        int iHeight;
        int iA = android.support.v4.view.d.a(e(dVar.f292c), i);
        int iA2 = android.support.v4.view.d.a(c(dVar.f293d), i);
        int i4 = iA & 7;
        int i5 = iA & 112;
        int i6 = iA2 & 112;
        switch (iA2 & 7) {
            case 1:
                iWidth = (rect.width() / 2) + rect.left;
                break;
            case 5:
                iWidth = rect.right;
                break;
            default:
                iWidth = rect.left;
                break;
        }
        switch (i6) {
            case 16:
                iHeight = rect.top + (rect.height() / 2);
                break;
            case 80:
                iHeight = rect.bottom;
                break;
            default:
                iHeight = rect.top;
                break;
        }
        switch (i4) {
            case 1:
                iWidth -= i2 / 2;
                break;
            case 5:
                break;
            default:
                iWidth -= i2;
                break;
        }
        switch (i5) {
            case 16:
                iHeight -= i3 / 2;
                break;
            case 80:
                break;
            default:
                iHeight -= i3;
                break;
        }
        rect2.set(iWidth, iHeight, iWidth + i2, iHeight + i3);
    }

    private void a(d dVar, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + dVar.leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - dVar.rightMargin));
        int iMax2 = Math.max(getPaddingTop() + dVar.topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - dVar.bottomMargin));
        rect.set(iMax, iMax2, iMax + i, iMax2 + i2);
    }

    void a(View view, int i, Rect rect, Rect rect2) {
        d dVar = (d) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        a(view, i, rect, rect2, dVar, measuredWidth, measuredHeight);
        a(dVar, rect2, measuredWidth, measuredHeight);
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
        d dVar = (d) view.getLayoutParams();
        int iA = android.support.v4.view.d.a(d(dVar.f292c), i2);
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
        switch (i3) {
            case 1:
                iB += measuredWidth / 2;
                break;
            case 5:
                iB += measuredWidth;
                break;
        }
        switch (i4) {
            case 16:
                i5 = 0 + (measuredHeight / 2);
                break;
            case 80:
                i5 = 0 + measuredHeight;
                break;
        }
        int iMax = Math.max(getPaddingLeft() + dVar.leftMargin, Math.min(iB, ((width - getPaddingRight()) - measuredWidth) - dVar.rightMargin));
        int iMax2 = Math.max(getPaddingTop() + dVar.topMargin, Math.min(i5, ((height - getPaddingBottom()) - measuredHeight) - dVar.bottomMargin));
        view.layout(iMax, iMax2, iMax + measuredWidth, iMax2 + measuredHeight);
    }

    private void d(View view, int i) {
        d dVar = (d) view.getLayoutParams();
        Rect rectE = e();
        rectE.set(getPaddingLeft() + dVar.leftMargin, getPaddingTop() + dVar.topMargin, (getWidth() - getPaddingRight()) - dVar.rightMargin, (getHeight() - getPaddingBottom()) - dVar.bottomMargin);
        if (this.t != null && android.support.v4.view.s.o(this) && !android.support.v4.view.s.o(view)) {
            rectE.left += this.t.a();
            rectE.top += this.t.b();
            rectE.right -= this.t.c();
            rectE.bottom -= this.t.d();
        }
        Rect rectE2 = e();
        android.support.v4.view.d.a(c(dVar.f292c), view.getMeasuredWidth(), view.getMeasuredHeight(), rectE, rectE2, i);
        view.layout(rectE2.left, rectE2.top, rectE2.right, rectE2.bottom);
        a(rectE);
        a(rectE2);
    }

    private static int c(int i) {
        int i2 = (i & 7) == 0 ? 8388611 | i : i;
        if ((i2 & 112) == 0) {
            return i2 | 48;
        }
        return i2;
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

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        d dVar = (d) view.getLayoutParams();
        if (dVar.f290a != null) {
            float fD = dVar.f290a.d(this, view);
            if (fD > 0.0f) {
                if (this.l == null) {
                    this.l = new Paint();
                }
                this.l.setColor(dVar.f290a.c(this, view));
                this.l.setAlpha(android.support.v4.d.a.a(Math.round(fD * 255.0f), 0, 255));
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

    /* JADX WARN: Removed duplicated region for block: B:35:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void a(int r15) {
        /*
            Method dump skipped, instruction units count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.CoordinatorLayout.a(int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(android.view.View r11, android.graphics.Rect r12, int r13) {
        /*
            Method dump skipped, instruction units count: 269
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.CoordinatorLayout.a(android.view.View, android.graphics.Rect, int):void");
    }

    private void e(View view, int i) {
        d dVar = (d) view.getLayoutParams();
        if (dVar.i != i) {
            android.support.v4.view.s.d(view, i - dVar.i);
            dVar.i = i;
        }
    }

    private void f(View view, int i) {
        d dVar = (d) view.getLayoutParams();
        if (dVar.j != i) {
            android.support.v4.view.s.c(view, i - dVar.j);
            dVar.j = i;
        }
    }

    public void b(View view) {
        List listC = this.h.c(view);
        if (listC != null && !listC.isEmpty()) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < listC.size()) {
                    View view2 = (View) listC.get(i2);
                    a aVarB = ((d) view2.getLayoutParams()).b();
                    if (aVarB != null) {
                        aVarB.b(this, view2, view);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
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
        boolean z = false;
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            if (!e(getChildAt(i))) {
                i++;
            } else {
                z = true;
                break;
            }
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
                this.r = new e();
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
        a aVarB;
        d dVar = (d) view.getLayoutParams();
        if (dVar.k != null) {
            Rect rectE = e();
            Rect rectE2 = e();
            Rect rectE3 = e();
            a(dVar.k, rectE);
            a(view, false, rectE2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            a(view, i, rectE, rectE3, dVar, measuredWidth, measuredHeight);
            boolean z = (rectE3.left == rectE2.left && rectE3.top == rectE2.top) ? false : true;
            a(dVar, rectE3, measuredWidth, measuredHeight);
            int i2 = rectE3.left - rectE2.left;
            int i3 = rectE3.top - rectE2.top;
            if (i2 != 0) {
                android.support.v4.view.s.d(view, i2);
            }
            if (i3 != 0) {
                android.support.v4.view.s.c(view, i3);
            }
            if (z && (aVarB = dVar.b()) != null) {
                aVarB.b(this, view, dVar.k);
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
    public d generateLayoutParams(AttributeSet attributeSet) {
        return new d(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public d generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof d) {
            return new d((d) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new d((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new d(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public d generateDefaultLayoutParams() {
        return new d(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof d) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return a(view, view2, i, 0);
    }

    @Override // android.support.v4.view.m
    public boolean a(View view, View view2, int i, int i2) {
        boolean z;
        boolean z2 = false;
        int childCount = getChildCount();
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 8) {
                z = z2;
            } else {
                d dVar = (d) childAt.getLayoutParams();
                a aVarB = dVar.b();
                if (aVarB != null) {
                    boolean zA = aVarB.a(this, childAt, view, view2, i, i2);
                    z = z2 | zA;
                    dVar.a(i2, zA);
                } else {
                    dVar.a(i2, false);
                    z = z2;
                }
            }
            i3++;
            z2 = z;
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public void onNestedScrollAccepted(View view, View view2, int i) {
        b(view, view2, i, 0);
    }

    @Override // android.support.v4.view.m
    public void b(View view, View view2, int i, int i2) {
        a aVarB;
        this.x.a(view, view2, i, i2);
        this.q = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            d dVar = (d) childAt.getLayoutParams();
            if (dVar.b(i2) && (aVarB = dVar.b()) != null) {
                aVarB.b(this, childAt, view, view2, i, i2);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public void onStopNestedScroll(View view) {
        c(view, 0);
    }

    @Override // android.support.v4.view.m
    public void c(View view, int i) {
        this.x.a(view, i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            d dVar = (d) childAt.getLayoutParams();
            if (dVar.b(i)) {
                a aVarB = dVar.b();
                if (aVarB != null) {
                    aVarB.a(this, childAt, view, i);
                }
                dVar.a(i);
                dVar.h();
            }
        }
        this.q = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        a(view, i, i2, i3, i4, 0);
    }

    @Override // android.support.v4.view.m
    public void a(View view, int i, int i2, int i3, int i4, int i5) {
        boolean z;
        int childCount = getChildCount();
        boolean z2 = false;
        int i6 = 0;
        while (i6 < childCount) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() == 8) {
                z = z2;
            } else {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.b(i5)) {
                    a aVarB = dVar.b();
                    if (aVarB != null) {
                        aVarB.a(this, childAt, view, i, i2, i3, i4, i5);
                        z = true;
                    } else {
                        z = z2;
                    }
                } else {
                    z = z2;
                }
            }
            i6++;
            z2 = z;
        }
        if (z2) {
            a(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        a(view, i, i2, iArr, 0);
    }

    @Override // android.support.v4.view.m
    public void a(View view, int i, int i2, int[] iArr, int i3) {
        boolean z;
        int iMax;
        int iMax2;
        int i4 = 0;
        int i5 = 0;
        boolean z2 = false;
        int childCount = getChildCount();
        int i6 = 0;
        while (i6 < childCount) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() == 8) {
                z = z2;
                iMax = i4;
                iMax2 = i5;
            } else {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.b(i3)) {
                    a aVarB = dVar.b();
                    if (aVarB != null) {
                        int[] iArr2 = this.k;
                        this.k[1] = 0;
                        iArr2[0] = 0;
                        aVarB.a(this, childAt, view, i, i2, this.k, i3);
                        iMax = i > 0 ? Math.max(i4, this.k[0]) : Math.min(i4, this.k[0]);
                        iMax2 = i2 > 0 ? Math.max(i5, this.k[1]) : Math.min(i5, this.k[1]);
                        z = true;
                    } else {
                        z = z2;
                        iMax = i4;
                        iMax2 = i5;
                    }
                } else {
                    z = z2;
                    iMax = i4;
                    iMax2 = i5;
                }
            }
            i6++;
            i5 = iMax2;
            i4 = iMax;
            z2 = z;
        }
        iArr[0] = i4;
        iArr[1] = i5;
        if (z2) {
            a(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        boolean zA;
        int childCount = getChildCount();
        int i = 0;
        boolean z2 = false;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 8) {
                zA = z2;
            } else {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.b(0)) {
                    a aVarB = dVar.b();
                    zA = aVarB != null ? aVarB.a(this, childAt, view, f2, f3, z) | z2 : z2;
                } else {
                    zA = z2;
                }
            }
            i++;
            z2 = zA;
        }
        if (z2) {
            a(1);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.l
    public boolean onNestedPreFling(View view, float f2, float f3) {
        boolean zA;
        int childCount = getChildCount();
        int i = 0;
        boolean z = false;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 8) {
                zA = z;
            } else {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.b(0)) {
                    a aVarB = dVar.b();
                    zA = aVarB != null ? aVarB.a(this, childAt, view, f2, f3) | z : z;
                } else {
                    zA = z;
                }
            }
            i++;
            z = zA;
        }
        return z;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.x.a();
    }

    class e implements ViewTreeObserver.OnPreDrawListener {
        e() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.a(0);
            return true;
        }
    }

    static class f implements Comparator<View> {
        f() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            float fW = android.support.v4.view.s.w(view);
            float fW2 = android.support.v4.view.s.w(view2);
            if (fW > fW2) {
                return -1;
            }
            if (fW < fW2) {
                return 1;
            }
            return 0;
        }
    }

    public static abstract class a<V extends View> {
        public a() {
        }

        public a(Context context, AttributeSet attributeSet) {
        }

        public void a(d dVar) {
        }

        public void c() {
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public int c(CoordinatorLayout coordinatorLayout, V v) {
            return -16777216;
        }

        public float d(CoordinatorLayout coordinatorLayout, V v) {
            return 0.0f;
        }

        public boolean e(CoordinatorLayout coordinatorLayout, V v) {
            return d(coordinatorLayout, v) > 0.0f;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public boolean b(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public void d(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        @Deprecated
        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                return a(coordinatorLayout, v, view, view2, i);
            }
            return false;
        }

        @Deprecated
        public void b(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        }

        public void b(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                b(coordinatorLayout, v, view, view2, i);
            }
        }

        @Deprecated
        public void c(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
            if (i == 0) {
                c(coordinatorLayout, v, view);
            }
        }

        @Deprecated
        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                a(coordinatorLayout, v, view, i, i2, i3, i4);
            }
        }

        @Deprecated
        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
            if (i3 == 0) {
                a(coordinatorLayout, v, view, i, i2, iArr);
            }
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2, boolean z) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
            return false;
        }

        public aa a(CoordinatorLayout coordinatorLayout, V v, aa aaVar) {
            return aaVar;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        public Parcelable b(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }
    }

    public static class d extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        a f290a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f291b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f292c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f293d;
        public int e;
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

        public d(int i, int i2) {
            super(i, i2);
            this.f291b = false;
            this.f292c = 0;
            this.f293d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
        }

        d(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f291b = false;
            this.f292c = 0;
            this.f293d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.CoordinatorLayout_Layout);
            this.f292c = typedArrayObtainStyledAttributes.getInteger(a.j.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f = typedArrayObtainStyledAttributes.getResourceId(a.j.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f293d = typedArrayObtainStyledAttributes.getInteger(a.j.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.e = typedArrayObtainStyledAttributes.getInteger(a.j.CoordinatorLayout_Layout_layout_keyline, -1);
            this.g = typedArrayObtainStyledAttributes.getInt(a.j.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.h = typedArrayObtainStyledAttributes.getInt(a.j.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            this.f291b = typedArrayObtainStyledAttributes.hasValue(a.j.CoordinatorLayout_Layout_layout_behavior);
            if (this.f291b) {
                this.f290a = CoordinatorLayout.a(context, attributeSet, typedArrayObtainStyledAttributes.getString(a.j.CoordinatorLayout_Layout_layout_behavior));
            }
            typedArrayObtainStyledAttributes.recycle();
            if (this.f290a != null) {
                this.f290a.a(this);
            }
        }

        public d(d dVar) {
            super((ViewGroup.MarginLayoutParams) dVar);
            this.f291b = false;
            this.f292c = 0;
            this.f293d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
        }

        public d(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f291b = false;
            this.f292c = 0;
            this.f293d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
        }

        public d(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f291b = false;
            this.f292c = 0;
            this.f293d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.m = new Rect();
        }

        public int a() {
            return this.f;
        }

        public a b() {
            return this.f290a;
        }

        public void a(a aVar) {
            if (this.f290a != aVar) {
                if (this.f290a != null) {
                    this.f290a.c();
                }
                this.f290a = aVar;
                this.n = null;
                this.f291b = true;
                if (aVar != null) {
                    aVar.a(this);
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
            if (this.f290a == null) {
                this.o = false;
            }
            return this.o;
        }

        boolean a(CoordinatorLayout coordinatorLayout, View view) {
            if (this.o) {
                return true;
            }
            boolean zE = (this.f290a != null ? this.f290a.e(coordinatorLayout, view) : false) | this.o;
            this.o = zE;
            return zE;
        }

        void f() {
            this.o = false;
        }

        void a(int i) {
            a(i, false);
        }

        void a(int i, boolean z) {
            switch (i) {
                case 0:
                    this.p = z;
                    break;
                case 1:
                    this.q = z;
                    break;
            }
        }

        boolean b(int i) {
            switch (i) {
                case 0:
                    return this.p;
                case 1:
                    return this.q;
                default:
                    return false;
            }
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
            return view2 == this.l || a(view2, android.support.v4.view.s.e(coordinatorLayout)) || (this.f290a != null && this.f290a.a(coordinatorLayout, view, view2));
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
            this.k = coordinatorLayout.findViewById(this.f);
            if (this.k != null) {
                if (this.k == coordinatorLayout) {
                    if (coordinatorLayout.isInEditMode()) {
                        this.l = null;
                        this.k = null;
                        return;
                    }
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
                View view2 = this.k;
                for (ViewParent parent = this.k.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                    if (parent == view) {
                        if (coordinatorLayout.isInEditMode()) {
                            this.l = null;
                            this.k = null;
                            return;
                        }
                        throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                    }
                    if (parent instanceof View) {
                        view2 = (View) parent;
                    }
                }
                this.l = view2;
                return;
            }
            if (coordinatorLayout.isInEditMode()) {
                this.l = null;
                this.k = null;
                return;
            }
            throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f) + " to anchor view " + view);
        }

        private boolean b(View view, CoordinatorLayout coordinatorLayout) {
            if (this.k.getId() != this.f) {
                return false;
            }
            View view2 = this.k;
            for (ViewParent parent = this.k.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent == null || parent == view) {
                    this.l = null;
                    this.k = null;
                    return false;
                }
                if (parent instanceof View) {
                    view2 = (View) parent;
                }
            }
            this.l = view2;
            return true;
        }

        private boolean a(View view, int i) {
            int iA = android.support.v4.view.d.a(((d) view.getLayoutParams()).g, i);
            return iA != 0 && (android.support.v4.view.d.a(this.h, i) & iA) == iA;
        }
    }

    private class c implements ViewGroup.OnHierarchyChangeListener {
        c() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (CoordinatorLayout.this.e != null) {
                CoordinatorLayout.this.e.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.a(2);
            if (CoordinatorLayout.this.e != null) {
                CoordinatorLayout.this.e.onChildViewRemoved(view, view2);
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
        SparseArray<Parcelable> sparseArray = savedState.f288a;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            a aVarB = a(childAt).b();
            if (id != -1 && aVarB != null && (parcelable2 = sparseArray.get(id)) != null) {
                aVarB.a(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableB;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            a aVarB = ((d) childAt.getLayoutParams()).b();
            if (id != -1 && aVarB != null && (parcelableB = aVarB.b(this, childAt)) != null) {
                sparseArray.append(id, parcelableB);
            }
        }
        savedState.f288a = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        a aVarB = ((d) view.getLayoutParams()).b();
        if (aVarB == null || !aVarB.a(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    private void g() {
        if (Build.VERSION.SDK_INT >= 21) {
            if (android.support.v4.view.s.o(this)) {
                if (this.w == null) {
                    this.w = new android.support.v4.view.o() { // from class: android.support.design.widget.CoordinatorLayout.1
                        @Override // android.support.v4.view.o
                        public aa a(View view, aa aaVar) {
                            return CoordinatorLayout.this.a(aaVar);
                        }
                    };
                }
                android.support.v4.view.s.a(this, this.w);
                setSystemUiVisibility(1280);
                return;
            }
            android.support.v4.view.s.a(this, (android.support.v4.view.o) null);
        }
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.design.widget.CoordinatorLayout.SavedState.1
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
        SparseArray<Parcelable> f288a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int i = parcel.readInt();
            int[] iArr = new int[i];
            parcel.readIntArray(iArr);
            Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
            this.f288a = new SparseArray<>(i);
            for (int i2 = 0; i2 < i; i2++) {
                this.f288a.append(iArr[i2], parcelableArray[i2]);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            int size = this.f288a != null ? this.f288a.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.f288a.keyAt(i2);
                parcelableArr[i2] = this.f288a.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }
}
