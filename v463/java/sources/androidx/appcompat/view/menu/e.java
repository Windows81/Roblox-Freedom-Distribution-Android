package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.o;
import androidx.appcompat.widget.MenuItemHoverListener;
import androidx.appcompat.widget.MenuPopupWindow;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class e extends m implements View.OnKeyListener, PopupWindow.OnDismissListener, o {
    private static final int g = a.g.abc_cascading_menu_item_layout;
    private PopupWindow.OnDismissListener A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Handler f806a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f809d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ViewTreeObserver f810e;
    boolean f;
    private final Context h;
    private final int i;
    private final int j;
    private final int k;
    private final boolean l;
    private View r;
    private boolean t;
    private boolean u;
    private int v;
    private int w;
    private boolean y;
    private o.a z;
    private final List<h> m = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final List<a> f807b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ViewTreeObserver.OnGlobalLayoutListener f808c = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.e.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!e.this.isShowing() || e.this.f807b.size() <= 0 || e.this.f807b.get(0).f818a.isModal()) {
                return;
            }
            View view = e.this.f809d;
            if (view == null || !view.isShown()) {
                e.this.dismiss();
                return;
            }
            Iterator<a> it = e.this.f807b.iterator();
            while (it.hasNext()) {
                it.next().f818a.show();
            }
        }
    };
    private final View.OnAttachStateChangeListener n = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.e.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (e.this.f810e != null) {
                if (!e.this.f810e.isAlive()) {
                    e.this.f810e = view.getViewTreeObserver();
                }
                e.this.f810e.removeGlobalOnLayoutListener(e.this.f808c);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    private final MenuItemHoverListener o = new MenuItemHoverListener() { // from class: androidx.appcompat.view.menu.e.3
        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public void onItemHoverExit(h hVar, MenuItem menuItem) {
            e.this.f806a.removeCallbacksAndMessages(hVar);
        }

        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public void onItemHoverEnter(final h hVar, final MenuItem menuItem) {
            e.this.f806a.removeCallbacksAndMessages(null);
            int size = e.this.f807b.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (hVar == e.this.f807b.get(i).f819b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            final a aVar = i2 < e.this.f807b.size() ? e.this.f807b.get(i2) : null;
            e.this.f806a.postAtTime(new Runnable() { // from class: androidx.appcompat.view.menu.e.3.1
                @Override // java.lang.Runnable
                public void run() {
                    if (aVar != null) {
                        e.this.f = true;
                        aVar.f819b.a(false);
                        e.this.f = false;
                    }
                    if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                        hVar.a(menuItem, 4);
                    }
                }
            }, hVar, SystemClock.uptimeMillis() + 200);
        }
    };
    private int p = 0;
    private int q = 0;
    private boolean x = false;
    private int s = e();

    @Override // androidx.appcompat.view.menu.m
    protected boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.o
    public boolean b() {
        return false;
    }

    public e(Context context, View view, int i, int i2, boolean z) {
        this.h = context;
        this.r = view;
        this.j = i;
        this.k = i2;
        this.l = z;
        Resources resources = context.getResources();
        this.i = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(a.d.abc_config_prefDialogWidth));
        this.f806a = new Handler();
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(boolean z) {
        this.x = z;
    }

    private MenuPopupWindow d() {
        MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.h, null, this.j, this.k);
        menuPopupWindow.setHoverListener(this.o);
        menuPopupWindow.setOnItemClickListener(this);
        menuPopupWindow.setOnDismissListener(this);
        menuPopupWindow.setAnchorView(this.r);
        menuPopupWindow.setDropDownGravity(this.q);
        menuPopupWindow.setModal(true);
        menuPopupWindow.setInputMethodMode(2);
        return menuPopupWindow;
    }

    @Override // androidx.appcompat.view.menu.s
    public void show() {
        if (isShowing()) {
            return;
        }
        Iterator<h> it = this.m.iterator();
        while (it.hasNext()) {
            c(it.next());
        }
        this.m.clear();
        View view = this.r;
        this.f809d = view;
        if (view != null) {
            boolean z = this.f810e == null;
            ViewTreeObserver viewTreeObserver = this.f809d.getViewTreeObserver();
            this.f810e = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f808c);
            }
            this.f809d.addOnAttachStateChangeListener(this.n);
        }
    }

    @Override // androidx.appcompat.view.menu.s
    public void dismiss() {
        int size = this.f807b.size();
        if (size > 0) {
            a[] aVarArr = (a[]) this.f807b.toArray(new a[size]);
            for (int i = size - 1; i >= 0; i--) {
                a aVar = aVarArr[i];
                if (aVar.f818a.isShowing()) {
                    aVar.f818a.dismiss();
                }
            }
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    private int e() {
        return androidx.core.h.r.f(this.r) == 1 ? 0 : 1;
    }

    private int d(int i) {
        List<a> list = this.f807b;
        ListView listViewA = list.get(list.size() - 1).a();
        int[] iArr = new int[2];
        listViewA.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f809d.getWindowVisibleDisplayFrame(rect);
        return this.s == 1 ? (iArr[0] + listViewA.getWidth()) + i > rect.right ? 0 : 1 : iArr[0] - i < 0 ? 1 : 0;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(h hVar) {
        hVar.a(this, this.h);
        if (isShowing()) {
            c(hVar);
        } else {
            this.m.add(hVar);
        }
    }

    private void c(h hVar) {
        a aVar;
        View viewA;
        int i;
        int i2;
        int i3;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.h);
        g gVar = new g(hVar, layoutInflaterFrom, this.l, g);
        if (!isShowing() && this.x) {
            gVar.a(true);
        } else if (isShowing()) {
            gVar.a(m.b(hVar));
        }
        int iA = a(gVar, null, this.h, this.i);
        MenuPopupWindow menuPopupWindowD = d();
        menuPopupWindowD.setAdapter(gVar);
        menuPopupWindowD.setContentWidth(iA);
        menuPopupWindowD.setDropDownGravity(this.q);
        if (this.f807b.size() > 0) {
            List<a> list = this.f807b;
            aVar = list.get(list.size() - 1);
            viewA = a(aVar, hVar);
        } else {
            aVar = null;
            viewA = null;
        }
        if (viewA != null) {
            menuPopupWindowD.setTouchModal(false);
            menuPopupWindowD.setEnterTransition(null);
            int iD = d(iA);
            boolean z = iD == 1;
            this.s = iD;
            if (Build.VERSION.SDK_INT >= 26) {
                menuPopupWindowD.setAnchorView(viewA);
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.r.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                viewA.getLocationOnScreen(iArr2);
                if ((this.q & 7) == 5) {
                    iArr[0] = iArr[0] + this.r.getWidth();
                    iArr2[0] = iArr2[0] + viewA.getWidth();
                }
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            if ((this.q & 5) == 5) {
                if (!z) {
                    iA = viewA.getWidth();
                    i3 = i - iA;
                }
                i3 = i + iA;
            } else {
                if (z) {
                    iA = viewA.getWidth();
                    i3 = i + iA;
                }
                i3 = i - iA;
            }
            menuPopupWindowD.setHorizontalOffset(i3);
            menuPopupWindowD.setOverlapAnchor(true);
            menuPopupWindowD.setVerticalOffset(i2);
        } else {
            if (this.t) {
                menuPopupWindowD.setHorizontalOffset(this.v);
            }
            if (this.u) {
                menuPopupWindowD.setVerticalOffset(this.w);
            }
            menuPopupWindowD.setEpicenterBounds(c());
        }
        this.f807b.add(new a(menuPopupWindowD, hVar, this.s));
        menuPopupWindowD.show();
        ListView listView = menuPopupWindowD.getListView();
        listView.setOnKeyListener(this);
        if (aVar == null && this.y && hVar.n() != null) {
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(a.g.abc_popup_menu_header_item_layout, (ViewGroup) listView, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(hVar.n());
            listView.addHeaderView(frameLayout, null, false);
            menuPopupWindowD.show();
        }
    }

    private MenuItem a(h hVar, h hVar2) {
        int size = hVar.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = hVar.getItem(i);
            if (item.hasSubMenu() && hVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    private View a(a aVar, h hVar) {
        g gVar;
        int headersCount;
        int firstVisiblePosition;
        MenuItem menuItemA = a(aVar.f819b, hVar);
        if (menuItemA == null) {
            return null;
        }
        ListView listViewA = aVar.a();
        ListAdapter adapter = listViewA.getAdapter();
        int i = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            headersCount = headerViewListAdapter.getHeadersCount();
            gVar = (g) headerViewListAdapter.getWrappedAdapter();
        } else {
            gVar = (g) adapter;
            headersCount = 0;
        }
        int count = gVar.getCount();
        while (true) {
            if (i >= count) {
                i = -1;
                break;
            }
            if (menuItemA == gVar.getItem(i)) {
                break;
            }
            i++;
        }
        if (i != -1 && (firstVisiblePosition = (i + headersCount) - listViewA.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < listViewA.getChildCount()) {
            return listViewA.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.s
    public boolean isShowing() {
        return this.f807b.size() > 0 && this.f807b.get(0).f818a.isShowing();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        a aVar;
        int size = this.f807b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                aVar = null;
                break;
            }
            aVar = this.f807b.get(i);
            if (!aVar.f818a.isShowing()) {
                break;
            } else {
                i++;
            }
        }
        if (aVar != null) {
            aVar.f819b.a(false);
        }
    }

    @Override // androidx.appcompat.view.menu.o
    public void a(boolean z) {
        Iterator<a> it = this.f807b.iterator();
        while (it.hasNext()) {
            a(it.next().a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.o
    public void a(o.a aVar) {
        this.z = aVar;
    }

    @Override // androidx.appcompat.view.menu.o
    public boolean a(u uVar) {
        for (a aVar : this.f807b) {
            if (uVar == aVar.f819b) {
                aVar.a().requestFocus();
                return true;
            }
        }
        if (!uVar.hasVisibleItems()) {
            return false;
        }
        a((h) uVar);
        o.a aVar2 = this.z;
        if (aVar2 != null) {
            aVar2.a(uVar);
        }
        return true;
    }

    private int d(h hVar) {
        int size = this.f807b.size();
        for (int i = 0; i < size; i++) {
            if (hVar == this.f807b.get(i).f819b) {
                return i;
            }
        }
        return -1;
    }

    @Override // androidx.appcompat.view.menu.o
    public void a(h hVar, boolean z) {
        int iD = d(hVar);
        if (iD < 0) {
            return;
        }
        int i = iD + 1;
        if (i < this.f807b.size()) {
            this.f807b.get(i).f819b.a(false);
        }
        a aVarRemove = this.f807b.remove(iD);
        aVarRemove.f819b.b(this);
        if (this.f) {
            aVarRemove.f818a.setExitTransition(null);
            aVarRemove.f818a.setAnimationStyle(0);
        }
        aVarRemove.f818a.dismiss();
        int size = this.f807b.size();
        if (size > 0) {
            this.s = this.f807b.get(size - 1).f820c;
        } else {
            this.s = e();
        }
        if (size != 0) {
            if (z) {
                this.f807b.get(0).f819b.a(false);
                return;
            }
            return;
        }
        dismiss();
        o.a aVar = this.z;
        if (aVar != null) {
            aVar.a(hVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.f810e;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f810e.removeGlobalOnLayoutListener(this.f808c);
            }
            this.f810e = null;
        }
        this.f809d.removeOnAttachStateChangeListener(this.n);
        this.A.onDismiss();
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(int i) {
        if (this.p != i) {
            this.p = i;
            this.q = androidx.core.h.c.a(i, androidx.core.h.r.f(this.r));
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(View view) {
        if (this.r != view) {
            this.r = view;
            this.q = androidx.core.h.c.a(this.p, androidx.core.h.r.f(view));
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.A = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.s
    public ListView getListView() {
        if (this.f807b.isEmpty()) {
            return null;
        }
        return this.f807b.get(r0.size() - 1).a();
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(int i) {
        this.t = true;
        this.v = i;
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(int i) {
        this.u = true;
        this.w = i;
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(boolean z) {
        this.y = z;
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MenuPopupWindow f818a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final h f819b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f820c;

        public a(MenuPopupWindow menuPopupWindow, h hVar, int i) {
            this.f818a = menuPopupWindow;
            this.f819b = hVar;
            this.f820c = i;
        }

        public ListView a() {
            return this.f818a.getListView();
        }
    }
}
