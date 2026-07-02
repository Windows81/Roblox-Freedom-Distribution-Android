package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.view.b;
import android.support.v7.a.a;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.o;
import android.support.v7.view.menu.p;
import android.support.v7.widget.ActionMenuView;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class c extends android.support.v7.view.menu.b implements b.a {
    private b A;
    d g;
    e h;
    a i;
    RunnableC0037c j;
    final f k;
    int l;
    private Drawable m;
    private boolean n;
    private boolean o;
    private boolean p;
    private int q;
    private int r;
    private int s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private int x;
    private final SparseBooleanArray y;
    private View z;

    public c(Context context) {
        super(context, a.g.abc_action_menu_layout, a.g.abc_action_menu_item_layout);
        this.y = new SparseBooleanArray();
        this.k = new f();
    }

    @Override // android.support.v7.view.menu.b, android.support.v7.view.menu.o
    public void a(Context context, android.support.v7.view.menu.h hVar) {
        super.a(context, hVar);
        Resources resources = context.getResources();
        android.support.v7.view.a aVarA = android.support.v7.view.a.a(context);
        if (!this.p) {
            this.o = aVarA.b();
        }
        if (!this.v) {
            this.q = aVarA.c();
        }
        if (!this.t) {
            this.s = aVarA.a();
        }
        int measuredWidth = this.q;
        if (this.o) {
            if (this.g == null) {
                this.g = new d(this.f1365a);
                if (this.n) {
                    this.g.setImageDrawable(this.m);
                    this.m = null;
                    this.n = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.g.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.g.getMeasuredWidth();
        } else {
            this.g = null;
        }
        this.r = measuredWidth;
        this.x = (int) (56.0f * resources.getDisplayMetrics().density);
        this.z = null;
    }

    public void a(Configuration configuration) {
        if (!this.t) {
            this.s = android.support.v7.view.a.a(this.f1366b).a();
        }
        if (this.f1367c != null) {
            this.f1367c.b(true);
        }
    }

    public void c(boolean z) {
        this.o = z;
        this.p = true;
    }

    public void d(boolean z) {
        this.w = z;
    }

    public void a(Drawable drawable) {
        if (this.g != null) {
            this.g.setImageDrawable(drawable);
        } else {
            this.n = true;
            this.m = drawable;
        }
    }

    public Drawable c() {
        if (this.g != null) {
            return this.g.getDrawable();
        }
        if (this.n) {
            return this.m;
        }
        return null;
    }

    @Override // android.support.v7.view.menu.b
    public android.support.v7.view.menu.p a(ViewGroup viewGroup) {
        android.support.v7.view.menu.p pVar = this.f;
        android.support.v7.view.menu.p pVarA = super.a(viewGroup);
        if (pVar != pVarA) {
            ((ActionMenuView) pVarA).setPresenter(this);
        }
        return pVarA;
    }

    @Override // android.support.v7.view.menu.b
    public View a(android.support.v7.view.menu.j jVar, View view, ViewGroup viewGroup) {
        View actionView = jVar.getActionView();
        if (actionView == null || jVar.n()) {
            actionView = super.a(jVar, view, viewGroup);
        }
        actionView.setVisibility(jVar.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // android.support.v7.view.menu.b
    public void a(android.support.v7.view.menu.j jVar, p.a aVar) {
        aVar.a(jVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f);
        if (this.A == null) {
            this.A = new b();
        }
        actionMenuItemView.setPopupCallback(this.A);
    }

    @Override // android.support.v7.view.menu.b
    public boolean a(int i, android.support.v7.view.menu.j jVar) {
        return jVar.j();
    }

    @Override // android.support.v7.view.menu.b, android.support.v7.view.menu.o
    public void b(boolean z) {
        boolean z2 = false;
        super.b(z);
        ((View) this.f).requestLayout();
        if (this.f1367c != null) {
            ArrayList<android.support.v7.view.menu.j> arrayListK = this.f1367c.k();
            int size = arrayListK.size();
            for (int i = 0; i < size; i++) {
                android.support.v4.view.b bVarA = arrayListK.get(i).a();
                if (bVarA != null) {
                    bVarA.setSubUiVisibilityListener(this);
                }
            }
        }
        ArrayList<android.support.v7.view.menu.j> arrayListL = this.f1367c != null ? this.f1367c.l() : null;
        if (this.o && arrayListL != null) {
            int size2 = arrayListL.size();
            if (size2 == 1) {
                z2 = !arrayListL.get(0).isActionViewExpanded();
            } else {
                z2 = size2 > 0;
            }
        }
        if (z2) {
            if (this.g == null) {
                this.g = new d(this.f1365a);
            }
            ViewGroup viewGroup = (ViewGroup) this.g.getParent();
            if (viewGroup != this.f) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.g);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f;
                actionMenuView.addView(this.g, actionMenuView.generateOverflowButtonLayoutParams());
            }
        } else if (this.g != null && this.g.getParent() == this.f) {
            ((ViewGroup) this.f).removeView(this.g);
        }
        ((ActionMenuView) this.f).setOverflowReserved(this.o);
    }

    @Override // android.support.v7.view.menu.b
    public boolean a(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.g) {
            return false;
        }
        return super.a(viewGroup, i);
    }

    @Override // android.support.v7.view.menu.b, android.support.v7.view.menu.o
    public boolean a(android.support.v7.view.menu.u uVar) {
        boolean z;
        if (!uVar.hasVisibleItems()) {
            return false;
        }
        android.support.v7.view.menu.u uVar2 = uVar;
        while (uVar2.s() != this.f1367c) {
            uVar2 = (android.support.v7.view.menu.u) uVar2.s();
        }
        View viewA = a(uVar2.getItem());
        if (viewA == null) {
            return false;
        }
        this.l = uVar.getItem().getItemId();
        int size = uVar.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = false;
                break;
            }
            MenuItem item = uVar.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        this.i = new a(this.f1366b, uVar, viewA);
        this.i.a(z);
        this.i.b();
        super.a(uVar);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private View a(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof p.a) && ((p.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public boolean d() {
        if (!this.o || h() || this.f1367c == null || this.f == null || this.j != null || this.f1367c.l().isEmpty()) {
            return false;
        }
        this.j = new RunnableC0037c(new e(this.f1366b, this.f1367c, this.g, true));
        ((View) this.f).post(this.j);
        super.a((android.support.v7.view.menu.u) null);
        return true;
    }

    public boolean e() {
        if (this.j != null && this.f != null) {
            ((View) this.f).removeCallbacks(this.j);
            this.j = null;
            return true;
        }
        e eVar = this.h;
        if (eVar != null) {
            eVar.e();
            return true;
        }
        return false;
    }

    public boolean f() {
        return e() | g();
    }

    public boolean g() {
        if (this.i == null) {
            return false;
        }
        this.i.e();
        return true;
    }

    public boolean h() {
        return this.h != null && this.h.g();
    }

    public boolean i() {
        return this.j != null || h();
    }

    public boolean j() {
        return this.o;
    }

    @Override // android.support.v7.view.menu.b, android.support.v7.view.menu.o
    public boolean b() {
        int size;
        ArrayList<android.support.v7.view.menu.j> arrayList;
        int i;
        int measuredWidth;
        int i2;
        int i3;
        boolean z;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z2;
        if (this.f1367c != null) {
            ArrayList<android.support.v7.view.menu.j> arrayListI = this.f1367c.i();
            size = arrayListI.size();
            arrayList = arrayListI;
        } else {
            size = 0;
            arrayList = null;
        }
        int i8 = this.s;
        int i9 = this.r;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.f;
        int i10 = 0;
        int i11 = 0;
        boolean z3 = false;
        int i12 = 0;
        while (i12 < size) {
            android.support.v7.view.menu.j jVar = arrayList.get(i12);
            if (jVar.l()) {
                i10++;
            } else if (jVar.k()) {
                i11++;
            } else {
                z3 = true;
            }
            i12++;
            i8 = (this.w && jVar.isActionViewExpanded()) ? 0 : i8;
        }
        if (this.o && (z3 || i10 + i11 > i8)) {
            i8--;
        }
        int i13 = i8 - i10;
        SparseBooleanArray sparseBooleanArray = this.y;
        sparseBooleanArray.clear();
        int i14 = 0;
        if (!this.u) {
            i = 0;
        } else {
            i14 = i9 / this.x;
            i = ((i9 % this.x) / i14) + this.x;
        }
        int i15 = 0;
        int i16 = 0;
        int iMeasureChildForCells = i14;
        while (i15 < size) {
            android.support.v7.view.menu.j jVar2 = arrayList.get(i15);
            if (jVar2.l()) {
                View viewA = a(jVar2, this.z, viewGroup);
                if (this.z == null) {
                    this.z = viewA;
                }
                if (this.u) {
                    iMeasureChildForCells -= ActionMenuView.measureChildForCells(viewA, i, iMeasureChildForCells, iMakeMeasureSpec, 0);
                } else {
                    viewA.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                }
                measuredWidth = viewA.getMeasuredWidth();
                int i17 = i9 - measuredWidth;
                if (i16 != 0) {
                    measuredWidth = i16;
                }
                int groupId = jVar2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                jVar2.d(true);
                i2 = i17;
                i3 = i13;
            } else if (jVar2.k()) {
                int groupId2 = jVar2.getGroupId();
                boolean z4 = sparseBooleanArray.get(groupId2);
                boolean z5 = (i13 > 0 || z4) && i9 > 0 && (!this.u || iMeasureChildForCells > 0);
                if (z5) {
                    View viewA2 = a(jVar2, this.z, viewGroup);
                    if (this.z == null) {
                        this.z = viewA2;
                    }
                    if (this.u) {
                        int iMeasureChildForCells2 = ActionMenuView.measureChildForCells(viewA2, i, iMeasureChildForCells, iMakeMeasureSpec, 0);
                        int i18 = iMeasureChildForCells - iMeasureChildForCells2;
                        z2 = iMeasureChildForCells2 == 0 ? false : z5;
                        i7 = i18;
                    } else {
                        viewA2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        boolean z6 = z5;
                        i7 = iMeasureChildForCells;
                        z2 = z6;
                    }
                    int measuredWidth2 = viewA2.getMeasuredWidth();
                    i9 -= measuredWidth2;
                    if (i16 == 0) {
                        i16 = measuredWidth2;
                    }
                    if (this.u) {
                        z = z2 & (i9 >= 0);
                        i4 = i16;
                        i5 = i7;
                    } else {
                        z = z2 & (i9 + i16 > 0);
                        i4 = i16;
                        i5 = i7;
                    }
                } else {
                    z = z5;
                    i4 = i16;
                    i5 = iMeasureChildForCells;
                }
                if (z && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                    i6 = i13;
                } else if (z4) {
                    sparseBooleanArray.put(groupId2, false);
                    int i19 = i13;
                    for (int i20 = 0; i20 < i15; i20++) {
                        android.support.v7.view.menu.j jVar3 = arrayList.get(i20);
                        if (jVar3.getGroupId() == groupId2) {
                            if (jVar3.j()) {
                                i19++;
                            }
                            jVar3.d(false);
                        }
                    }
                    i6 = i19;
                } else {
                    i6 = i13;
                }
                if (z) {
                    i6--;
                }
                jVar2.d(z);
                measuredWidth = i4;
                i2 = i9;
                int i21 = i5;
                i3 = i6;
                iMeasureChildForCells = i21;
            } else {
                jVar2.d(false);
                measuredWidth = i16;
                i2 = i9;
                i3 = i13;
            }
            i15++;
            i9 = i2;
            i13 = i3;
            i16 = measuredWidth;
        }
        return true;
    }

    @Override // android.support.v7.view.menu.b, android.support.v7.view.menu.o
    public void a(android.support.v7.view.menu.h hVar, boolean z) {
        f();
        super.a(hVar, z);
    }

    @Override // android.support.v4.view.b.a
    public void a(boolean z) {
        if (z) {
            super.a((android.support.v7.view.menu.u) null);
        } else if (this.f1367c != null) {
            this.f1367c.a(false);
        }
    }

    public void a(ActionMenuView actionMenuView) {
        this.f = actionMenuView;
        actionMenuView.initialize(this.f1367c);
    }

    private class d extends AppCompatImageView implements ActionMenuView.ActionMenuChildView {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final float[] f1627b;

        public d(Context context) {
            super(context, null, a.C0032a.actionOverflowButtonStyle);
            this.f1627b = new float[2];
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            TooltipCompat.setTooltipText(this, getContentDescription());
            setOnTouchListener(new ForwardingListener(this) { // from class: android.support.v7.widget.c.d.1
                @Override // android.support.v7.widget.ForwardingListener
                public android.support.v7.view.menu.s getPopup() {
                    if (c.this.h == null) {
                        return null;
                    }
                    return c.this.h.c();
                }

                @Override // android.support.v7.widget.ForwardingListener
                public boolean onForwardingStarted() {
                    c.this.d();
                    return true;
                }

                @Override // android.support.v7.widget.ForwardingListener
                public boolean onForwardingStopped() {
                    if (c.this.j != null) {
                        return false;
                    }
                    c.this.e();
                    return true;
                }
            });
        }

        @Override // android.view.View
        public boolean performClick() {
            if (!super.performClick()) {
                playSoundEffect(0);
                c.this.d();
            }
            return true;
        }

        @Override // android.support.v7.widget.ActionMenuView.ActionMenuChildView
        public boolean needsDividerBefore() {
            return false;
        }

        @Override // android.support.v7.widget.ActionMenuView.ActionMenuChildView
        public boolean needsDividerAfter() {
            return false;
        }

        @Override // android.widget.ImageView
        protected boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int iMax = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                android.support.v4.b.a.a.a(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    private class e extends android.support.v7.view.menu.n {
        public e(Context context, android.support.v7.view.menu.h hVar, View view, boolean z) {
            super(context, hVar, view, z, a.C0032a.actionOverflowMenuStyle);
            a(8388613);
            a(c.this.k);
        }

        @Override // android.support.v7.view.menu.n
        protected void f() {
            if (c.this.f1367c != null) {
                c.this.f1367c.close();
            }
            c.this.h = null;
            super.f();
        }
    }

    private class a extends android.support.v7.view.menu.n {
        public a(Context context, android.support.v7.view.menu.u uVar, View view) {
            View view2;
            super(context, uVar, view, false, a.C0032a.actionOverflowMenuStyle);
            if (!((android.support.v7.view.menu.j) uVar.getItem()).j()) {
                if (c.this.g == null) {
                    view2 = (View) c.this.f;
                } else {
                    view2 = c.this.g;
                }
                a(view2);
            }
            a(c.this.k);
        }

        @Override // android.support.v7.view.menu.n
        protected void f() {
            c.this.i = null;
            c.this.l = 0;
            super.f();
        }
    }

    private class f implements o.a {
        f() {
        }

        @Override // android.support.v7.view.menu.o.a
        public boolean a(android.support.v7.view.menu.h hVar) {
            if (hVar == null) {
                return false;
            }
            c.this.l = ((android.support.v7.view.menu.u) hVar).getItem().getItemId();
            o.a aVarA = c.this.a();
            return aVarA != null ? aVarA.a(hVar) : false;
        }

        @Override // android.support.v7.view.menu.o.a
        public void a(android.support.v7.view.menu.h hVar, boolean z) {
            if (hVar instanceof android.support.v7.view.menu.u) {
                hVar.p().a(false);
            }
            o.a aVarA = c.this.a();
            if (aVarA != null) {
                aVarA.a(hVar, z);
            }
        }
    }

    /* JADX INFO: renamed from: android.support.v7.widget.c$c, reason: collision with other inner class name */
    private class RunnableC0037c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private e f1625b;

        public RunnableC0037c(e eVar) {
            this.f1625b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f1367c != null) {
                c.this.f1367c.f();
            }
            View view = (View) c.this.f;
            if (view != null && view.getWindowToken() != null && this.f1625b.d()) {
                c.this.h = this.f1625b;
            }
            c.this.j = null;
        }
    }

    private class b extends ActionMenuItemView.b {
        b() {
        }

        @Override // android.support.v7.view.menu.ActionMenuItemView.b
        public android.support.v7.view.menu.s a() {
            if (c.this.i != null) {
                return c.this.i.c();
            }
            return null;
        }
    }
}
