package com.google.android.material.tabs;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.a;
import androidx.appcompat.app.a;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.g.d;
import androidx.core.h.p;
import androidx.core.h.r;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
@ViewPager.a
public class TabLayout extends HorizontalScrollView {
    private static final d.a<f> w = new d.c(16);
    private final e A;
    private final int B;
    private final int C;
    private final int D;
    private int E;
    private b F;
    private final ArrayList<b> G;
    private b H;
    private ValueAnimator I;
    private androidx.viewpager.widget.a J;
    private DataSetObserver K;
    private g L;
    private a M;
    private boolean N;
    private final d.a<h> O;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f5053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f5054b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f5055c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f5056d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f5057e;
    ColorStateList f;
    ColorStateList g;
    ColorStateList h;
    Drawable i;
    PorterDuff.Mode j;
    float k;
    float l;
    final int m;
    int n;
    int o;
    int p;
    int q;
    int r;
    boolean s;
    boolean t;
    boolean u;
    ViewPager v;
    private final ArrayList<f> x;
    private f y;
    private final RectF z;

    public interface b<T extends f> {
        void a(T t);

        void b(T t);

        void c(T t);
    }

    public interface c extends b {
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.tabStyle);
    }

    public TabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.x = new ArrayList<>();
        this.z = new RectF();
        this.n = Integer.MAX_VALUE;
        this.G = new ArrayList<>();
        this.O = new d.b(12);
        setHorizontalScrollBarEnabled(false);
        e eVar = new e(context);
        this.A = eVar;
        super.addView(eVar, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray typedArrayA = com.google.android.material.internal.e.a(context, attributeSet, a.i.TabLayout, i2, a.h.Widget_Design_TabLayout, a.i.TabLayout_tabTextAppearance);
        this.A.b(typedArrayA.getDimensionPixelSize(a.i.TabLayout_tabIndicatorHeight, -1));
        this.A.a(typedArrayA.getColor(a.i.TabLayout_tabIndicatorColor, 0));
        setSelectedTabIndicator(com.google.android.material.f.a.b(context, typedArrayA, a.i.TabLayout_tabIndicator));
        setSelectedTabIndicatorGravity(typedArrayA.getInt(a.i.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorFullWidth(typedArrayA.getBoolean(a.i.TabLayout_tabIndicatorFullWidth, true));
        int dimensionPixelSize = typedArrayA.getDimensionPixelSize(a.i.TabLayout_tabPadding, 0);
        this.f5056d = dimensionPixelSize;
        this.f5055c = dimensionPixelSize;
        this.f5054b = dimensionPixelSize;
        this.f5053a = dimensionPixelSize;
        this.f5053a = typedArrayA.getDimensionPixelSize(a.i.TabLayout_tabPaddingStart, this.f5053a);
        this.f5054b = typedArrayA.getDimensionPixelSize(a.i.TabLayout_tabPaddingTop, this.f5054b);
        this.f5055c = typedArrayA.getDimensionPixelSize(a.i.TabLayout_tabPaddingEnd, this.f5055c);
        this.f5056d = typedArrayA.getDimensionPixelSize(a.i.TabLayout_tabPaddingBottom, this.f5056d);
        int resourceId = typedArrayA.getResourceId(a.i.TabLayout_tabTextAppearance, a.h.TextAppearance_Design_Tab);
        this.f5057e = resourceId;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(resourceId, a.j.TextAppearance);
        try {
            this.k = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.TextAppearance_android_textSize, 0);
            this.f = com.google.android.material.f.a.a(context, typedArrayObtainStyledAttributes, a.j.TextAppearance_android_textColor);
            typedArrayObtainStyledAttributes.recycle();
            if (typedArrayA.hasValue(a.i.TabLayout_tabTextColor)) {
                this.f = com.google.android.material.f.a.a(context, typedArrayA, a.i.TabLayout_tabTextColor);
            }
            if (typedArrayA.hasValue(a.i.TabLayout_tabSelectedTextColor)) {
                this.f = a(this.f.getDefaultColor(), typedArrayA.getColor(a.i.TabLayout_tabSelectedTextColor, 0));
            }
            this.g = com.google.android.material.f.a.a(context, typedArrayA, a.i.TabLayout_tabIconTint);
            this.j = com.google.android.material.internal.f.a(typedArrayA.getInt(a.i.TabLayout_tabIconTintMode, -1), null);
            this.h = com.google.android.material.f.a.a(context, typedArrayA, a.i.TabLayout_tabRippleColor);
            this.p = typedArrayA.getInt(a.i.TabLayout_tabIndicatorAnimationDuration, 300);
            this.B = typedArrayA.getDimensionPixelSize(a.i.TabLayout_tabMinWidth, -1);
            this.C = typedArrayA.getDimensionPixelSize(a.i.TabLayout_tabMaxWidth, -1);
            this.m = typedArrayA.getResourceId(a.i.TabLayout_tabBackground, 0);
            this.E = typedArrayA.getDimensionPixelSize(a.i.TabLayout_tabContentStart, 0);
            this.r = typedArrayA.getInt(a.i.TabLayout_tabMode, 1);
            this.o = typedArrayA.getInt(a.i.TabLayout_tabGravity, 0);
            this.s = typedArrayA.getBoolean(a.i.TabLayout_tabInlineLabel, false);
            this.u = typedArrayA.getBoolean(a.i.TabLayout_tabUnboundedRipple, false);
            typedArrayA.recycle();
            Resources resources = getResources();
            this.l = resources.getDimensionPixelSize(a.c.design_tab_text_size_2line);
            this.D = resources.getDimensionPixelSize(a.c.design_tab_scrollable_min_width);
            h();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public void setSelectedTabIndicatorColor(int i2) {
        this.A.a(i2);
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i2) {
        this.A.b(i2);
    }

    public void a(int i2, float f2, boolean z) {
        a(i2, f2, z, true);
    }

    void a(int i2, float f2, boolean z, boolean z2) {
        int iRound = Math.round(i2 + f2);
        if (iRound < 0 || iRound >= this.A.getChildCount()) {
            return;
        }
        if (z2) {
            this.A.a(i2, f2);
        }
        ValueAnimator valueAnimator = this.I;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.I.cancel();
        }
        scrollTo(a(i2, f2), 0);
        if (z) {
            setSelectedTabView(iRound);
        }
    }

    public void a(f fVar) {
        a(fVar, this.x.isEmpty());
    }

    public void a(f fVar, int i2) {
        a(fVar, i2, this.x.isEmpty());
    }

    public void a(f fVar, boolean z) {
        a(fVar, this.x.size(), z);
    }

    public void a(f fVar, int i2, boolean z) {
        if (fVar.f5074a != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        b(fVar, i2);
        e(fVar);
        if (z) {
            fVar.f();
        }
    }

    private void a(com.google.android.material.tabs.a aVar) {
        f fVarA = a();
        if (aVar.f5088a != null) {
            fVarA.a(aVar.f5088a);
        }
        if (aVar.f5089b != null) {
            fVarA.a(aVar.f5089b);
        }
        if (aVar.f5090c != 0) {
            fVarA.a(aVar.f5090c);
        }
        if (!TextUtils.isEmpty(aVar.getContentDescription())) {
            fVarA.b(aVar.getContentDescription());
        }
        a(fVarA);
    }

    @Deprecated
    public void setOnTabSelectedListener(b bVar) {
        b bVar2 = this.F;
        if (bVar2 != null) {
            b(bVar2);
        }
        this.F = bVar;
        if (bVar != null) {
            a(bVar);
        }
    }

    public void a(b bVar) {
        if (this.G.contains(bVar)) {
            return;
        }
        this.G.add(bVar);
    }

    public void b(b bVar) {
        this.G.remove(bVar);
    }

    public f a() {
        f fVarB = b();
        fVarB.f5074a = this;
        fVarB.f5075b = d(fVarB);
        return fVarB;
    }

    protected f b() {
        f fVarA = w.a();
        return fVarA == null ? new f() : fVarA;
    }

    protected boolean b(f fVar) {
        return w.a(fVar);
    }

    public int getTabCount() {
        return this.x.size();
    }

    public f a(int i2) {
        if (i2 < 0 || i2 >= getTabCount()) {
            return null;
        }
        return this.x.get(i2);
    }

    public int getSelectedTabPosition() {
        f fVar = this.y;
        if (fVar != null) {
            return fVar.d();
        }
        return -1;
    }

    public void c() {
        for (int childCount = this.A.getChildCount() - 1; childCount >= 0; childCount--) {
            c(childCount);
        }
        Iterator<f> it = this.x.iterator();
        while (it.hasNext()) {
            f next = it.next();
            it.remove();
            next.i();
            b(next);
        }
        this.y = null;
    }

    public void setTabMode(int i2) {
        if (i2 != this.r) {
            this.r = i2;
            h();
        }
    }

    public int getTabMode() {
        return this.r;
    }

    public void setTabGravity(int i2) {
        if (this.o != i2) {
            this.o = i2;
            h();
        }
    }

    public int getTabGravity() {
        return this.o;
    }

    public void setSelectedTabIndicatorGravity(int i2) {
        if (this.q != i2) {
            this.q = i2;
            r.d(this.A);
        }
    }

    public int getTabIndicatorGravity() {
        return this.q;
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.t = z;
        r.d(this.A);
    }

    public void setInlineLabel(boolean z) {
        if (this.s != z) {
            this.s = z;
            for (int i2 = 0; i2 < this.A.getChildCount(); i2++) {
                View childAt = this.A.getChildAt(i2);
                if (childAt instanceof h) {
                    ((h) childAt).c();
                }
            }
            h();
        }
    }

    public void setInlineLabelResource(int i2) {
        setInlineLabel(getResources().getBoolean(i2));
    }

    public void setUnboundedRipple(boolean z) {
        if (this.u != z) {
            this.u = z;
            for (int i2 = 0; i2 < this.A.getChildCount(); i2++) {
                View childAt = this.A.getChildAt(i2);
                if (childAt instanceof h) {
                    ((h) childAt).a(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(int i2) {
        setUnboundedRipple(getResources().getBoolean(i2));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.f != colorStateList) {
            this.f = colorStateList;
            e();
        }
    }

    public ColorStateList getTabTextColors() {
        return this.f;
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.g != colorStateList) {
            this.g = colorStateList;
            e();
        }
    }

    public void setTabIconTintResource(int i2) {
        setTabIconTint(androidx.appcompat.a.a.a.a(getContext(), i2));
    }

    public ColorStateList getTabIconTint() {
        return this.g;
    }

    public ColorStateList getTabRippleColor() {
        return this.h;
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.h != colorStateList) {
            this.h = colorStateList;
            for (int i2 = 0; i2 < this.A.getChildCount(); i2++) {
                View childAt = this.A.getChildAt(i2);
                if (childAt instanceof h) {
                    ((h) childAt).a(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(int i2) {
        setTabRippleColor(androidx.appcompat.a.a.a.a(getContext(), i2));
    }

    public Drawable getTabSelectedIndicator() {
        return this.i;
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (this.i != drawable) {
            this.i = drawable;
            r.d(this.A);
        }
    }

    public void setSelectedTabIndicator(int i2) {
        if (i2 != 0) {
            setSelectedTabIndicator(androidx.appcompat.a.a.a.b(getContext(), i2));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public void setupWithViewPager(ViewPager viewPager) {
        a(viewPager, true);
    }

    public void a(ViewPager viewPager, boolean z) {
        a(viewPager, z, false);
    }

    private void a(ViewPager viewPager, boolean z, boolean z2) {
        ViewPager viewPager2 = this.v;
        if (viewPager2 != null) {
            g gVar = this.L;
            if (gVar != null) {
                viewPager2.b(gVar);
            }
            a aVar = this.M;
            if (aVar != null) {
                this.v.b(aVar);
            }
        }
        b bVar = this.H;
        if (bVar != null) {
            b(bVar);
            this.H = null;
        }
        if (viewPager != null) {
            this.v = viewPager;
            if (this.L == null) {
                this.L = new g(this);
            }
            this.L.a();
            viewPager.a(this.L);
            i iVar = new i(viewPager);
            this.H = iVar;
            a(iVar);
            androidx.viewpager.widget.a adapter = viewPager.getAdapter();
            if (adapter != null) {
                a(adapter, z);
            }
            if (this.M == null) {
                this.M = new a();
            }
            this.M.a(z);
            viewPager.a(this.M);
            a(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.v = null;
            a((androidx.viewpager.widget.a) null, false);
        }
        this.N = z2;
    }

    @Deprecated
    public void setTabsFromPagerAdapter(androidx.viewpager.widget.a aVar) {
        a(aVar, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.v == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                a((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.N) {
            setupWithViewPager(null);
            this.N = false;
        }
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.A.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    void a(androidx.viewpager.widget.a aVar, boolean z) {
        DataSetObserver dataSetObserver;
        androidx.viewpager.widget.a aVar2 = this.J;
        if (aVar2 != null && (dataSetObserver = this.K) != null) {
            aVar2.b(dataSetObserver);
        }
        this.J = aVar;
        if (z && aVar != null) {
            if (this.K == null) {
                this.K = new d();
            }
            aVar.a(this.K);
        }
        d();
    }

    void d() {
        int currentItem;
        c();
        androidx.viewpager.widget.a aVar = this.J;
        if (aVar != null) {
            int iB = aVar.b();
            for (int i2 = 0; i2 < iB; i2++) {
                a(a().a(this.J.b(i2)), false);
            }
            ViewPager viewPager = this.v;
            if (viewPager == null || iB <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            c(a(currentItem));
        }
    }

    private void e() {
        int size = this.x.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.x.get(i2).h();
        }
    }

    private h d(f fVar) {
        d.a<h> aVar = this.O;
        h hVarA = aVar != null ? aVar.a() : null;
        if (hVarA == null) {
            hVarA = new h(getContext());
        }
        hVarA.a(fVar);
        hVarA.setFocusable(true);
        hVarA.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(fVar.f)) {
            hVarA.setContentDescription(fVar.f5078e);
        } else {
            hVarA.setContentDescription(fVar.f);
        }
        return hVarA;
    }

    private void b(f fVar, int i2) {
        fVar.b(i2);
        this.x.add(i2, fVar);
        int size = this.x.size();
        while (true) {
            i2++;
            if (i2 >= size) {
                return;
            } else {
                this.x.get(i2).b(i2);
            }
        }
    }

    private void e(f fVar) {
        this.A.addView(fVar.f5075b, fVar.d(), f());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    private void a(View view) {
        if (view instanceof com.google.android.material.tabs.a) {
            a((com.google.android.material.tabs.a) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    private LinearLayout.LayoutParams f() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        a(layoutParams);
        return layoutParams;
    }

    private void a(LinearLayout.LayoutParams layoutParams) {
        if (this.r == 1 && this.o == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
    }

    int b(int i2) {
        return Math.round(getResources().getDisplayMetrics().density * i2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        for (int i2 = 0; i2 < this.A.getChildCount(); i2++) {
            View childAt = this.A.getChildAt(i2);
            if (childAt instanceof h) {
                ((h) childAt).a(canvas);
            }
        }
        super.onDraw(canvas);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0075  */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.getDefaultHeight()
            int r0 = r5.b(r0)
            int r1 = r5.getPaddingTop()
            int r0 = r0 + r1
            int r1 = r5.getPaddingBottom()
            int r0 = r0 + r1
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 1073741824(0x40000000, float:2.0)
            if (r1 == r2) goto L24
            if (r1 == 0) goto L1f
            goto L30
        L1f:
            int r7 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r3)
            goto L30
        L24:
            int r7 = android.view.View.MeasureSpec.getSize(r7)
            int r7 = java.lang.Math.min(r0, r7)
            int r7 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r3)
        L30:
            int r0 = android.view.View.MeasureSpec.getSize(r6)
            int r1 = android.view.View.MeasureSpec.getMode(r6)
            if (r1 == 0) goto L49
            int r1 = r5.C
            if (r1 <= 0) goto L3f
            goto L47
        L3f:
            r1 = 56
            int r1 = r5.b(r1)
            int r1 = r0 - r1
        L47:
            r5.n = r1
        L49:
            super.onMeasure(r6, r7)
            int r6 = r5.getChildCount()
            r0 = 1
            if (r6 != r0) goto L97
            r6 = 0
            android.view.View r1 = r5.getChildAt(r6)
            int r2 = r5.r
            if (r2 == 0) goto L6a
            if (r2 == r0) goto L5f
            goto L77
        L5f:
            int r2 = r1.getMeasuredWidth()
            int r4 = r5.getMeasuredWidth()
            if (r2 == r4) goto L75
            goto L76
        L6a:
            int r2 = r1.getMeasuredWidth()
            int r4 = r5.getMeasuredWidth()
            if (r2 >= r4) goto L75
            goto L76
        L75:
            r0 = 0
        L76:
            r6 = r0
        L77:
            if (r6 == 0) goto L97
            int r6 = r5.getPaddingTop()
            int r0 = r5.getPaddingBottom()
            int r6 = r6 + r0
            android.view.ViewGroup$LayoutParams r0 = r1.getLayoutParams()
            int r0 = r0.height
            int r6 = getChildMeasureSpec(r7, r6, r0)
            int r7 = r5.getMeasuredWidth()
            int r7 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r3)
            r1.measure(r7, r6)
        L97:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.onMeasure(int, int):void");
    }

    private void c(int i2) {
        h hVar = (h) this.A.getChildAt(i2);
        this.A.removeViewAt(i2);
        if (hVar != null) {
            hVar.a();
            this.O.a(hVar);
        }
        requestLayout();
    }

    private void d(int i2) {
        if (i2 == -1) {
            return;
        }
        if (getWindowToken() == null || !r.w(this) || this.A.a()) {
            a(i2, 0.0f, true);
            return;
        }
        int scrollX = getScrollX();
        int iA = a(i2, 0.0f);
        if (scrollX != iA) {
            g();
            this.I.setIntValues(scrollX, iA);
            this.I.start();
        }
        this.A.b(i2, this.p);
    }

    private void g() {
        if (this.I == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.I = valueAnimator;
            valueAnimator.setInterpolator(com.google.android.material.a.a.f4776b);
            this.I.setDuration(this.p);
            this.I.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    TabLayout.this.scrollTo(((Integer) valueAnimator2.getAnimatedValue()).intValue(), 0);
                }
            });
        }
    }

    void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        g();
        this.I.addListener(animatorListener);
    }

    private void setSelectedTabView(int i2) {
        int childCount = this.A.getChildCount();
        if (i2 < childCount) {
            int i3 = 0;
            while (i3 < childCount) {
                View childAt = this.A.getChildAt(i3);
                boolean z = true;
                childAt.setSelected(i3 == i2);
                if (i3 != i2) {
                    z = false;
                }
                childAt.setActivated(z);
                i3++;
            }
        }
    }

    void c(f fVar) {
        b(fVar, true);
    }

    void b(f fVar, boolean z) {
        f fVar2 = this.y;
        if (fVar2 == fVar) {
            if (fVar2 != null) {
                h(fVar);
                d(fVar.d());
                return;
            }
            return;
        }
        int iD = fVar != null ? fVar.d() : -1;
        if (z) {
            if ((fVar2 == null || fVar2.d() == -1) && iD != -1) {
                a(iD, 0.0f, true);
            } else {
                d(iD);
            }
            if (iD != -1) {
                setSelectedTabView(iD);
            }
        }
        this.y = fVar;
        if (fVar2 != null) {
            g(fVar2);
        }
        if (fVar != null) {
            f(fVar);
        }
    }

    private void f(f fVar) {
        for (int size = this.G.size() - 1; size >= 0; size--) {
            this.G.get(size).a(fVar);
        }
    }

    private void g(f fVar) {
        for (int size = this.G.size() - 1; size >= 0; size--) {
            this.G.get(size).b(fVar);
        }
    }

    private void h(f fVar) {
        for (int size = this.G.size() - 1; size >= 0; size--) {
            this.G.get(size).c(fVar);
        }
    }

    private int a(int i2, float f2) {
        if (this.r != 0) {
            return 0;
        }
        View childAt = this.A.getChildAt(i2);
        int i3 = i2 + 1;
        View childAt2 = i3 < this.A.getChildCount() ? this.A.getChildAt(i3) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i4 = (int) ((width + width2) * 0.5f * f2);
        return r.f(this) == 0 ? left + i4 : left - i4;
    }

    private void h() {
        r.a(this.A, this.r == 0 ? Math.max(0, this.E - this.f5053a) : 0, 0, 0, 0);
        int i2 = this.r;
        if (i2 == 0) {
            this.A.setGravity(8388611);
        } else if (i2 == 1) {
            this.A.setGravity(1);
        }
        a(true);
    }

    void a(boolean z) {
        for (int i2 = 0; i2 < this.A.getChildCount(); i2++) {
            View childAt = this.A.getChildAt(i2);
            childAt.setMinimumWidth(getTabMinWidth());
            a((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TabLayout f5074a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public h f5075b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Object f5076c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Drawable f5077d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private CharSequence f5078e;
        private CharSequence f;
        private int g = -1;
        private View h;

        public Object a() {
            return this.f5076c;
        }

        public f a(Object obj) {
            this.f5076c = obj;
            return this;
        }

        public View b() {
            return this.h;
        }

        public f a(View view) {
            this.h = view;
            h();
            return this;
        }

        public f a(int i) {
            return a(LayoutInflater.from(this.f5075b.getContext()).inflate(i, (ViewGroup) this.f5075b, false));
        }

        public Drawable c() {
            return this.f5077d;
        }

        public int d() {
            return this.g;
        }

        void b(int i) {
            this.g = i;
        }

        public CharSequence e() {
            return this.f5078e;
        }

        public f a(Drawable drawable) {
            this.f5077d = drawable;
            h();
            return this;
        }

        public f a(CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f) && !TextUtils.isEmpty(charSequence)) {
                this.f5075b.setContentDescription(charSequence);
            }
            this.f5078e = charSequence;
            h();
            return this;
        }

        public void f() {
            TabLayout tabLayout = this.f5074a;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.c(this);
        }

        public boolean g() {
            TabLayout tabLayout = this.f5074a;
            if (tabLayout != null) {
                return tabLayout.getSelectedTabPosition() == this.g;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public f b(CharSequence charSequence) {
            this.f = charSequence;
            h();
            return this;
        }

        void h() {
            h hVar = this.f5075b;
            if (hVar != null) {
                hVar.b();
            }
        }

        void i() {
            this.f5074a = null;
            this.f5075b = null;
            this.f5076c = null;
            this.f5077d = null;
            this.f5078e = null;
            this.f = null;
            this.g = -1;
            this.h = null;
        }
    }

    class h extends LinearLayout {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private f f5083b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f5084c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ImageView f5085d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private View f5086e;
        private TextView f;
        private ImageView g;
        private Drawable h;
        private int i;

        public h(Context context) {
            super(context);
            this.i = 2;
            a(context);
            r.a(this, TabLayout.this.f5053a, TabLayout.this.f5054b, TabLayout.this.f5055c, TabLayout.this.f5056d);
            setGravity(17);
            setOrientation(!TabLayout.this.s ? 1 : 0);
            setClickable(true);
            r.a(this, p.a(getContext(), 1002));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Context context) {
            if (TabLayout.this.m != 0) {
                Drawable drawableB = androidx.appcompat.a.a.a.b(context, TabLayout.this.m);
                this.h = drawableB;
                if (drawableB != null && drawableB.isStateful()) {
                    this.h.setState(getDrawableState());
                }
            } else {
                this.h = null;
            }
            Drawable gradientDrawable = new GradientDrawable();
            ((GradientDrawable) gradientDrawable).setColor(0);
            if (TabLayout.this.h != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList colorStateListA = com.google.android.material.g.a.a(TabLayout.this.h);
                if (Build.VERSION.SDK_INT >= 21) {
                    if (TabLayout.this.u) {
                        gradientDrawable = null;
                    }
                    gradientDrawable = new RippleDrawable(colorStateListA, gradientDrawable, TabLayout.this.u ? null : gradientDrawable2);
                } else {
                    Drawable drawableG = androidx.core.graphics.drawable.a.g(gradientDrawable2);
                    androidx.core.graphics.drawable.a.a(drawableG, colorStateListA);
                    gradientDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, drawableG});
                }
            }
            r.a(this, gradientDrawable);
            TabLayout.this.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Canvas canvas) {
            Drawable drawable = this.h;
            if (drawable != null) {
                drawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.h.draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.h;
            boolean state = false;
            if (drawable != null && drawable.isStateful()) {
                state = false | this.h.setState(drawableState);
            }
            if (state) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean zPerformClick = super.performClick();
            if (this.f5083b == null) {
                return zPerformClick;
            }
            if (!zPerformClick) {
                playSoundEffect(0);
            }
            this.f5083b.f();
            return true;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z && Build.VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            TextView textView = this.f5084c;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.f5085d;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.f5086e;
            if (view != null) {
                view.setSelected(z);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(a.c.class.getName());
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(a.c.class.getName());
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            Layout layout;
            int size = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i = View.MeasureSpec.makeMeasureSpec(TabLayout.this.n, Integer.MIN_VALUE);
            }
            super.onMeasure(i, i2);
            if (this.f5084c != null) {
                float f = TabLayout.this.k;
                int i3 = this.i;
                ImageView imageView = this.f5085d;
                boolean z = true;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.f5084c;
                    if (textView != null && textView.getLineCount() > 1) {
                        f = TabLayout.this.l;
                    }
                } else {
                    i3 = 1;
                }
                float textSize = this.f5084c.getTextSize();
                int lineCount = this.f5084c.getLineCount();
                int iA = androidx.core.widget.i.a(this.f5084c);
                if (f != textSize || (iA >= 0 && i3 != iA)) {
                    if (TabLayout.this.r == 1 && f > textSize && lineCount == 1 && ((layout = this.f5084c.getLayout()) == null || a(layout, 0, f) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) {
                        z = false;
                    }
                    if (z) {
                        this.f5084c.setTextSize(0, f);
                        this.f5084c.setMaxLines(i3);
                        super.onMeasure(i, i2);
                    }
                }
            }
        }

        void a(f fVar) {
            if (fVar != this.f5083b) {
                this.f5083b = fVar;
                b();
            }
        }

        void a() {
            a((f) null);
            setSelected(false);
        }

        final void b() {
            f fVar = this.f5083b;
            Drawable drawableMutate = null;
            View viewB = fVar != null ? fVar.b() : null;
            if (viewB != null) {
                ViewParent parent = viewB.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(viewB);
                    }
                    addView(viewB);
                }
                this.f5086e = viewB;
                TextView textView = this.f5084c;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f5085d;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f5085d.setImageDrawable(null);
                }
                TextView textView2 = (TextView) viewB.findViewById(R.id.text1);
                this.f = textView2;
                if (textView2 != null) {
                    this.i = androidx.core.widget.i.a(textView2);
                }
                this.g = (ImageView) viewB.findViewById(R.id.icon);
            } else {
                View view = this.f5086e;
                if (view != null) {
                    removeView(view);
                    this.f5086e = null;
                }
                this.f = null;
                this.g = null;
            }
            boolean z = false;
            if (this.f5086e == null) {
                if (this.f5085d == null) {
                    ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(a.g.design_layout_tab_icon, (ViewGroup) this, false);
                    addView(imageView2, 0);
                    this.f5085d = imageView2;
                }
                if (fVar != null && fVar.c() != null) {
                    drawableMutate = androidx.core.graphics.drawable.a.g(fVar.c()).mutate();
                }
                if (drawableMutate != null) {
                    androidx.core.graphics.drawable.a.a(drawableMutate, TabLayout.this.g);
                    if (TabLayout.this.j != null) {
                        androidx.core.graphics.drawable.a.a(drawableMutate, TabLayout.this.j);
                    }
                }
                if (this.f5084c == null) {
                    TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(a.g.design_layout_tab_text, (ViewGroup) this, false);
                    addView(textView3);
                    this.f5084c = textView3;
                    this.i = androidx.core.widget.i.a(textView3);
                }
                androidx.core.widget.i.a(this.f5084c, TabLayout.this.f5057e);
                if (TabLayout.this.f != null) {
                    this.f5084c.setTextColor(TabLayout.this.f);
                }
                a(this.f5084c, this.f5085d);
            } else if (this.f != null || this.g != null) {
                a(this.f, this.g);
            }
            if (fVar != null && !TextUtils.isEmpty(fVar.f)) {
                setContentDescription(fVar.f);
            }
            if (fVar != null && fVar.g()) {
                z = true;
            }
            setSelected(z);
        }

        final void c() {
            setOrientation(!TabLayout.this.s ? 1 : 0);
            if (this.f != null || this.g != null) {
                a(this.f, this.g);
            } else {
                a(this.f5084c, this.f5085d);
            }
        }

        private void a(TextView textView, ImageView imageView) {
            f fVar = this.f5083b;
            Drawable drawableMutate = (fVar == null || fVar.c() == null) ? null : androidx.core.graphics.drawable.a.g(this.f5083b.c()).mutate();
            f fVar2 = this.f5083b;
            CharSequence charSequenceE = fVar2 != null ? fVar2.e() : null;
            if (imageView != null) {
                if (drawableMutate != null) {
                    imageView.setImageDrawable(drawableMutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(charSequenceE);
            if (textView != null) {
                if (z) {
                    textView.setText(charSequenceE);
                    textView.setVisibility(0);
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int iB = (z && imageView.getVisibility() == 0) ? TabLayout.this.b(8) : 0;
                if (TabLayout.this.s) {
                    if (iB != androidx.core.h.f.b(marginLayoutParams)) {
                        androidx.core.h.f.a(marginLayoutParams, iB);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (iB != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = iB;
                    androidx.core.h.f.a(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            f fVar3 = this.f5083b;
            TooltipCompat.setTooltipText(this, z ? null : fVar3 != null ? fVar3.f : null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int d() {
            View[] viewArr = {this.f5084c, this.f5085d, this.f5086e};
            int iMax = 0;
            int iMin = 0;
            boolean z = false;
            for (int i = 0; i < 3; i++) {
                View view = viewArr[i];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z ? Math.min(iMin, view.getLeft()) : view.getLeft();
                    iMax = z ? Math.max(iMax, view.getRight()) : view.getRight();
                    z = true;
                }
            }
            return iMax - iMin;
        }

        private float a(Layout layout, int i, float f) {
            return layout.getLineWidth(i) * (f / layout.getPaint().getTextSize());
        }
    }

    private class e extends LinearLayout {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f5062a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f5063b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f5065d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Paint f5066e;
        private final GradientDrawable f;
        private int g;
        private int h;
        private int i;
        private ValueAnimator j;

        e(Context context) {
            super(context);
            this.f5062a = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            setWillNotDraw(false);
            this.f5066e = new Paint();
            this.f = new GradientDrawable();
        }

        void a(int i) {
            if (this.f5066e.getColor() != i) {
                this.f5066e.setColor(i);
                r.d(this);
            }
        }

        void b(int i) {
            if (this.f5065d != i) {
                this.f5065d = i;
                r.d(this);
            }
        }

        boolean a() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        void a(int i, float f) {
            ValueAnimator valueAnimator = this.j;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.j.cancel();
            }
            this.f5062a = i;
            this.f5063b = f;
            b();
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            if (Build.VERSION.SDK_INT >= 23 || this.g == i) {
                return;
            }
            requestLayout();
            this.g = i;
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            boolean z = true;
            if (TabLayout.this.r == 1 && TabLayout.this.o == 1) {
                int childCount = getChildCount();
                int iMax = 0;
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = getChildAt(i3);
                    if (childAt.getVisibility() == 0) {
                        iMax = Math.max(iMax, childAt.getMeasuredWidth());
                    }
                }
                if (iMax <= 0) {
                    return;
                }
                if (iMax * childCount <= getMeasuredWidth() - (TabLayout.this.b(16) * 2)) {
                    boolean z2 = false;
                    for (int i4 = 0; i4 < childCount; i4++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i4).getLayoutParams();
                        if (layoutParams.width != iMax || layoutParams.weight != 0.0f) {
                            layoutParams.width = iMax;
                            layoutParams.weight = 0.0f;
                            z2 = true;
                        }
                    }
                    z = z2;
                } else {
                    TabLayout.this.o = 0;
                    TabLayout.this.a(false);
                }
                if (z) {
                    super.onMeasure(i, i2);
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.j;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.j.cancel();
                b(this.f5062a, Math.round((1.0f - this.j.getAnimatedFraction()) * this.j.getDuration()));
                return;
            }
            b();
        }

        private void b() {
            int left;
            int right;
            View childAt = getChildAt(this.f5062a);
            if (childAt == null || childAt.getWidth() <= 0) {
                left = -1;
                right = -1;
            } else {
                left = childAt.getLeft();
                right = childAt.getRight();
                if (!TabLayout.this.t && (childAt instanceof h)) {
                    a((h) childAt, TabLayout.this.z);
                    left = (int) TabLayout.this.z.left;
                    right = (int) TabLayout.this.z.right;
                }
                if (this.f5063b > 0.0f && this.f5062a < getChildCount() - 1) {
                    View childAt2 = getChildAt(this.f5062a + 1);
                    int left2 = childAt2.getLeft();
                    int right2 = childAt2.getRight();
                    if (!TabLayout.this.t && (childAt2 instanceof h)) {
                        a((h) childAt2, TabLayout.this.z);
                        left2 = (int) TabLayout.this.z.left;
                        right2 = (int) TabLayout.this.z.right;
                    }
                    float f = this.f5063b;
                    left = (int) ((left2 * f) + ((1.0f - f) * left));
                    right = (int) ((right2 * f) + ((1.0f - f) * right));
                }
            }
            a(left, right);
        }

        void a(int i, int i2) {
            if (i == this.h && i2 == this.i) {
                return;
            }
            this.h = i;
            this.i = i2;
            r.d(this);
        }

        void b(final int i, int i2) {
            ValueAnimator valueAnimator = this.j;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.j.cancel();
            }
            View childAt = getChildAt(i);
            if (childAt == null) {
                b();
                return;
            }
            int left = childAt.getLeft();
            int right = childAt.getRight();
            if (!TabLayout.this.t && (childAt instanceof h)) {
                a((h) childAt, TabLayout.this.z);
                left = (int) TabLayout.this.z.left;
                right = (int) TabLayout.this.z.right;
            }
            final int i3 = left;
            final int i4 = right;
            final int i5 = this.h;
            final int i6 = this.i;
            if (i5 == i3 && i6 == i4) {
                return;
            }
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.j = valueAnimator2;
            valueAnimator2.setInterpolator(com.google.android.material.a.a.f4776b);
            valueAnimator2.setDuration(i2);
            valueAnimator2.setFloatValues(0.0f, 1.0f);
            valueAnimator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.e.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    float animatedFraction = valueAnimator3.getAnimatedFraction();
                    e.this.a(com.google.android.material.a.a.a(i5, i3, animatedFraction), com.google.android.material.a.a.a(i6, i4, animatedFraction));
                }
            });
            valueAnimator2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.tabs.TabLayout.e.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    e.this.f5062a = i;
                    e.this.f5063b = 0.0f;
                }
            });
            valueAnimator2.start();
        }

        private void a(h hVar, RectF rectF) {
            int iD = hVar.d();
            if (iD < TabLayout.this.b(24)) {
                iD = TabLayout.this.b(24);
            }
            int left = (hVar.getLeft() + hVar.getRight()) / 2;
            int i = iD / 2;
            rectF.set(left - i, 0.0f, left + i, 0.0f);
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            int height = 0;
            int intrinsicHeight = TabLayout.this.i != null ? TabLayout.this.i.getIntrinsicHeight() : 0;
            int i = this.f5065d;
            if (i >= 0) {
                intrinsicHeight = i;
            }
            int i2 = TabLayout.this.q;
            if (i2 == 0) {
                height = getHeight() - intrinsicHeight;
                intrinsicHeight = getHeight();
            } else if (i2 == 1) {
                height = (getHeight() - intrinsicHeight) / 2;
                intrinsicHeight = (getHeight() + intrinsicHeight) / 2;
            } else if (i2 != 2) {
                intrinsicHeight = i2 != 3 ? 0 : getHeight();
            }
            int i3 = this.h;
            if (i3 >= 0 && this.i > i3) {
                Drawable drawableG = androidx.core.graphics.drawable.a.g(TabLayout.this.i != null ? TabLayout.this.i : this.f);
                drawableG.setBounds(this.h, height, this.i, intrinsicHeight);
                if (this.f5066e != null) {
                    if (Build.VERSION.SDK_INT == 21) {
                        drawableG.setColorFilter(this.f5066e.getColor(), PorterDuff.Mode.SRC_IN);
                    } else {
                        androidx.core.graphics.drawable.a.a(drawableG, this.f5066e.getColor());
                    }
                }
                drawableG.draw(canvas);
            }
            super.draw(canvas);
        }
    }

    private static ColorStateList a(int i2, int i3) {
        return new ColorStateList(new int[][]{SELECTED_STATE_SET, EMPTY_STATE_SET}, new int[]{i3, i2});
    }

    private int getDefaultHeight() {
        int size = this.x.size();
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                f fVar = this.x.get(i2);
                if (fVar != null && fVar.c() != null && !TextUtils.isEmpty(fVar.e())) {
                    z = true;
                    break;
                }
                i2++;
            } else {
                break;
            }
        }
        return (!z || this.s) ? 48 : 72;
    }

    private int getTabMinWidth() {
        int i2 = this.B;
        if (i2 != -1) {
            return i2;
        }
        if (this.r == 0) {
            return this.D;
        }
        return 0;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    int getTabMaxWidth() {
        return this.n;
    }

    public static class g implements ViewPager.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<TabLayout> f5079a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f5080b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f5081c;

        public g(TabLayout tabLayout) {
            this.f5079a = new WeakReference<>(tabLayout);
        }

        @Override // androidx.viewpager.widget.ViewPager.f
        public void b(int i) {
            this.f5080b = this.f5081c;
            this.f5081c = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.f
        public void a(int i, float f, int i2) {
            TabLayout tabLayout = this.f5079a.get();
            if (tabLayout != null) {
                tabLayout.a(i, f, this.f5081c != 2 || this.f5080b == 1, (this.f5081c == 2 && this.f5080b == 0) ? false : true);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.f
        public void a(int i) {
            TabLayout tabLayout = this.f5079a.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i || i >= tabLayout.getTabCount()) {
                return;
            }
            int i2 = this.f5081c;
            tabLayout.b(tabLayout.a(i), i2 == 0 || (i2 == 2 && this.f5080b == 0));
        }

        void a() {
            this.f5081c = 0;
            this.f5080b = 0;
        }
    }

    public static class i implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ViewPager f5087a;

        @Override // com.google.android.material.tabs.TabLayout.b
        public void b(f fVar) {
        }

        @Override // com.google.android.material.tabs.TabLayout.b
        public void c(f fVar) {
        }

        public i(ViewPager viewPager) {
            this.f5087a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.b
        public void a(f fVar) {
            this.f5087a.setCurrentItem(fVar.d());
        }
    }

    private class d extends DataSetObserver {
        d() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.d();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.d();
        }
    }

    private class a implements ViewPager.e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f5060b;

        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.e
        public void a(ViewPager viewPager, androidx.viewpager.widget.a aVar, androidx.viewpager.widget.a aVar2) {
            if (TabLayout.this.v == viewPager) {
                TabLayout.this.a(aVar2, this.f5060b);
            }
        }

        void a(boolean z) {
            this.f5060b = z;
        }
    }
}
