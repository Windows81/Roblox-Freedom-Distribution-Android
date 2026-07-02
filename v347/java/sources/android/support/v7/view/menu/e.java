package android.support.v7.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v7.a.a;
import android.support.v7.view.menu.o;
import android.support.v7.widget.MenuItemHoverListener;
import android.support.v7.widget.MenuPopupWindow;
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
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class e extends m implements o, View.OnKeyListener, PopupWindow.OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Handler f1373a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    View f1375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f1376d;
    private final Context e;
    private final int f;
    private final int g;
    private final int h;
    private final boolean i;
    private View p;
    private boolean r;
    private boolean s;
    private int t;
    private int u;
    private boolean w;
    private o.a x;
    private ViewTreeObserver y;
    private PopupWindow.OnDismissListener z;
    private final List<h> j = new LinkedList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final List<a> f1374b = new ArrayList();
    private final ViewTreeObserver.OnGlobalLayoutListener k = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.support.v7.view.menu.e.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (e.this.isShowing() && e.this.f1374b.size() > 0 && !e.this.f1374b.get(0).f1384a.isModal()) {
                View view = e.this.f1375c;
                if (view == null || !view.isShown()) {
                    e.this.dismiss();
                    return;
                }
                Iterator<a> it = e.this.f1374b.iterator();
                while (it.hasNext()) {
                    it.next().f1384a.show();
                }
            }
        }
    };
    private final View.OnAttachStateChangeListener l = new View.OnAttachStateChangeListener() { // from class: android.support.v7.view.menu.e.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (e.this.y != null) {
                if (!e.this.y.isAlive()) {
                    e.this.y = view.getViewTreeObserver();
                }
                e.this.y.removeGlobalOnLayoutListener(e.this.k);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    private final MenuItemHoverListener m = new MenuItemHoverListener() { // from class: android.support.v7.view.menu.e.3
        @Override // android.support.v7.widget.MenuItemHoverListener
        public void onItemHoverExit(h hVar, MenuItem menuItem) {
            e.this.f1373a.removeCallbacksAndMessages(hVar);
        }

        @Override // android.support.v7.widget.MenuItemHoverListener
        public void onItemHoverEnter(final h hVar, final MenuItem menuItem) {
            int i;
            e.this.f1373a.removeCallbacksAndMessages(null);
            int i2 = 0;
            int size = e.this.f1374b.size();
            while (true) {
                if (i2 >= size) {
                    i = -1;
                    break;
                } else {
                    if (hVar == e.this.f1374b.get(i2).f1385b) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
            }
            if (i != -1) {
                int i3 = i + 1;
                final a aVar = i3 < e.this.f1374b.size() ? e.this.f1374b.get(i3) : null;
                e.this.f1373a.postAtTime(new Runnable() { // from class: android.support.v7.view.menu.e.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (aVar != null) {
                            e.this.f1376d = true;
                            aVar.f1385b.a(false);
                            e.this.f1376d = false;
                        }
                        if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                            hVar.a(menuItem, 4);
                        }
                    }
                }, hVar, SystemClock.uptimeMillis() + 200);
            }
        }
    };
    private int n = 0;
    private int o = 0;
    private boolean v = false;
    private int q = e();

    public e(Context context, View view, int i, int i2, boolean z) {
        this.e = context;
        this.p = view;
        this.g = i;
        this.h = i2;
        this.i = z;
        Resources resources = context.getResources();
        this.f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(a.d.abc_config_prefDialogWidth));
        this.f1373a = new Handler();
    }

    @Override // android.support.v7.view.menu.m
    public void a(boolean z) {
        this.v = z;
    }

    private MenuPopupWindow d() {
        MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.e, null, this.g, this.h);
        menuPopupWindow.setHoverListener(this.m);
        menuPopupWindow.setOnItemClickListener(this);
        menuPopupWindow.setOnDismissListener(this);
        menuPopupWindow.setAnchorView(this.p);
        menuPopupWindow.setDropDownGravity(this.o);
        menuPopupWindow.setModal(true);
        menuPopupWindow.setInputMethodMode(2);
        return menuPopupWindow;
    }

    @Override // android.support.v7.view.menu.s
    public void show() {
        if (!isShowing()) {
            Iterator<h> it = this.j.iterator();
            while (it.hasNext()) {
                c(it.next());
            }
            this.j.clear();
            this.f1375c = this.p;
            if (this.f1375c != null) {
                boolean z = this.y == null;
                this.y = this.f1375c.getViewTreeObserver();
                if (z) {
                    this.y.addOnGlobalLayoutListener(this.k);
                }
                this.f1375c.addOnAttachStateChangeListener(this.l);
            }
        }
    }

    @Override // android.support.v7.view.menu.s
    public void dismiss() {
        int size = this.f1374b.size();
        if (size > 0) {
            a[] aVarArr = (a[]) this.f1374b.toArray(new a[size]);
            for (int i = size - 1; i >= 0; i--) {
                a aVar = aVarArr[i];
                if (aVar.f1384a.isShowing()) {
                    aVar.f1384a.dismiss();
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
        return android.support.v4.view.s.e(this.p) == 1 ? 0 : 1;
    }

    private int d(int i) {
        ListView listViewA = this.f1374b.get(this.f1374b.size() - 1).a();
        int[] iArr = new int[2];
        listViewA.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f1375c.getWindowVisibleDisplayFrame(rect);
        if (this.q == 1) {
            return (listViewA.getWidth() + iArr[0]) + i > rect.right ? 0 : 1;
        }
        return iArr[0] - i < 0 ? 1 : 0;
    }

    @Override // android.support.v7.view.menu.m
    public void a(h hVar) {
        hVar.a(this, this.e);
        if (isShowing()) {
            c(hVar);
        } else {
            this.j.add(hVar);
        }
    }

    private void c(h hVar) {
        View viewA;
        a aVar;
        int i;
        int i2;
        int width;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.e);
        g gVar = new g(hVar, layoutInflaterFrom, this.i);
        if (!isShowing() && this.v) {
            gVar.a(true);
        } else if (isShowing()) {
            gVar.a(m.b(hVar));
        }
        int iA = a(gVar, null, this.e, this.f);
        MenuPopupWindow menuPopupWindowD = d();
        menuPopupWindowD.setAdapter(gVar);
        menuPopupWindowD.setContentWidth(iA);
        menuPopupWindowD.setDropDownGravity(this.o);
        if (this.f1374b.size() > 0) {
            a aVar2 = this.f1374b.get(this.f1374b.size() - 1);
            viewA = a(aVar2, hVar);
            aVar = aVar2;
        } else {
            viewA = null;
            aVar = null;
        }
        if (viewA != null) {
            menuPopupWindowD.setTouchModal(false);
            menuPopupWindowD.setEnterTransition(null);
            int iD = d(iA);
            boolean z = iD == 1;
            this.q = iD;
            if (Build.VERSION.SDK_INT >= 26) {
                menuPopupWindowD.setAnchorView(viewA);
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.p.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                viewA.getLocationOnScreen(iArr2);
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            if ((this.o & 5) == 5) {
                if (z) {
                    width = i + iA;
                } else {
                    width = i - viewA.getWidth();
                }
            } else if (z) {
                width = viewA.getWidth() + i;
            } else {
                width = i - iA;
            }
            menuPopupWindowD.setHorizontalOffset(width);
            menuPopupWindowD.setOverlapAnchor(true);
            menuPopupWindowD.setVerticalOffset(i2);
        } else {
            if (this.r) {
                menuPopupWindowD.setHorizontalOffset(this.t);
            }
            if (this.s) {
                menuPopupWindowD.setVerticalOffset(this.u);
            }
            menuPopupWindowD.setEpicenterBounds(c());
        }
        this.f1374b.add(new a(menuPopupWindowD, hVar, this.q));
        menuPopupWindowD.show();
        ListView listView = menuPopupWindowD.getListView();
        listView.setOnKeyListener(this);
        if (aVar == null && this.w && hVar.m() != null) {
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(a.g.abc_popup_menu_header_item_layout, (ViewGroup) listView, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(hVar.m());
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
        int i;
        int i2 = 0;
        MenuItem menuItemA = a(aVar.f1385b, hVar);
        if (menuItemA == null) {
            return null;
        }
        ListView listViewA = aVar.a();
        ListAdapter adapter = listViewA.getAdapter();
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
            if (i2 >= count) {
                i = -1;
                break;
            }
            if (menuItemA == gVar.getItem(i2)) {
                i = i2;
                break;
            }
            i2++;
        }
        if (i == -1) {
            return null;
        }
        int firstVisiblePosition = (i + headersCount) - listViewA.getFirstVisiblePosition();
        if (firstVisiblePosition < 0 || firstVisiblePosition >= listViewA.getChildCount()) {
            return null;
        }
        return listViewA.getChildAt(firstVisiblePosition);
    }

    @Override // android.support.v7.view.menu.s
    public boolean isShowing() {
        return this.f1374b.size() > 0 && this.f1374b.get(0).f1384a.isShowing();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        a aVar;
        int size = this.f1374b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                aVar = null;
                break;
            }
            aVar = this.f1374b.get(i);
            if (!aVar.f1384a.isShowing()) {
                break;
            } else {
                i++;
            }
        }
        if (aVar != null) {
            aVar.f1385b.a(false);
        }
    }

    @Override // android.support.v7.view.menu.o
    public void b(boolean z) {
        Iterator<a> it = this.f1374b.iterator();
        while (it.hasNext()) {
            a(it.next().a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // android.support.v7.view.menu.o
    public void a(o.a aVar) {
        this.x = aVar;
    }

    @Override // android.support.v7.view.menu.o
    public boolean a(u uVar) {
        for (a aVar : this.f1374b) {
            if (uVar == aVar.f1385b) {
                aVar.a().requestFocus();
                return true;
            }
        }
        if (uVar.hasVisibleItems()) {
            a((h) uVar);
            if (this.x != null) {
                this.x.a(uVar);
            }
            return true;
        }
        return false;
    }

    private int d(h hVar) {
        int size = this.f1374b.size();
        for (int i = 0; i < size; i++) {
            if (hVar == this.f1374b.get(i).f1385b) {
                return i;
            }
        }
        return -1;
    }

    @Override // android.support.v7.view.menu.o
    public void a(h hVar, boolean z) {
        int iD = d(hVar);
        if (iD >= 0) {
            int i = iD + 1;
            if (i < this.f1374b.size()) {
                this.f1374b.get(i).f1385b.a(false);
            }
            a aVarRemove = this.f1374b.remove(iD);
            aVarRemove.f1385b.b(this);
            if (this.f1376d) {
                aVarRemove.f1384a.setExitTransition(null);
                aVarRemove.f1384a.setAnimationStyle(0);
            }
            aVarRemove.f1384a.dismiss();
            int size = this.f1374b.size();
            if (size > 0) {
                this.q = this.f1374b.get(size - 1).f1386c;
            } else {
                this.q = e();
            }
            if (size == 0) {
                dismiss();
                if (this.x != null) {
                    this.x.a(hVar, true);
                }
                if (this.y != null) {
                    if (this.y.isAlive()) {
                        this.y.removeGlobalOnLayoutListener(this.k);
                    }
                    this.y = null;
                }
                this.f1375c.removeOnAttachStateChangeListener(this.l);
                this.z.onDismiss();
                return;
            }
            if (z) {
                this.f1374b.get(0).f1385b.a(false);
            }
        }
    }

    @Override // android.support.v7.view.menu.o
    public boolean b() {
        return false;
    }

    @Override // android.support.v7.view.menu.m
    public void a(int i) {
        if (this.n != i) {
            this.n = i;
            this.o = android.support.v4.view.d.a(i, android.support.v4.view.s.e(this.p));
        }
    }

    @Override // android.support.v7.view.menu.m
    public void a(View view) {
        if (this.p != view) {
            this.p = view;
            this.o = android.support.v4.view.d.a(this.n, android.support.v4.view.s.e(this.p));
        }
    }

    @Override // android.support.v7.view.menu.m
    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.z = onDismissListener;
    }

    @Override // android.support.v7.view.menu.s
    public ListView getListView() {
        if (this.f1374b.isEmpty()) {
            return null;
        }
        return this.f1374b.get(this.f1374b.size() - 1).a();
    }

    @Override // android.support.v7.view.menu.m
    public void b(int i) {
        this.r = true;
        this.t = i;
    }

    @Override // android.support.v7.view.menu.m
    public void c(int i) {
        this.s = true;
        this.u = i;
    }

    @Override // android.support.v7.view.menu.m
    public void c(boolean z) {
        this.w = z;
    }

    @Override // android.support.v7.view.menu.m
    protected boolean a() {
        return false;
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MenuPopupWindow f1384a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final h f1385b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f1386c;

        public a(MenuPopupWindow menuPopupWindow, h hVar, int i) {
            this.f1384a = menuPopupWindow;
            this.f1385b = hVar;
            this.f1386c = i;
        }

        public ListView a() {
            return this.f1384a.getListView();
        }
    }
}
