package android.support.v7.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.support.v7.a.a;
import android.support.v7.view.menu.o;
import android.support.v7.widget.MenuPopupWindow;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
final class t extends m implements o, View.OnKeyListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final MenuPopupWindow f1424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    View f1425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f1426c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h f1427d;
    private final g e;
    private final boolean f;
    private final int g;
    private final int h;
    private final int i;
    private PopupWindow.OnDismissListener l;
    private View m;
    private o.a n;
    private ViewTreeObserver o;
    private boolean p;
    private boolean q;
    private int r;
    private boolean t;
    private final ViewTreeObserver.OnGlobalLayoutListener j = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.support.v7.view.menu.t.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (t.this.isShowing() && !t.this.f1424a.isModal()) {
                View view = t.this.f1425b;
                if (view == null || !view.isShown()) {
                    t.this.dismiss();
                } else {
                    t.this.f1424a.show();
                }
            }
        }
    };
    private final View.OnAttachStateChangeListener k = new View.OnAttachStateChangeListener() { // from class: android.support.v7.view.menu.t.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (t.this.o != null) {
                if (!t.this.o.isAlive()) {
                    t.this.o = view.getViewTreeObserver();
                }
                t.this.o.removeGlobalOnLayoutListener(t.this.j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    private int s = 0;

    public t(Context context, h hVar, View view, int i, int i2, boolean z) {
        this.f1426c = context;
        this.f1427d = hVar;
        this.f = z;
        this.e = new g(hVar, LayoutInflater.from(context), this.f);
        this.h = i;
        this.i = i2;
        Resources resources = context.getResources();
        this.g = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(a.d.abc_config_prefDialogWidth));
        this.m = view;
        this.f1424a = new MenuPopupWindow(this.f1426c, null, this.h, this.i);
        hVar.a(this, context);
    }

    @Override // android.support.v7.view.menu.m
    public void a(boolean z) {
        this.e.a(z);
    }

    @Override // android.support.v7.view.menu.m
    public void a(int i) {
        this.s = i;
    }

    private boolean d() {
        if (isShowing()) {
            return true;
        }
        if (this.p || this.m == null) {
            return false;
        }
        this.f1425b = this.m;
        this.f1424a.setOnDismissListener(this);
        this.f1424a.setOnItemClickListener(this);
        this.f1424a.setModal(true);
        View view = this.f1425b;
        boolean z = this.o == null;
        this.o = view.getViewTreeObserver();
        if (z) {
            this.o.addOnGlobalLayoutListener(this.j);
        }
        view.addOnAttachStateChangeListener(this.k);
        this.f1424a.setAnchorView(view);
        this.f1424a.setDropDownGravity(this.s);
        if (!this.q) {
            this.r = a(this.e, null, this.f1426c, this.g);
            this.q = true;
        }
        this.f1424a.setContentWidth(this.r);
        this.f1424a.setInputMethodMode(2);
        this.f1424a.setEpicenterBounds(c());
        this.f1424a.show();
        ListView listView = this.f1424a.getListView();
        listView.setOnKeyListener(this);
        if (this.t && this.f1427d.m() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f1426c).inflate(a.g.abc_popup_menu_header_item_layout, (ViewGroup) listView, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            if (textView != null) {
                textView.setText(this.f1427d.m());
            }
            frameLayout.setEnabled(false);
            listView.addHeaderView(frameLayout, null, false);
        }
        this.f1424a.setAdapter(this.e);
        this.f1424a.show();
        return true;
    }

    @Override // android.support.v7.view.menu.s
    public void show() {
        if (!d()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // android.support.v7.view.menu.s
    public void dismiss() {
        if (isShowing()) {
            this.f1424a.dismiss();
        }
    }

    @Override // android.support.v7.view.menu.m
    public void a(h hVar) {
    }

    @Override // android.support.v7.view.menu.s
    public boolean isShowing() {
        return !this.p && this.f1424a.isShowing();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.p = true;
        this.f1427d.close();
        if (this.o != null) {
            if (!this.o.isAlive()) {
                this.o = this.f1425b.getViewTreeObserver();
            }
            this.o.removeGlobalOnLayoutListener(this.j);
            this.o = null;
        }
        this.f1425b.removeOnAttachStateChangeListener(this.k);
        if (this.l != null) {
            this.l.onDismiss();
        }
    }

    @Override // android.support.v7.view.menu.o
    public void b(boolean z) {
        this.q = false;
        if (this.e != null) {
            this.e.notifyDataSetChanged();
        }
    }

    @Override // android.support.v7.view.menu.o
    public void a(o.a aVar) {
        this.n = aVar;
    }

    @Override // android.support.v7.view.menu.o
    public boolean a(u uVar) {
        if (uVar.hasVisibleItems()) {
            n nVar = new n(this.f1426c, uVar, this.f1425b, this.f, this.h, this.i);
            nVar.a(this.n);
            nVar.a(m.b(uVar));
            nVar.a(this.s);
            nVar.a(this.l);
            this.l = null;
            this.f1427d.a(false);
            if (nVar.a(this.f1424a.getHorizontalOffset(), this.f1424a.getVerticalOffset())) {
                if (this.n != null) {
                    this.n.a(uVar);
                }
                return true;
            }
        }
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public void a(h hVar, boolean z) {
        if (hVar == this.f1427d) {
            dismiss();
            if (this.n != null) {
                this.n.a(hVar, z);
            }
        }
    }

    @Override // android.support.v7.view.menu.o
    public boolean b() {
        return false;
    }

    @Override // android.support.v7.view.menu.m
    public void a(View view) {
        this.m = view;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // android.support.v7.view.menu.m
    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.l = onDismissListener;
    }

    @Override // android.support.v7.view.menu.s
    public ListView getListView() {
        return this.f1424a.getListView();
    }

    @Override // android.support.v7.view.menu.m
    public void b(int i) {
        this.f1424a.setHorizontalOffset(i);
    }

    @Override // android.support.v7.view.menu.m
    public void c(int i) {
        this.f1424a.setVerticalOffset(i);
    }

    @Override // android.support.v7.view.menu.m
    public void c(boolean z) {
        this.t = z;
    }
}
