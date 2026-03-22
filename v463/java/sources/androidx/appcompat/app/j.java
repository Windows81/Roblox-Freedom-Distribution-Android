package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.a;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.o;
import androidx.appcompat.widget.DecorToolbar;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ToolbarWidgetWrapper;
import androidx.core.h.r;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class j extends androidx.appcompat.app.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    DecorToolbar f673a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f674b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Window.Callback f675c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f676d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f677e;
    private ArrayList<a.b> f = new ArrayList<>();
    private final Runnable g = new Runnable() { // from class: androidx.appcompat.app.j.1
        @Override // java.lang.Runnable
        public void run() {
            j.this.i();
        }
    };
    private final Toolbar.OnMenuItemClickListener h = new Toolbar.OnMenuItemClickListener() { // from class: androidx.appcompat.app.j.2
        @Override // androidx.appcompat.widget.Toolbar.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return j.this.f675c.onMenuItemSelected(0, menuItem);
        }
    };

    @Override // androidx.appcompat.app.a
    public void d(boolean z) {
    }

    @Override // androidx.appcompat.app.a
    public void f(boolean z) {
    }

    @Override // androidx.appcompat.app.a
    public void g(boolean z) {
    }

    j(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        this.f673a = new ToolbarWidgetWrapper(toolbar, false);
        c cVar = new c(callback);
        this.f675c = cVar;
        this.f673a.setWindowCallback(cVar);
        toolbar.setOnMenuItemClickListener(this.h);
        this.f673a.setWindowTitle(charSequence);
    }

    public Window.Callback h() {
        return this.f675c;
    }

    @Override // androidx.appcompat.app.a
    public void a(float f) {
        r.a(this.f673a.getViewGroup(), f);
    }

    @Override // androidx.appcompat.app.a
    public Context b() {
        return this.f673a.getContext();
    }

    @Override // androidx.appcompat.app.a
    public void b(int i) {
        this.f673a.setNavigationIcon(i);
    }

    @Override // androidx.appcompat.app.a
    public void a(Configuration configuration) {
        super.a(configuration);
    }

    @Override // androidx.appcompat.app.a
    public void a(CharSequence charSequence) {
        this.f673a.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void a(int i) {
        DecorToolbar decorToolbar = this.f673a;
        decorToolbar.setTitle(i != 0 ? decorToolbar.getContext().getText(i) : null);
    }

    @Override // androidx.appcompat.app.a
    public void b(CharSequence charSequence) {
        this.f673a.setWindowTitle(charSequence);
    }

    public void a(int i, int i2) {
        this.f673a.setDisplayOptions((i & i2) | ((i2 ^ (-1)) & this.f673a.getDisplayOptions()));
    }

    @Override // androidx.appcompat.app.a
    public void a(boolean z) {
        a(z ? 1 : 0, 1);
    }

    @Override // androidx.appcompat.app.a
    public void b(boolean z) {
        a(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.a
    public void c(boolean z) {
        a(z ? 8 : 0, 8);
    }

    @Override // androidx.appcompat.app.a
    public int a() {
        return this.f673a.getDisplayOptions();
    }

    @Override // androidx.appcompat.app.a
    public boolean c() {
        return this.f673a.showOverflowMenu();
    }

    @Override // androidx.appcompat.app.a
    public boolean d() {
        return this.f673a.hideOverflowMenu();
    }

    @Override // androidx.appcompat.app.a
    public boolean e() {
        this.f673a.getViewGroup().removeCallbacks(this.g);
        r.a(this.f673a.getViewGroup(), this.g);
        return true;
    }

    @Override // androidx.appcompat.app.a
    public boolean f() {
        if (!this.f673a.hasExpandedActionView()) {
            return false;
        }
        this.f673a.collapseActionView();
        return true;
    }

    void i() {
        Menu menuJ = j();
        androidx.appcompat.view.menu.h hVar = menuJ instanceof androidx.appcompat.view.menu.h ? (androidx.appcompat.view.menu.h) menuJ : null;
        if (hVar != null) {
            hVar.h();
        }
        try {
            menuJ.clear();
            if (!this.f675c.onCreatePanelMenu(0, menuJ) || !this.f675c.onPreparePanel(0, null, menuJ)) {
                menuJ.clear();
            }
        } finally {
            if (hVar != null) {
                hVar.i();
            }
        }
    }

    @Override // androidx.appcompat.app.a
    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            c();
        }
        return true;
    }

    @Override // androidx.appcompat.app.a
    public boolean a(int i, KeyEvent keyEvent) {
        Menu menuJ = j();
        if (menuJ == null) {
            return false;
        }
        menuJ.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuJ.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.a
    void g() {
        this.f673a.getViewGroup().removeCallbacks(this.g);
    }

    @Override // androidx.appcompat.app.a
    public void h(boolean z) {
        if (z == this.f677e) {
            return;
        }
        this.f677e = z;
        int size = this.f.size();
        for (int i = 0; i < size; i++) {
            this.f.get(i).a(z);
        }
    }

    private class c extends androidx.appcompat.view.i {
        public c(Window.Callback callback) {
            super(callback);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            boolean zOnPreparePanel = super.onPreparePanel(i, view, menu);
            if (zOnPreparePanel && !j.this.f674b) {
                j.this.f673a.setMenuPrepared();
                j.this.f674b = true;
            }
            return zOnPreparePanel;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public View onCreatePanelView(int i) {
            if (i == 0) {
                return new View(j.this.f673a.getContext());
            }
            return super.onCreatePanelView(i);
        }
    }

    private Menu j() {
        if (!this.f676d) {
            this.f673a.setMenuCallbacks(new a(), new b());
            this.f676d = true;
        }
        return this.f673a.getMenu();
    }

    private final class a implements o.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f681b;

        a() {
        }

        @Override // androidx.appcompat.view.menu.o.a
        public boolean a(androidx.appcompat.view.menu.h hVar) {
            if (j.this.f675c == null) {
                return false;
            }
            j.this.f675c.onMenuOpened(108, hVar);
            return true;
        }

        @Override // androidx.appcompat.view.menu.o.a
        public void a(androidx.appcompat.view.menu.h hVar, boolean z) {
            if (this.f681b) {
                return;
            }
            this.f681b = true;
            j.this.f673a.dismissPopupMenus();
            if (j.this.f675c != null) {
                j.this.f675c.onPanelClosed(108, hVar);
            }
            this.f681b = false;
        }
    }

    private final class b implements h.a {
        @Override // androidx.appcompat.view.menu.h.a
        public boolean a(androidx.appcompat.view.menu.h hVar, MenuItem menuItem) {
            return false;
        }

        b() {
        }

        @Override // androidx.appcompat.view.menu.h.a
        public void a(androidx.appcompat.view.menu.h hVar) {
            if (j.this.f675c != null) {
                if (j.this.f673a.isOverflowMenuShowing()) {
                    j.this.f675c.onPanelClosed(108, hVar);
                } else if (j.this.f675c.onPreparePanel(0, null, hVar)) {
                    j.this.f675c.onMenuOpened(108, hVar);
                }
            }
        }
    }
}
