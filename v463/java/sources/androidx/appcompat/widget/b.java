package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.o;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.view.menu.u;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.h.b;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class b extends androidx.appcompat.view.menu.b implements b.a {
    private C0019b A;
    d g;
    e h;
    a i;
    c j;
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

    public b(Context context) {
        super(context, a.g.abc_action_menu_layout, a.g.abc_action_menu_item_layout);
        this.y = new SparseBooleanArray();
        this.k = new f();
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.o
    public void a(Context context, androidx.appcompat.view.menu.h hVar) {
        super.a(context, hVar);
        Resources resources = context.getResources();
        androidx.appcompat.view.a aVarA = androidx.appcompat.view.a.a(context);
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
                d dVar = new d(this.f797a);
                this.g = dVar;
                if (this.n) {
                    dVar.setImageDrawable(this.m);
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
        this.x = (int) (resources.getDisplayMetrics().density * 56.0f);
        this.z = null;
    }

    public void a(Configuration configuration) {
        if (!this.t) {
            this.s = androidx.appcompat.view.a.a(this.f798b).a();
        }
        if (this.f799c != null) {
            this.f799c.b(true);
        }
    }

    public void b(boolean z) {
        this.o = z;
        this.p = true;
    }

    public void c(boolean z) {
        this.w = z;
    }

    public void a(Drawable drawable) {
        d dVar = this.g;
        if (dVar != null) {
            dVar.setImageDrawable(drawable);
        } else {
            this.n = true;
            this.m = drawable;
        }
    }

    public Drawable c() {
        d dVar = this.g;
        if (dVar != null) {
            return dVar.getDrawable();
        }
        if (this.n) {
            return this.m;
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.b
    public androidx.appcompat.view.menu.p a(ViewGroup viewGroup) {
        androidx.appcompat.view.menu.p pVar = this.f;
        androidx.appcompat.view.menu.p pVarA = super.a(viewGroup);
        if (pVar != pVarA) {
            ((ActionMenuView) pVarA).setPresenter(this);
        }
        return pVarA;
    }

    @Override // androidx.appcompat.view.menu.b
    public View a(androidx.appcompat.view.menu.j jVar, View view, ViewGroup viewGroup) {
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

    @Override // androidx.appcompat.view.menu.b
    public void a(androidx.appcompat.view.menu.j jVar, p.a aVar) {
        aVar.a(jVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f);
        if (this.A == null) {
            this.A = new C0019b();
        }
        actionMenuItemView.setPopupCallback(this.A);
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean a(int i, androidx.appcompat.view.menu.j jVar) {
        return jVar.j();
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.o
    public void a(boolean z) {
        super.a(z);
        ((View) this.f).requestLayout();
        boolean z2 = false;
        if (this.f799c != null) {
            ArrayList<androidx.appcompat.view.menu.j> arrayListL = this.f799c.l();
            int size = arrayListL.size();
            for (int i = 0; i < size; i++) {
                androidx.core.h.b bVarA = arrayListL.get(i).a();
                if (bVarA != null) {
                    bVarA.setSubUiVisibilityListener(this);
                }
            }
        }
        ArrayList<androidx.appcompat.view.menu.j> arrayListM = this.f799c != null ? this.f799c.m() : null;
        if (this.o && arrayListM != null) {
            int size2 = arrayListM.size();
            if (size2 == 1) {
                z2 = !arrayListM.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z2 = true;
            }
        }
        if (z2) {
            if (this.g == null) {
                this.g = new d(this.f797a);
            }
            ViewGroup viewGroup = (ViewGroup) this.g.getParent();
            if (viewGroup != this.f) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.g);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f;
                actionMenuView.addView(this.g, actionMenuView.generateOverflowButtonLayoutParams());
            }
        } else {
            d dVar = this.g;
            if (dVar != null && dVar.getParent() == this.f) {
                ((ViewGroup) this.f).removeView(this.g);
            }
        }
        ((ActionMenuView) this.f).setOverflowReserved(this.o);
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean a(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.g) {
            return false;
        }
        return super.a(viewGroup, i);
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.o
    public boolean a(u uVar) {
        boolean z = false;
        if (!uVar.hasVisibleItems()) {
            return false;
        }
        u uVar2 = uVar;
        while (uVar2.t() != this.f799c) {
            uVar2 = (u) uVar2.t();
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
                break;
            }
            MenuItem item = uVar.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        a aVar = new a(this.f798b, uVar, viewA);
        this.i = aVar;
        aVar.a(z);
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
        if (!this.o || h() || this.f799c == null || this.f == null || this.j != null || this.f799c.m().isEmpty()) {
            return false;
        }
        this.j = new c(new e(this.f798b, this.f799c, this.g, true));
        ((View) this.f).post(this.j);
        super.a((u) null);
        return true;
    }

    public boolean e() {
        if (this.j != null && this.f != null) {
            ((View) this.f).removeCallbacks(this.j);
            this.j = null;
            return true;
        }
        e eVar = this.h;
        if (eVar == null) {
            return false;
        }
        eVar.e();
        return true;
    }

    public boolean f() {
        return e() | g();
    }

    public boolean g() {
        a aVar = this.i;
        if (aVar == null) {
            return false;
        }
        aVar.e();
        return true;
    }

    public boolean h() {
        e eVar = this.h;
        return eVar != null && eVar.g();
    }

    public boolean i() {
        return this.j != null || h();
    }

    public boolean j() {
        return this.o;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.o
    public boolean b() {
        ArrayList<androidx.appcompat.view.menu.j> arrayListJ;
        int size;
        int i;
        int iMeasureChildForCells;
        int i2;
        b bVar = this;
        int i3 = 0;
        if (bVar.f799c != null) {
            arrayListJ = bVar.f799c.j();
            size = arrayListJ.size();
        } else {
            arrayListJ = null;
            size = 0;
        }
        int i4 = bVar.s;
        int i5 = bVar.r;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) bVar.f;
        boolean z = false;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            androidx.appcompat.view.menu.j jVar = arrayListJ.get(i8);
            if (jVar.l()) {
                i6++;
            } else if (jVar.k()) {
                i7++;
            } else {
                z = true;
            }
            if (bVar.w && jVar.isActionViewExpanded()) {
                i4 = 0;
            }
        }
        if (bVar.o && (z || i7 + i6 > i4)) {
            i4--;
        }
        int i9 = i4 - i6;
        SparseBooleanArray sparseBooleanArray = bVar.y;
        sparseBooleanArray.clear();
        if (bVar.u) {
            int i10 = bVar.x;
            iMeasureChildForCells = i5 / i10;
            i = i10 + ((i5 % i10) / iMeasureChildForCells);
        } else {
            i = 0;
            iMeasureChildForCells = 0;
        }
        int i11 = 0;
        int i12 = 0;
        while (i11 < size) {
            androidx.appcompat.view.menu.j jVar2 = arrayListJ.get(i11);
            if (jVar2.l()) {
                View viewA = bVar.a(jVar2, bVar.z, viewGroup);
                if (bVar.z == null) {
                    bVar.z = viewA;
                }
                if (bVar.u) {
                    iMeasureChildForCells -= ActionMenuView.measureChildForCells(viewA, i, iMeasureChildForCells, iMakeMeasureSpec, i3);
                } else {
                    viewA.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                }
                int measuredWidth = viewA.getMeasuredWidth();
                i5 -= measuredWidth;
                if (i12 == 0) {
                    i12 = measuredWidth;
                }
                int groupId = jVar2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                jVar2.d(true);
                i2 = size;
            } else if (jVar2.k()) {
                int groupId2 = jVar2.getGroupId();
                boolean z2 = sparseBooleanArray.get(groupId2);
                boolean z3 = (i9 > 0 || z2) && i5 > 0 && (!bVar.u || iMeasureChildForCells > 0);
                boolean z4 = z3;
                if (z3) {
                    View viewA2 = bVar.a(jVar2, bVar.z, viewGroup);
                    i2 = size;
                    if (bVar.z == null) {
                        bVar.z = viewA2;
                    }
                    if (bVar.u) {
                        int iMeasureChildForCells2 = ActionMenuView.measureChildForCells(viewA2, i, iMeasureChildForCells, iMakeMeasureSpec, 0);
                        iMeasureChildForCells -= iMeasureChildForCells2;
                        if (iMeasureChildForCells2 == 0) {
                            z4 = false;
                        }
                    } else {
                        viewA2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    }
                    int measuredWidth2 = viewA2.getMeasuredWidth();
                    i5 -= measuredWidth2;
                    if (i12 == 0) {
                        i12 = measuredWidth2;
                    }
                    z3 = z4 & (!bVar.u ? i5 + i12 <= 0 : i5 < 0);
                } else {
                    i2 = size;
                }
                if (z3 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z2) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i13 = 0; i13 < i11; i13++) {
                        androidx.appcompat.view.menu.j jVar3 = arrayListJ.get(i13);
                        if (jVar3.getGroupId() == groupId2) {
                            if (jVar3.j()) {
                                i9++;
                            }
                            jVar3.d(false);
                        }
                    }
                }
                if (z3) {
                    i9--;
                }
                jVar2.d(z3);
            } else {
                i2 = size;
                jVar2.d(false);
                i11++;
                bVar = this;
                size = i2;
                i3 = 0;
            }
            i11++;
            bVar = this;
            size = i2;
            i3 = 0;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.o
    public void a(androidx.appcompat.view.menu.h hVar, boolean z) {
        f();
        super.a(hVar, z);
    }

    @Override // androidx.core.h.b.a
    public void d(boolean z) {
        if (z) {
            super.a((u) null);
        } else if (this.f799c != null) {
            this.f799c.a(false);
        }
    }

    public void a(ActionMenuView actionMenuView) {
        this.f = actionMenuView;
        actionMenuView.initialize(this.f799c);
    }

    private class d extends AppCompatImageView implements ActionMenuView.ActionMenuChildView {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final float[] f971b;

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public boolean needsDividerAfter() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public boolean needsDividerBefore() {
            return false;
        }

        public d(Context context) {
            super(context, null, a.C0012a.actionOverflowButtonStyle);
            this.f971b = new float[2];
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            TooltipCompat.setTooltipText(this, getContentDescription());
            setOnTouchListener(new ForwardingListener(this) { // from class: androidx.appcompat.widget.b.d.1
                @Override // androidx.appcompat.widget.ForwardingListener
                public androidx.appcompat.view.menu.s getPopup() {
                    if (b.this.h == null) {
                        return null;
                    }
                    return b.this.h.c();
                }

                @Override // androidx.appcompat.widget.ForwardingListener
                public boolean onForwardingStarted() {
                    b.this.d();
                    return true;
                }

                @Override // androidx.appcompat.widget.ForwardingListener
                public boolean onForwardingStopped() {
                    if (b.this.j != null) {
                        return false;
                    }
                    b.this.e();
                    return true;
                }
            });
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            b.this.d();
            return true;
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
                androidx.core.graphics.drawable.a.a(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    private class e extends androidx.appcompat.view.menu.n {
        public e(Context context, androidx.appcompat.view.menu.h hVar, View view, boolean z) {
            super(context, hVar, view, z, a.C0012a.actionOverflowMenuStyle);
            a(8388613);
            a(b.this.k);
        }

        @Override // androidx.appcompat.view.menu.n
        protected void f() {
            if (b.this.f799c != null) {
                b.this.f799c.close();
            }
            b.this.h = null;
            super.f();
        }
    }

    private class a extends androidx.appcompat.view.menu.n {
        public a(Context context, u uVar, View view) {
            super(context, uVar, view, false, a.C0012a.actionOverflowMenuStyle);
            if (!((androidx.appcompat.view.menu.j) uVar.getItem()).j()) {
                a(b.this.g == null ? (View) b.this.f : b.this.g);
            }
            a(b.this.k);
        }

        @Override // androidx.appcompat.view.menu.n
        protected void f() {
            b.this.i = null;
            b.this.l = 0;
            super.f();
        }
    }

    private class f implements o.a {
        f() {
        }

        @Override // androidx.appcompat.view.menu.o.a
        public boolean a(androidx.appcompat.view.menu.h hVar) {
            if (hVar == null) {
                return false;
            }
            b.this.l = ((u) hVar).getItem().getItemId();
            o.a aVarA = b.this.a();
            if (aVarA != null) {
                return aVarA.a(hVar);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.o.a
        public void a(androidx.appcompat.view.menu.h hVar, boolean z) {
            if (hVar instanceof u) {
                hVar.q().a(false);
            }
            o.a aVarA = b.this.a();
            if (aVarA != null) {
                aVarA.a(hVar, z);
            }
        }
    }

    private class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private e f969b;

        public c(e eVar) {
            this.f969b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f799c != null) {
                b.this.f799c.g();
            }
            View view = (View) b.this.f;
            if (view != null && view.getWindowToken() != null && this.f969b.d()) {
                b.this.h = this.f969b;
            }
            b.this.j = null;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.b$b, reason: collision with other inner class name */
    private class C0019b extends ActionMenuItemView.b {
        C0019b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.b
        public androidx.appcompat.view.menu.s a() {
            if (b.this.i != null) {
                return b.this.i.c();
            }
            return null;
        }
    }
}
