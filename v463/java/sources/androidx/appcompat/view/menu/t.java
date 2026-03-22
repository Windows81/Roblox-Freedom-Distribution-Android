package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.view.Gravity;
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
import androidx.appcompat.a;
import androidx.appcompat.view.menu.o;
import androidx.appcompat.widget.MenuPopupWindow;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class t extends m implements View.OnKeyListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener, o {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f863e = a.g.abc_popup_menu_item_layout;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final MenuPopupWindow f864a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    View f866c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ViewTreeObserver f867d;
    private final Context f;
    private final h g;
    private final g h;
    private final boolean i;
    private final int j;
    private final int k;
    private final int l;
    private PopupWindow.OnDismissListener n;
    private View o;
    private o.a p;
    private boolean q;
    private boolean r;
    private int s;
    private boolean u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ViewTreeObserver.OnGlobalLayoutListener f865b = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.t.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!t.this.isShowing() || t.this.f864a.isModal()) {
                return;
            }
            View view = t.this.f866c;
            if (view == null || !view.isShown()) {
                t.this.dismiss();
            } else {
                t.this.f864a.show();
            }
        }
    };
    private final View.OnAttachStateChangeListener m = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.t.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (t.this.f867d != null) {
                if (!t.this.f867d.isAlive()) {
                    t.this.f867d = view.getViewTreeObserver();
                }
                t.this.f867d.removeGlobalOnLayoutListener(t.this.f865b);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    private int t = 0;

    @Override // androidx.appcompat.view.menu.m
    public void a(h hVar) {
    }

    @Override // androidx.appcompat.view.menu.o
    public boolean b() {
        return false;
    }

    public t(Context context, h hVar, View view, int i, int i2, boolean z) {
        this.f = context;
        this.g = hVar;
        this.i = z;
        this.h = new g(hVar, LayoutInflater.from(context), this.i, f863e);
        this.k = i;
        this.l = i2;
        Resources resources = context.getResources();
        this.j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(a.d.abc_config_prefDialogWidth));
        this.o = view;
        this.f864a = new MenuPopupWindow(this.f, null, this.k, this.l);
        hVar.a(this, context);
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(boolean z) {
        this.h.a(z);
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(int i) {
        this.t = i;
    }

    private boolean d() {
        View view;
        if (isShowing()) {
            return true;
        }
        if (this.q || (view = this.o) == null) {
            return false;
        }
        this.f866c = view;
        this.f864a.setOnDismissListener(this);
        this.f864a.setOnItemClickListener(this);
        this.f864a.setModal(true);
        View view2 = this.f866c;
        boolean z = this.f867d == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f867d = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f865b);
        }
        view2.addOnAttachStateChangeListener(this.m);
        this.f864a.setAnchorView(view2);
        this.f864a.setDropDownGravity(this.t);
        if (!this.r) {
            this.s = a(this.h, null, this.f, this.j);
            this.r = true;
        }
        this.f864a.setContentWidth(this.s);
        this.f864a.setInputMethodMode(2);
        this.f864a.setEpicenterBounds(c());
        this.f864a.show();
        ListView listView = this.f864a.getListView();
        listView.setOnKeyListener(this);
        if (this.u && this.g.n() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f).inflate(a.g.abc_popup_menu_header_item_layout, (ViewGroup) listView, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            if (textView != null) {
                textView.setText(this.g.n());
            }
            frameLayout.setEnabled(false);
            listView.addHeaderView(frameLayout, null, false);
        }
        this.f864a.setAdapter(this.h);
        this.f864a.show();
        return true;
    }

    @Override // androidx.appcompat.view.menu.s
    public void show() {
        if (!d()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.s
    public void dismiss() {
        if (isShowing()) {
            this.f864a.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.s
    public boolean isShowing() {
        return !this.q && this.f864a.isShowing();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.q = true;
        this.g.close();
        ViewTreeObserver viewTreeObserver = this.f867d;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f867d = this.f866c.getViewTreeObserver();
            }
            this.f867d.removeGlobalOnLayoutListener(this.f865b);
            this.f867d = null;
        }
        this.f866c.removeOnAttachStateChangeListener(this.m);
        PopupWindow.OnDismissListener onDismissListener = this.n;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.o
    public void a(boolean z) {
        this.r = false;
        g gVar = this.h;
        if (gVar != null) {
            gVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.o
    public void a(o.a aVar) {
        this.p = aVar;
    }

    @Override // androidx.appcompat.view.menu.o
    public boolean a(u uVar) {
        if (uVar.hasVisibleItems()) {
            n nVar = new n(this.f, uVar, this.f866c, this.i, this.k, this.l);
            nVar.a(this.p);
            nVar.a(m.b(uVar));
            nVar.a(this.n);
            this.n = null;
            this.g.a(false);
            int horizontalOffset = this.f864a.getHorizontalOffset();
            int verticalOffset = this.f864a.getVerticalOffset();
            if ((Gravity.getAbsoluteGravity(this.t, androidx.core.h.r.f(this.o)) & 7) == 5) {
                horizontalOffset += this.o.getWidth();
            }
            if (nVar.a(horizontalOffset, verticalOffset)) {
                o.a aVar = this.p;
                if (aVar == null) {
                    return true;
                }
                aVar.a(uVar);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.o
    public void a(h hVar, boolean z) {
        if (hVar != this.g) {
            return;
        }
        dismiss();
        o.a aVar = this.p;
        if (aVar != null) {
            aVar.a(hVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(View view) {
        this.o = view;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.n = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.s
    public ListView getListView() {
        return this.f864a.getListView();
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(int i) {
        this.f864a.setHorizontalOffset(i);
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(int i) {
        this.f864a.setVerticalOffset(i);
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(boolean z) {
        this.u = z;
    }
}
