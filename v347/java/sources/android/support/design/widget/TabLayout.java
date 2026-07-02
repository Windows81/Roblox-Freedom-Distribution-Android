package android.support.design.widget;

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
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.design.a;
import android.support.v4.g.k;
import android.support.v4.view.ViewPager;
import android.support.v7.a.a;
import android.support.v7.app.a;
import android.support.v7.widget.TooltipCompat;
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
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
@ViewPager.a
public class TabLayout extends HorizontalScrollView {
    private static final k.a<e> n = new k.c(16);
    private DataSetObserver A;
    private f B;
    private a C;
    private boolean D;
    private final k.a<g> E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f317c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f318d;
    int e;
    ColorStateList f;
    float g;
    float h;
    final int i;
    int j;
    int k;
    int l;
    ViewPager m;
    private final ArrayList<e> o;
    private e p;
    private final d q;
    private final int r;
    private final int s;
    private final int t;
    private int u;
    private b v;
    private final ArrayList<b> w;
    private b x;
    private ValueAnimator y;
    private android.support.v4.view.p z;

    public interface b {
        void a(e eVar);

        void b(e eVar);

        void c(e eVar);
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.o = new ArrayList<>();
        this.j = Integer.MAX_VALUE;
        this.w = new ArrayList<>();
        this.E = new k.b(12);
        q.a(context);
        setHorizontalScrollBarEnabled(false);
        this.q = new d(context);
        super.addView(this.q, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.TabLayout, i, a.i.Widget_Design_TabLayout);
        this.q.b(typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.TabLayout_tabIndicatorHeight, 0));
        this.q.a(typedArrayObtainStyledAttributes.getColor(a.j.TabLayout_tabIndicatorColor, 0));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.TabLayout_tabPadding, 0);
        this.f318d = dimensionPixelSize;
        this.f317c = dimensionPixelSize;
        this.f316b = dimensionPixelSize;
        this.f315a = dimensionPixelSize;
        this.f315a = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.TabLayout_tabPaddingStart, this.f315a);
        this.f316b = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.TabLayout_tabPaddingTop, this.f316b);
        this.f317c = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.TabLayout_tabPaddingEnd, this.f317c);
        this.f318d = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.TabLayout_tabPaddingBottom, this.f318d);
        this.e = typedArrayObtainStyledAttributes.getResourceId(a.j.TabLayout_tabTextAppearance, a.i.TextAppearance_Design_Tab);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(this.e, a.j.TextAppearance);
        try {
            this.g = typedArrayObtainStyledAttributes2.getDimensionPixelSize(a.j.TextAppearance_android_textSize, 0);
            this.f = typedArrayObtainStyledAttributes2.getColorStateList(a.j.TextAppearance_android_textColor);
            typedArrayObtainStyledAttributes2.recycle();
            if (typedArrayObtainStyledAttributes.hasValue(a.j.TabLayout_tabTextColor)) {
                this.f = typedArrayObtainStyledAttributes.getColorStateList(a.j.TabLayout_tabTextColor);
            }
            if (typedArrayObtainStyledAttributes.hasValue(a.j.TabLayout_tabSelectedTextColor)) {
                this.f = a(this.f.getDefaultColor(), typedArrayObtainStyledAttributes.getColor(a.j.TabLayout_tabSelectedTextColor, 0));
            }
            this.r = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.TabLayout_tabMinWidth, -1);
            this.s = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.TabLayout_tabMaxWidth, -1);
            this.i = typedArrayObtainStyledAttributes.getResourceId(a.j.TabLayout_tabBackground, 0);
            this.u = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.TabLayout_tabContentStart, 0);
            this.l = typedArrayObtainStyledAttributes.getInt(a.j.TabLayout_tabMode, 1);
            this.k = typedArrayObtainStyledAttributes.getInt(a.j.TabLayout_tabGravity, 0);
            typedArrayObtainStyledAttributes.recycle();
            Resources resources = getResources();
            this.h = resources.getDimensionPixelSize(a.c.design_tab_text_size_2line);
            this.t = resources.getDimensionPixelSize(a.c.design_tab_scrollable_min_width);
            g();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes2.recycle();
            throw th;
        }
    }

    public void setSelectedTabIndicatorColor(int i) {
        this.q.a(i);
    }

    public void setSelectedTabIndicatorHeight(int i) {
        this.q.b(i);
    }

    public void a(int i, float f2, boolean z) {
        a(i, f2, z, true);
    }

    void a(int i, float f2, boolean z, boolean z2) {
        int iRound = Math.round(i + f2);
        if (iRound >= 0 && iRound < this.q.getChildCount()) {
            if (z2) {
                this.q.a(i, f2);
            }
            if (this.y != null && this.y.isRunning()) {
                this.y.cancel();
            }
            scrollTo(a(i, f2), 0);
            if (z) {
                setSelectedTabView(iRound);
            }
        }
    }

    private float getScrollPosition() {
        return this.q.b();
    }

    public void a(e eVar) {
        a(eVar, this.o.isEmpty());
    }

    public void a(e eVar, int i) {
        a(eVar, i, this.o.isEmpty());
    }

    public void a(e eVar, boolean z) {
        a(eVar, this.o.size(), z);
    }

    public void a(e eVar, int i, boolean z) {
        if (eVar.f333a != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        b(eVar, i);
        d(eVar);
        if (z) {
            eVar.f();
        }
    }

    private void a(o oVar) {
        e eVarA = a();
        if (oVar.f447a != null) {
            eVarA.a(oVar.f447a);
        }
        if (oVar.f448b != null) {
            eVarA.a(oVar.f448b);
        }
        if (oVar.f449c != 0) {
            eVarA.a(oVar.f449c);
        }
        if (!TextUtils.isEmpty(oVar.getContentDescription())) {
            eVarA.b(oVar.getContentDescription());
        }
        a(eVarA);
    }

    @Deprecated
    public void setOnTabSelectedListener(b bVar) {
        if (this.v != null) {
            b(this.v);
        }
        this.v = bVar;
        if (bVar != null) {
            a(bVar);
        }
    }

    public void a(b bVar) {
        if (!this.w.contains(bVar)) {
            this.w.add(bVar);
        }
    }

    public void b(b bVar) {
        this.w.remove(bVar);
    }

    public e a() {
        e eVarA = n.a();
        if (eVarA == null) {
            eVarA = new e();
        }
        eVarA.f333a = this;
        eVarA.f334b = c(eVarA);
        return eVarA;
    }

    public int getTabCount() {
        return this.o.size();
    }

    public e a(int i) {
        if (i < 0 || i >= getTabCount()) {
            return null;
        }
        return this.o.get(i);
    }

    public int getSelectedTabPosition() {
        if (this.p != null) {
            return this.p.d();
        }
        return -1;
    }

    public void b() {
        for (int childCount = this.q.getChildCount() - 1; childCount >= 0; childCount--) {
            c(childCount);
        }
        Iterator<e> it = this.o.iterator();
        while (it.hasNext()) {
            e next = it.next();
            it.remove();
            next.j();
            n.a(next);
        }
        this.p = null;
    }

    public void setTabMode(int i) {
        if (i != this.l) {
            this.l = i;
            g();
        }
    }

    public int getTabMode() {
        return this.l;
    }

    public void setTabGravity(int i) {
        if (this.k != i) {
            this.k = i;
            g();
        }
    }

    public int getTabGravity() {
        return this.k;
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.f != colorStateList) {
            this.f = colorStateList;
            d();
        }
    }

    public ColorStateList getTabTextColors() {
        return this.f;
    }

    public void setupWithViewPager(ViewPager viewPager) {
        a(viewPager, true);
    }

    public void a(ViewPager viewPager, boolean z) {
        a(viewPager, z, false);
    }

    private void a(ViewPager viewPager, boolean z, boolean z2) {
        if (this.m != null) {
            if (this.B != null) {
                this.m.b(this.B);
            }
            if (this.C != null) {
                this.m.b(this.C);
            }
        }
        if (this.x != null) {
            b(this.x);
            this.x = null;
        }
        if (viewPager != null) {
            this.m = viewPager;
            if (this.B == null) {
                this.B = new f(this);
            }
            this.B.a();
            viewPager.a(this.B);
            this.x = new h(viewPager);
            a(this.x);
            android.support.v4.view.p adapter = viewPager.getAdapter();
            if (adapter != null) {
                a(adapter, z);
            }
            if (this.C == null) {
                this.C = new a();
            }
            this.C.a(z);
            viewPager.a(this.C);
            a(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.m = null;
            a((android.support.v4.view.p) null, false);
        }
        this.D = z2;
    }

    @Deprecated
    public void setTabsFromPagerAdapter(android.support.v4.view.p pVar) {
        a(pVar, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.m == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                a((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.D) {
            setupWithViewPager(null);
            this.D = false;
        }
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.q.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    void a(android.support.v4.view.p pVar, boolean z) {
        if (this.z != null && this.A != null) {
            this.z.b(this.A);
        }
        this.z = pVar;
        if (z && pVar != null) {
            if (this.A == null) {
                this.A = new c();
            }
            pVar.a(this.A);
        }
        c();
    }

    void c() {
        int currentItem;
        b();
        if (this.z != null) {
            int iB = this.z.b();
            for (int i = 0; i < iB; i++) {
                a(a().a(this.z.b(i)), false);
            }
            if (this.m != null && iB > 0 && (currentItem = this.m.getCurrentItem()) != getSelectedTabPosition() && currentItem < getTabCount()) {
                b(a(currentItem));
            }
        }
    }

    private void d() {
        int size = this.o.size();
        for (int i = 0; i < size; i++) {
            this.o.get(i).i();
        }
    }

    private g c(e eVar) {
        g gVarA = this.E != null ? this.E.a() : null;
        if (gVarA == null) {
            gVarA = new g(getContext());
        }
        gVarA.a(eVar);
        gVarA.setFocusable(true);
        gVarA.setMinimumWidth(getTabMinWidth());
        return gVarA;
    }

    private void b(e eVar, int i) {
        eVar.b(i);
        this.o.add(i, eVar);
        int size = this.o.size();
        for (int i2 = i + 1; i2 < size; i2++) {
            this.o.get(i2).b(i2);
        }
    }

    private void d(e eVar) {
        this.q.addView(eVar.f334b, eVar.d(), e());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    private void a(View view) {
        if (view instanceof o) {
            a((o) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    private LinearLayout.LayoutParams e() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        a(layoutParams);
        return layoutParams;
    }

    private void a(LinearLayout.LayoutParams layoutParams) {
        if (this.l == 1 && this.k == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
    }

    int b(int i) {
        return Math.round(getResources().getDisplayMetrics().density * i);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z;
        int iB = b(getDefaultHeight()) + getPaddingTop() + getPaddingBottom();
        switch (View.MeasureSpec.getMode(i2)) {
            case Integer.MIN_VALUE:
                i2 = View.MeasureSpec.makeMeasureSpec(Math.min(iB, View.MeasureSpec.getSize(i2)), 1073741824);
                break;
            case 0:
                i2 = View.MeasureSpec.makeMeasureSpec(iB, 1073741824);
                break;
        }
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i) != 0) {
            this.j = this.s > 0 ? this.s : size - b(56);
        }
        super.onMeasure(i, i2);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            switch (this.l) {
                case 0:
                    z = childAt.getMeasuredWidth() < getMeasuredWidth();
                    break;
                case 1:
                    z = childAt.getMeasuredWidth() != getMeasuredWidth();
                    break;
                default:
                    z = false;
                    break;
            }
            if (z) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
            }
        }
    }

    private void c(int i) {
        g gVar = (g) this.q.getChildAt(i);
        this.q.removeViewAt(i);
        if (gVar != null) {
            gVar.a();
            this.E.a(gVar);
        }
        requestLayout();
    }

    private void d(int i) {
        if (i != -1) {
            if (getWindowToken() == null || !android.support.v4.view.s.v(this) || this.q.a()) {
                a(i, 0.0f, true);
                return;
            }
            int scrollX = getScrollX();
            int iA = a(i, 0.0f);
            if (scrollX != iA) {
                f();
                this.y.setIntValues(scrollX, iA);
                this.y.start();
            }
            this.q.b(i, 300);
        }
    }

    private void f() {
        if (this.y == null) {
            this.y = new ValueAnimator();
            this.y.setInterpolator(android.support.design.widget.a.f359b);
            this.y.setDuration(300L);
            this.y.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.TabLayout.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
                }
            });
        }
    }

    void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        f();
        this.y.addListener(animatorListener);
    }

    private void setSelectedTabView(int i) {
        int childCount = this.q.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                this.q.getChildAt(i2).setSelected(i2 == i);
                i2++;
            }
        }
    }

    void b(e eVar) {
        b(eVar, true);
    }

    void b(e eVar, boolean z) {
        e eVar2 = this.p;
        if (eVar2 == eVar) {
            if (eVar2 != null) {
                g(eVar);
                d(eVar.d());
                return;
            }
            return;
        }
        int iD = eVar != null ? eVar.d() : -1;
        if (z) {
            if ((eVar2 == null || eVar2.d() == -1) && iD != -1) {
                a(iD, 0.0f, true);
            } else {
                d(iD);
            }
            if (iD != -1) {
                setSelectedTabView(iD);
            }
        }
        if (eVar2 != null) {
            f(eVar2);
        }
        this.p = eVar;
        if (eVar != null) {
            e(eVar);
        }
    }

    private void e(e eVar) {
        for (int size = this.w.size() - 1; size >= 0; size--) {
            this.w.get(size).a(eVar);
        }
    }

    private void f(e eVar) {
        for (int size = this.w.size() - 1; size >= 0; size--) {
            this.w.get(size).b(eVar);
        }
    }

    private void g(e eVar) {
        for (int size = this.w.size() - 1; size >= 0; size--) {
            this.w.get(size).c(eVar);
        }
    }

    private int a(int i, float f2) {
        if (this.l != 0) {
            return 0;
        }
        View childAt = this.q.getChildAt(i);
        View childAt2 = i + 1 < this.q.getChildCount() ? this.q.getChildAt(i + 1) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i2 = (int) ((width2 + width) * 0.5f * f2);
        return android.support.v4.view.s.e(this) == 0 ? i2 + left : left - i2;
    }

    private void g() {
        android.support.v4.view.s.a(this.q, this.l == 0 ? Math.max(0, this.u - this.f315a) : 0, 0, 0, 0);
        switch (this.l) {
            case 0:
                this.q.setGravity(8388611);
                break;
            case 1:
                this.q.setGravity(1);
                break;
        }
        a(true);
    }

    void a(boolean z) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.q.getChildCount()) {
                View childAt = this.q.getChildAt(i2);
                childAt.setMinimumWidth(getTabMinWidth());
                a((LinearLayout.LayoutParams) childAt.getLayoutParams());
                if (z) {
                    childAt.requestLayout();
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TabLayout f333a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        g f334b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Object f335c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Drawable f336d;
        private CharSequence e;
        private CharSequence f;
        private int g = -1;
        private View h;

        e() {
        }

        public Object a() {
            return this.f335c;
        }

        public e a(Object obj) {
            this.f335c = obj;
            return this;
        }

        public View b() {
            return this.h;
        }

        public e a(View view) {
            this.h = view;
            i();
            return this;
        }

        public e a(int i) {
            return a(LayoutInflater.from(this.f334b.getContext()).inflate(i, (ViewGroup) this.f334b, false));
        }

        public Drawable c() {
            return this.f336d;
        }

        public int d() {
            return this.g;
        }

        void b(int i) {
            this.g = i;
        }

        public CharSequence e() {
            return this.e;
        }

        public e a(Drawable drawable) {
            this.f336d = drawable;
            i();
            return this;
        }

        public e c(int i) {
            if (this.f333a == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return a(android.support.v7.b.a.b.b(this.f333a.getContext(), i));
        }

        public e a(CharSequence charSequence) {
            this.e = charSequence;
            i();
            return this;
        }

        public e d(int i) {
            if (this.f333a == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return a(this.f333a.getResources().getText(i));
        }

        public void f() {
            if (this.f333a == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            this.f333a.b(this);
        }

        public boolean g() {
            if (this.f333a == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return this.f333a.getSelectedTabPosition() == this.g;
        }

        public e b(CharSequence charSequence) {
            this.f = charSequence;
            i();
            return this;
        }

        public CharSequence h() {
            return this.f;
        }

        void i() {
            if (this.f334b != null) {
                this.f334b.b();
            }
        }

        void j() {
            this.f333a = null;
            this.f334b = null;
            this.f335c = null;
            this.f336d = null;
            this.e = null;
            this.f = null;
            this.g = -1;
            this.h = null;
        }
    }

    class g extends LinearLayout {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private e f341b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f342c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ImageView f343d;
        private View e;
        private TextView f;
        private ImageView g;
        private int h;

        public g(Context context) {
            super(context);
            this.h = 2;
            if (TabLayout.this.i != 0) {
                android.support.v4.view.s.a(this, android.support.v7.b.a.b.b(context, TabLayout.this.i));
            }
            android.support.v4.view.s.a(this, TabLayout.this.f315a, TabLayout.this.f316b, TabLayout.this.f317c, TabLayout.this.f318d);
            setGravity(17);
            setOrientation(1);
            setClickable(true);
            android.support.v4.view.s.a(this, android.support.v4.view.q.a(getContext(), 1002));
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean zPerformClick = super.performClick();
            if (this.f341b != null) {
                if (!zPerformClick) {
                    playSoundEffect(0);
                }
                this.f341b.f();
                return true;
            }
            return zPerformClick;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z && Build.VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            if (this.f342c != null) {
                this.f342c.setSelected(z);
            }
            if (this.f343d != null) {
                this.f343d.setSelected(z);
            }
            if (this.e != null) {
                this.e.setSelected(z);
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
            boolean z = true;
            int size = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i = View.MeasureSpec.makeMeasureSpec(TabLayout.this.j, Integer.MIN_VALUE);
            }
            super.onMeasure(i, i2);
            if (this.f342c != null) {
                getResources();
                float f = TabLayout.this.g;
                int i3 = this.h;
                if (this.f343d != null && this.f343d.getVisibility() == 0) {
                    i3 = 1;
                } else if (this.f342c != null && this.f342c.getLineCount() > 1) {
                    f = TabLayout.this.h;
                }
                float textSize = this.f342c.getTextSize();
                int lineCount = this.f342c.getLineCount();
                int iA = android.support.v4.widget.n.a(this.f342c);
                if (f != textSize || (iA >= 0 && i3 != iA)) {
                    if (TabLayout.this.l == 1 && f > textSize && lineCount == 1 && ((layout = this.f342c.getLayout()) == null || a(layout, 0, f) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) {
                        z = false;
                    }
                    if (z) {
                        this.f342c.setTextSize(0, f);
                        this.f342c.setMaxLines(i3);
                        super.onMeasure(i, i2);
                    }
                }
            }
        }

        void a(e eVar) {
            if (eVar != this.f341b) {
                this.f341b = eVar;
                b();
            }
        }

        void a() {
            a(null);
            setSelected(false);
        }

        final void b() {
            e eVar = this.f341b;
            View viewB = eVar != null ? eVar.b() : null;
            if (viewB != null) {
                ViewParent parent = viewB.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(viewB);
                    }
                    addView(viewB);
                }
                this.e = viewB;
                if (this.f342c != null) {
                    this.f342c.setVisibility(8);
                }
                if (this.f343d != null) {
                    this.f343d.setVisibility(8);
                    this.f343d.setImageDrawable(null);
                }
                this.f = (TextView) viewB.findViewById(R.id.text1);
                if (this.f != null) {
                    this.h = android.support.v4.widget.n.a(this.f);
                }
                this.g = (ImageView) viewB.findViewById(R.id.icon);
            } else {
                if (this.e != null) {
                    removeView(this.e);
                    this.e = null;
                }
                this.f = null;
                this.g = null;
            }
            if (this.e == null) {
                if (this.f343d == null) {
                    ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(a.g.design_layout_tab_icon, (ViewGroup) this, false);
                    addView(imageView, 0);
                    this.f343d = imageView;
                }
                if (this.f342c == null) {
                    TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(a.g.design_layout_tab_text, (ViewGroup) this, false);
                    addView(textView);
                    this.f342c = textView;
                    this.h = android.support.v4.widget.n.a(this.f342c);
                }
                android.support.v4.widget.n.a(this.f342c, TabLayout.this.e);
                if (TabLayout.this.f != null) {
                    this.f342c.setTextColor(TabLayout.this.f);
                }
                a(this.f342c, this.f343d);
            } else if (this.f != null || this.g != null) {
                a(this.f, this.g);
            }
            setSelected(eVar != null && eVar.g());
        }

        private void a(TextView textView, ImageView imageView) {
            Drawable drawableC = this.f341b != null ? this.f341b.c() : null;
            CharSequence charSequenceE = this.f341b != null ? this.f341b.e() : null;
            CharSequence charSequenceH = this.f341b != null ? this.f341b.h() : null;
            if (imageView != null) {
                if (drawableC != null) {
                    imageView.setImageDrawable(drawableC);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
                imageView.setContentDescription(charSequenceH);
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
                textView.setContentDescription(charSequenceH);
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int iB = (z && imageView.getVisibility() == 0) ? TabLayout.this.b(8) : 0;
                if (iB != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = iB;
                    imageView.requestLayout();
                }
            }
            TooltipCompat.setTooltipText(this, z ? null : charSequenceH);
        }

        private float a(Layout layout, int i, float f) {
            return layout.getLineWidth(i) * (f / layout.getPaint().getTextSize());
        }
    }

    private class d extends LinearLayout {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f323a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f324b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f326d;
        private final Paint e;
        private int f;
        private int g;
        private int h;
        private ValueAnimator i;

        d(Context context) {
            super(context);
            this.f323a = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            setWillNotDraw(false);
            this.e = new Paint();
        }

        void a(int i) {
            if (this.e.getColor() != i) {
                this.e.setColor(i);
                android.support.v4.view.s.c(this);
            }
        }

        void b(int i) {
            if (this.f326d != i) {
                this.f326d = i;
                android.support.v4.view.s.c(this);
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
            if (this.i != null && this.i.isRunning()) {
                this.i.cancel();
            }
            this.f323a = i;
            this.f324b = f;
            c();
        }

        float b() {
            return this.f323a + this.f324b;
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            if (Build.VERSION.SDK_INT < 23 && this.f != i) {
                requestLayout();
                this.f = i;
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            boolean z;
            boolean z2 = false;
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) == 1073741824 && TabLayout.this.l == 1 && TabLayout.this.k == 1) {
                int childCount = getChildCount();
                int i3 = 0;
                int iMax = 0;
                while (i3 < childCount) {
                    View childAt = getChildAt(i3);
                    i3++;
                    iMax = childAt.getVisibility() == 0 ? Math.max(iMax, childAt.getMeasuredWidth()) : iMax;
                }
                if (iMax > 0) {
                    if (iMax * childCount <= getMeasuredWidth() - (TabLayout.this.b(16) * 2)) {
                        int i4 = 0;
                        while (i4 < childCount) {
                            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i4).getLayoutParams();
                            if (layoutParams.width == iMax && layoutParams.weight == 0.0f) {
                                z = z2;
                            } else {
                                layoutParams.width = iMax;
                                layoutParams.weight = 0.0f;
                                z = true;
                            }
                            i4++;
                            z2 = z;
                        }
                    } else {
                        TabLayout.this.k = 0;
                        TabLayout.this.a(false);
                        z2 = true;
                    }
                    if (z2) {
                        super.onMeasure(i, i2);
                    }
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.i != null && this.i.isRunning()) {
                this.i.cancel();
                b(this.f323a, Math.round(this.i.getDuration() * (1.0f - this.i.getAnimatedFraction())));
                return;
            }
            c();
        }

        private void c() {
            int right;
            int left;
            View childAt = getChildAt(this.f323a);
            if (childAt != null && childAt.getWidth() > 0) {
                left = childAt.getLeft();
                right = childAt.getRight();
                if (this.f324b > 0.0f && this.f323a < getChildCount() - 1) {
                    View childAt2 = getChildAt(this.f323a + 1);
                    left = (int) ((left * (1.0f - this.f324b)) + (this.f324b * childAt2.getLeft()));
                    right = (int) ((right * (1.0f - this.f324b)) + (childAt2.getRight() * this.f324b));
                }
            } else {
                right = -1;
                left = -1;
            }
            a(left, right);
        }

        void a(int i, int i2) {
            if (i != this.g || i2 != this.h) {
                this.g = i;
                this.h = i2;
                android.support.v4.view.s.c(this);
            }
        }

        void b(final int i, int i2) {
            final int i3;
            final int i4;
            if (this.i != null && this.i.isRunning()) {
                this.i.cancel();
            }
            boolean z = android.support.v4.view.s.e(this) == 1;
            View childAt = getChildAt(i);
            if (childAt == null) {
                c();
                return;
            }
            final int left = childAt.getLeft();
            final int right = childAt.getRight();
            if (Math.abs(i - this.f323a) <= 1) {
                i4 = this.g;
                i3 = this.h;
            } else {
                int iB = TabLayout.this.b(24);
                if (i < this.f323a) {
                    if (z) {
                        i3 = left - iB;
                        i4 = i3;
                    } else {
                        i3 = right + iB;
                        i4 = i3;
                    }
                } else if (z) {
                    i3 = right + iB;
                    i4 = i3;
                } else {
                    i3 = left - iB;
                    i4 = i3;
                }
            }
            if (i4 != left || i3 != right) {
                ValueAnimator valueAnimator = new ValueAnimator();
                this.i = valueAnimator;
                valueAnimator.setInterpolator(android.support.design.widget.a.f359b);
                valueAnimator.setDuration(i2);
                valueAnimator.setFloatValues(0.0f, 1.0f);
                valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.TabLayout.d.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        float animatedFraction = valueAnimator2.getAnimatedFraction();
                        d.this.a(android.support.design.widget.a.a(i4, left, animatedFraction), android.support.design.widget.a.a(i3, right, animatedFraction));
                    }
                });
                valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.TabLayout.d.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        d.this.f323a = i;
                        d.this.f324b = 0.0f;
                    }
                });
                valueAnimator.start();
            }
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            super.draw(canvas);
            if (this.g >= 0 && this.h > this.g) {
                canvas.drawRect(this.g, getHeight() - this.f326d, this.h, getHeight(), this.e);
            }
        }
    }

    private static ColorStateList a(int i, int i2) {
        return new ColorStateList(new int[][]{SELECTED_STATE_SET, EMPTY_STATE_SET}, new int[]{i2, i});
    }

    private int getDefaultHeight() {
        boolean z;
        int size = this.o.size();
        int i = 0;
        while (true) {
            if (i < size) {
                e eVar = this.o.get(i);
                if (eVar == null || eVar.c() == null || TextUtils.isEmpty(eVar.e())) {
                    i++;
                } else {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        return z ? 72 : 48;
    }

    private int getTabMinWidth() {
        if (this.r != -1) {
            return this.r;
        }
        if (this.l == 0) {
            return this.t;
        }
        return 0;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    int getTabMaxWidth() {
        return this.j;
    }

    public static class f implements ViewPager.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<TabLayout> f337a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f338b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f339c;

        public f(TabLayout tabLayout) {
            this.f337a = new WeakReference<>(tabLayout);
        }

        @Override // android.support.v4.view.ViewPager.f
        public void a(int i) {
            this.f338b = this.f339c;
            this.f339c = i;
        }

        @Override // android.support.v4.view.ViewPager.f
        public void a(int i, float f, int i2) {
            TabLayout tabLayout = this.f337a.get();
            if (tabLayout != null) {
                tabLayout.a(i, f, this.f339c != 2 || this.f338b == 1, (this.f339c == 2 && this.f338b == 0) ? false : true);
            }
        }

        @Override // android.support.v4.view.ViewPager.f
        public void b(int i) {
            TabLayout tabLayout = this.f337a.get();
            if (tabLayout != null && tabLayout.getSelectedTabPosition() != i && i < tabLayout.getTabCount()) {
                tabLayout.b(tabLayout.a(i), this.f339c == 0 || (this.f339c == 2 && this.f338b == 0));
            }
        }

        void a() {
            this.f339c = 0;
            this.f338b = 0;
        }
    }

    public static class h implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ViewPager f344a;

        public h(ViewPager viewPager) {
            this.f344a = viewPager;
        }

        @Override // android.support.design.widget.TabLayout.b
        public void a(e eVar) {
            this.f344a.setCurrentItem(eVar.d());
        }

        @Override // android.support.design.widget.TabLayout.b
        public void b(e eVar) {
        }

        @Override // android.support.design.widget.TabLayout.b
        public void c(e eVar) {
        }
    }

    private class c extends DataSetObserver {
        c() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.c();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.c();
        }
    }

    private class a implements ViewPager.e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f321b;

        a() {
        }

        @Override // android.support.v4.view.ViewPager.e
        public void a(ViewPager viewPager, android.support.v4.view.p pVar, android.support.v4.view.p pVar2) {
            if (TabLayout.this.m == viewPager) {
                TabLayout.this.a(pVar2, this.f321b);
            }
        }

        void a(boolean z) {
            this.f321b = z;
        }
    }
}
