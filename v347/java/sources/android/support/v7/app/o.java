package android.support.v7.app;

import android.content.Context;
import android.content.res.Configuration;
import android.support.v4.view.s;
import android.support.v7.app.a;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.o;
import android.support.v7.widget.DecorToolbar;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.ToolbarWidgetWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class o extends android.support.v7.app.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    DecorToolbar f1274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f1275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Window.Callback f1276c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1277d;
    private boolean e;
    private ArrayList<a.b> f = new ArrayList<>();
    private final Runnable g = new Runnable() { // from class: android.support.v7.app.o.1
        @Override // java.lang.Runnable
        public void run() {
            o.this.i();
        }
    };
    private final Toolbar.OnMenuItemClickListener h = new Toolbar.OnMenuItemClickListener() { // from class: android.support.v7.app.o.2
        @Override // android.support.v7.widget.Toolbar.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return o.this.f1276c.onMenuItemSelected(0, menuItem);
        }
    };

    o(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        this.f1274a = new ToolbarWidgetWrapper(toolbar, false);
        this.f1276c = new c(callback);
        this.f1274a.setWindowCallback(this.f1276c);
        toolbar.setOnMenuItemClickListener(this.h);
        this.f1274a.setWindowTitle(charSequence);
    }

    public Window.Callback h() {
        return this.f1276c;
    }

    @Override // android.support.v7.app.a
    public void c(boolean z) {
    }

    @Override // android.support.v7.app.a
    public void a(float f) {
        s.a(this.f1274a.getViewGroup(), f);
    }

    @Override // android.support.v7.app.a
    public Context b() {
        return this.f1274a.getContext();
    }

    @Override // android.support.v7.app.a
    public void e(boolean z) {
    }

    @Override // android.support.v7.app.a
    public void f(boolean z) {
    }

    @Override // android.support.v7.app.a
    public void a(Configuration configuration) {
        super.a(configuration);
    }

    @Override // android.support.v7.app.a
    public void a(int i) {
        this.f1274a.setTitle(i != 0 ? this.f1274a.getContext().getText(i) : null);
    }

    @Override // android.support.v7.app.a
    public void a(CharSequence charSequence) {
        this.f1274a.setWindowTitle(charSequence);
    }

    public void a(int i, int i2) {
        this.f1274a.setDisplayOptions((this.f1274a.getDisplayOptions() & (i2 ^ (-1))) | (i & i2));
    }

    @Override // android.support.v7.app.a
    public void a(boolean z) {
        a(z ? 1 : 0, 1);
    }

    @Override // android.support.v7.app.a
    public void b(boolean z) {
        a(z ? 4 : 0, 4);
    }

    @Override // android.support.v7.app.a
    public int a() {
        return this.f1274a.getDisplayOptions();
    }

    @Override // android.support.v7.app.a
    public boolean c() {
        return this.f1274a.showOverflowMenu();
    }

    @Override // android.support.v7.app.a
    public boolean d() {
        return this.f1274a.hideOverflowMenu();
    }

    @Override // android.support.v7.app.a
    public boolean e() {
        this.f1274a.getViewGroup().removeCallbacks(this.g);
        s.a(this.f1274a.getViewGroup(), this.g);
        return true;
    }

    @Override // android.support.v7.app.a
    public boolean f() {
        if (!this.f1274a.hasExpandedActionView()) {
            return false;
        }
        this.f1274a.collapseActionView();
        return true;
    }

    void i() {
        Menu menuJ = j();
        android.support.v7.view.menu.h hVar = menuJ instanceof android.support.v7.view.menu.h ? (android.support.v7.view.menu.h) menuJ : null;
        if (hVar != null) {
            hVar.g();
        }
        try {
            menuJ.clear();
            if (!this.f1276c.onCreatePanelMenu(0, menuJ) || !this.f1276c.onPreparePanel(0, null, menuJ)) {
                menuJ.clear();
            }
        } finally {
            if (hVar != null) {
                hVar.h();
            }
        }
    }

    @Override // android.support.v7.app.a
    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            c();
        }
        return true;
    }

    @Override // android.support.v7.app.a
    public boolean a(int i, KeyEvent keyEvent) {
        Menu menuJ = j();
        if (menuJ == null) {
            return false;
        }
        menuJ.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuJ.performShortcut(i, keyEvent, 0);
    }

    @Override // android.support.v7.app.a
    void g() {
        this.f1274a.getViewGroup().removeCallbacks(this.g);
    }

    @Override // android.support.v7.app.a
    public void g(boolean z) {
        if (z != this.e) {
            this.e = z;
            int size = this.f.size();
            for (int i = 0; i < size; i++) {
                this.f.get(i).a(z);
            }
        }
    }

    private class c extends android.support.v7.view.i {
        public c(Window.Callback callback) {
            super(callback);
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            boolean zOnPreparePanel = super.onPreparePanel(i, view, menu);
            if (zOnPreparePanel && !o.this.f1275b) {
                o.this.f1274a.setMenuPrepared();
                o.this.f1275b = true;
            }
            return zOnPreparePanel;
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public View onCreatePanelView(int i) {
            return i == 0 ? new View(o.this.f1274a.getContext()) : super.onCreatePanelView(i);
        }
    }

    private Menu j() {
        if (!this.f1277d) {
            this.f1274a.setMenuCallbacks(new a(), new b());
            this.f1277d = true;
        }
        return this.f1274a.getMenu();
    }

    private final class a implements o.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f1281b;

        a() {
        }

        @Override // android.support.v7.view.menu.o.a
        public boolean a(android.support.v7.view.menu.h hVar) {
            if (o.this.f1276c == null) {
                return false;
            }
            o.this.f1276c.onMenuOpened(108, hVar);
            return true;
        }

        @Override // android.support.v7.view.menu.o.a
        public void a(android.support.v7.view.menu.h hVar, boolean z) {
            if (!this.f1281b) {
                this.f1281b = true;
                o.this.f1274a.dismissPopupMenus();
                if (o.this.f1276c != null) {
                    o.this.f1276c.onPanelClosed(108, hVar);
                }
                this.f1281b = false;
            }
        }
    }

    private final class b implements h.a {
        b() {
        }

        @Override // android.support.v7.view.menu.h.a
        public boolean a(android.support.v7.view.menu.h hVar, MenuItem menuItem) {
            return false;
        }

        @Override // android.support.v7.view.menu.h.a
        public void a(android.support.v7.view.menu.h hVar) {
            if (o.this.f1276c != null) {
                if (o.this.f1274a.isOverflowMenuShowing()) {
                    o.this.f1276c.onPanelClosed(108, hVar);
                } else if (o.this.f1276c.onPreparePanel(0, null, hVar)) {
                    o.this.f1276c.onMenuOpened(108, hVar);
                }
            }
        }
    }
}
