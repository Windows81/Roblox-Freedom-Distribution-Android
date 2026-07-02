package android.support.v7.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.support.v4.view.s;
import android.support.v4.view.w;
import android.support.v4.view.x;
import android.support.v4.view.y;
import android.support.v4.view.z;
import android.support.v7.a.a;
import android.support.v7.app.a;
import android.support.v7.view.b;
import android.support.v7.view.menu.h;
import android.support.v7.widget.ActionBarContainer;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ActionBarOverlayLayout;
import android.support.v7.widget.DecorToolbar;
import android.support.v7.widget.ScrollingTabContainerView;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class r extends android.support.v7.app.a implements ActionBarOverlayLayout.ActionBarVisibilityCallback {
    static final /* synthetic */ boolean s;
    private static final Interpolator t;
    private static final Interpolator u;
    private boolean A;
    private boolean B;
    private boolean D;
    private boolean F;
    private boolean H;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f1296a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ActionBarOverlayLayout f1297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ActionBarContainer f1298c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    DecorToolbar f1299d;
    ActionBarContextView e;
    View f;
    ScrollingTabContainerView g;
    a h;
    android.support.v7.view.b i;
    b.a j;
    boolean l;
    boolean m;
    android.support.v7.view.h n;
    boolean o;
    private Context v;
    private Activity w;
    private Dialog x;
    private ArrayList<Object> y = new ArrayList<>();
    private int z = -1;
    private ArrayList<a.b> C = new ArrayList<>();
    private int E = 0;
    boolean k = true;
    private boolean G = true;
    final x p = new y() { // from class: android.support.v7.app.r.1
        @Override // android.support.v4.view.y, android.support.v4.view.x
        public void onAnimationEnd(View view) {
            if (r.this.k && r.this.f != null) {
                r.this.f.setTranslationY(0.0f);
                r.this.f1298c.setTranslationY(0.0f);
            }
            r.this.f1298c.setVisibility(8);
            r.this.f1298c.setTransitioning(false);
            r.this.n = null;
            r.this.h();
            if (r.this.f1297b != null) {
                s.n(r.this.f1297b);
            }
        }
    };
    final x q = new y() { // from class: android.support.v7.app.r.2
        @Override // android.support.v4.view.y, android.support.v4.view.x
        public void onAnimationEnd(View view) {
            r.this.n = null;
            r.this.f1298c.requestLayout();
        }
    };
    final z r = new z() { // from class: android.support.v7.app.r.3
        @Override // android.support.v4.view.z
        public void a(View view) {
            ((View) r.this.f1298c.getParent()).invalidate();
        }
    };

    static {
        s = !r.class.desiredAssertionStatus();
        t = new AccelerateInterpolator();
        u = new DecelerateInterpolator();
    }

    public r(Activity activity, boolean z) {
        this.w = activity;
        View decorView = activity.getWindow().getDecorView();
        a(decorView);
        if (!z) {
            this.f = decorView.findViewById(R.id.content);
        }
    }

    public r(Dialog dialog) {
        this.x = dialog;
        a(dialog.getWindow().getDecorView());
    }

    private void a(View view) {
        this.f1297b = (ActionBarOverlayLayout) view.findViewById(a.f.decor_content_parent);
        if (this.f1297b != null) {
            this.f1297b.setActionBarVisibilityCallback(this);
        }
        this.f1299d = b(view.findViewById(a.f.action_bar));
        this.e = (ActionBarContextView) view.findViewById(a.f.action_context_bar);
        this.f1298c = (ActionBarContainer) view.findViewById(a.f.action_bar_container);
        if (this.f1299d == null || this.e == null || this.f1298c == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f1296a = this.f1299d.getContext();
        boolean z = (this.f1299d.getDisplayOptions() & 4) != 0;
        if (z) {
            this.A = true;
        }
        android.support.v7.view.a aVarA = android.support.v7.view.a.a(this.f1296a);
        c(aVarA.f() || z);
        k(aVarA.d());
        TypedArray typedArrayObtainStyledAttributes = this.f1296a.obtainStyledAttributes(null, a.j.ActionBar, a.C0032a.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(a.j.ActionBar_hideOnContentScroll, false)) {
            d(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            a(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DecorToolbar b(View view) {
        if (view instanceof DecorToolbar) {
            return (DecorToolbar) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException(new StringBuilder().append("Can't make a decor toolbar out of ").append(view).toString() != null ? view.getClass().getSimpleName() : "null");
    }

    @Override // android.support.v7.app.a
    public void a(float f) {
        s.a(this.f1298c, f);
    }

    @Override // android.support.v7.app.a
    public void a(Configuration configuration) {
        k(android.support.v7.view.a.a(this.f1296a).d());
    }

    private void k(boolean z) {
        this.D = z;
        if (!this.D) {
            this.f1299d.setEmbeddedTabView(null);
            this.f1298c.setTabContainer(this.g);
        } else {
            this.f1298c.setTabContainer(null);
            this.f1299d.setEmbeddedTabView(this.g);
        }
        boolean z2 = i() == 2;
        if (this.g != null) {
            if (z2) {
                this.g.setVisibility(0);
                if (this.f1297b != null) {
                    s.n(this.f1297b);
                }
            } else {
                this.g.setVisibility(8);
            }
        }
        this.f1299d.setCollapsible(!this.D && z2);
        this.f1297b.setHasNonEmbeddedTabs(!this.D && z2);
    }

    void h() {
        if (this.j != null) {
            this.j.a(this.i);
            this.i = null;
            this.j = null;
        }
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onWindowVisibilityChanged(int i) {
        this.E = i;
    }

    @Override // android.support.v7.app.a
    public void f(boolean z) {
        this.H = z;
        if (!z && this.n != null) {
            this.n.c();
        }
    }

    @Override // android.support.v7.app.a
    public void g(boolean z) {
        if (z != this.B) {
            this.B = z;
            int size = this.C.size();
            for (int i = 0; i < size; i++) {
                this.C.get(i).a(z);
            }
        }
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
    public void c(boolean z) {
        this.f1299d.setHomeButtonEnabled(z);
    }

    @Override // android.support.v7.app.a
    public void a(int i) {
        b(this.f1296a.getString(i));
    }

    public void b(CharSequence charSequence) {
        this.f1299d.setTitle(charSequence);
    }

    @Override // android.support.v7.app.a
    public void a(CharSequence charSequence) {
        this.f1299d.setWindowTitle(charSequence);
    }

    public void a(int i, int i2) {
        int displayOptions = this.f1299d.getDisplayOptions();
        if ((i2 & 4) != 0) {
            this.A = true;
        }
        this.f1299d.setDisplayOptions((displayOptions & (i2 ^ (-1))) | (i & i2));
    }

    public int i() {
        return this.f1299d.getNavigationMode();
    }

    @Override // android.support.v7.app.a
    public int a() {
        return this.f1299d.getDisplayOptions();
    }

    @Override // android.support.v7.app.a
    public android.support.v7.view.b a(b.a aVar) {
        if (this.h != null) {
            this.h.c();
        }
        this.f1297b.setHideOnContentScrollEnabled(false);
        this.e.killMode();
        a aVar2 = new a(this.e.getContext(), aVar);
        if (!aVar2.e()) {
            return null;
        }
        this.h = aVar2;
        aVar2.d();
        this.e.initForMode(aVar2);
        j(true);
        this.e.sendAccessibilityEvent(32);
        return aVar2;
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void enableContentAnimations(boolean z) {
        this.k = z;
    }

    private void j() {
        if (!this.F) {
            this.F = true;
            if (this.f1297b != null) {
                this.f1297b.setShowingForActionMode(true);
            }
            l(false);
        }
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void showForSystem() {
        if (this.m) {
            this.m = false;
            l(true);
        }
    }

    private void k() {
        if (this.F) {
            this.F = false;
            if (this.f1297b != null) {
                this.f1297b.setShowingForActionMode(false);
            }
            l(false);
        }
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void hideForSystem() {
        if (!this.m) {
            this.m = true;
            l(true);
        }
    }

    @Override // android.support.v7.app.a
    public void d(boolean z) {
        if (z && !this.f1297b.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.o = z;
        this.f1297b.setHideOnContentScrollEnabled(z);
    }

    static boolean a(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return (z || z2) ? false : true;
    }

    private void l(boolean z) {
        if (a(this.l, this.m, this.F)) {
            if (!this.G) {
                this.G = true;
                h(z);
                return;
            }
            return;
        }
        if (this.G) {
            this.G = false;
            i(z);
        }
    }

    public void h(boolean z) {
        if (this.n != null) {
            this.n.c();
        }
        this.f1298c.setVisibility(0);
        if (this.E == 0 && (this.H || z)) {
            this.f1298c.setTranslationY(0.0f);
            float f = -this.f1298c.getHeight();
            if (z) {
                this.f1298c.getLocationInWindow(new int[]{0, 0});
                f -= r1[1];
            }
            this.f1298c.setTranslationY(f);
            android.support.v7.view.h hVar = new android.support.v7.view.h();
            w wVarB = s.j(this.f1298c).b(0.0f);
            wVarB.a(this.r);
            hVar.a(wVarB);
            if (this.k && this.f != null) {
                this.f.setTranslationY(f);
                hVar.a(s.j(this.f).b(0.0f));
            }
            hVar.a(u);
            hVar.a(250L);
            hVar.a(this.q);
            this.n = hVar;
            hVar.a();
        } else {
            this.f1298c.setAlpha(1.0f);
            this.f1298c.setTranslationY(0.0f);
            if (this.k && this.f != null) {
                this.f.setTranslationY(0.0f);
            }
            this.q.onAnimationEnd(null);
        }
        if (this.f1297b != null) {
            s.n(this.f1297b);
        }
    }

    public void i(boolean z) {
        if (this.n != null) {
            this.n.c();
        }
        if (this.E == 0 && (this.H || z)) {
            this.f1298c.setAlpha(1.0f);
            this.f1298c.setTransitioning(true);
            android.support.v7.view.h hVar = new android.support.v7.view.h();
            float f = -this.f1298c.getHeight();
            if (z) {
                this.f1298c.getLocationInWindow(new int[]{0, 0});
                f -= r2[1];
            }
            w wVarB = s.j(this.f1298c).b(f);
            wVarB.a(this.r);
            hVar.a(wVarB);
            if (this.k && this.f != null) {
                hVar.a(s.j(this.f).b(f));
            }
            hVar.a(t);
            hVar.a(250L);
            hVar.a(this.p);
            this.n = hVar;
            hVar.a();
            return;
        }
        this.p.onAnimationEnd(null);
    }

    public void j(boolean z) {
        w wVar;
        w wVar2;
        if (z) {
            j();
        } else {
            k();
        }
        if (l()) {
            if (z) {
                wVar2 = this.f1299d.setupAnimatorToVisibility(4, 100L);
                wVar = this.e.setupAnimatorToVisibility(0, 200L);
            } else {
                wVar = this.f1299d.setupAnimatorToVisibility(0, 200L);
                wVar2 = this.e.setupAnimatorToVisibility(8, 100L);
            }
            android.support.v7.view.h hVar = new android.support.v7.view.h();
            hVar.a(wVar2, wVar);
            hVar.a();
            return;
        }
        if (z) {
            this.f1299d.setVisibility(4);
            this.e.setVisibility(0);
        } else {
            this.f1299d.setVisibility(0);
            this.e.setVisibility(8);
        }
    }

    private boolean l() {
        return s.v(this.f1298c);
    }

    @Override // android.support.v7.app.a
    public Context b() {
        if (this.v == null) {
            TypedValue typedValue = new TypedValue();
            this.f1296a.getTheme().resolveAttribute(a.C0032a.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.v = new ContextThemeWrapper(this.f1296a, i);
            } else {
                this.v = this.f1296a;
            }
        }
        return this.v;
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onContentScrollStarted() {
        if (this.n != null) {
            this.n.c();
            this.n = null;
        }
    }

    @Override // android.support.v7.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onContentScrollStopped() {
    }

    @Override // android.support.v7.app.a
    public boolean f() {
        if (this.f1299d == null || !this.f1299d.hasExpandedActionView()) {
            return false;
        }
        this.f1299d.collapseActionView();
        return true;
    }

    public class a extends android.support.v7.view.b implements h.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Context f1304b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final android.support.v7.view.menu.h f1305c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private b.a f1306d;
        private WeakReference<View> e;

        public a(Context context, b.a aVar) {
            this.f1304b = context;
            this.f1306d = aVar;
            this.f1305c = new android.support.v7.view.menu.h(context).a(1);
            this.f1305c.a(this);
        }

        @Override // android.support.v7.view.b
        public MenuInflater a() {
            return new android.support.v7.view.g(this.f1304b);
        }

        @Override // android.support.v7.view.b
        public Menu b() {
            return this.f1305c;
        }

        @Override // android.support.v7.view.b
        public void c() {
            if (r.this.h == this) {
                if (!r.a(r.this.l, r.this.m, false)) {
                    r.this.i = this;
                    r.this.j = this.f1306d;
                } else {
                    this.f1306d.a(this);
                }
                this.f1306d = null;
                r.this.j(false);
                r.this.e.closeMode();
                r.this.f1299d.getViewGroup().sendAccessibilityEvent(32);
                r.this.f1297b.setHideOnContentScrollEnabled(r.this.o);
                r.this.h = null;
            }
        }

        @Override // android.support.v7.view.b
        public void d() {
            if (r.this.h == this) {
                this.f1305c.g();
                try {
                    this.f1306d.b(this, this.f1305c);
                } finally {
                    this.f1305c.h();
                }
            }
        }

        public boolean e() {
            this.f1305c.g();
            try {
                return this.f1306d.a(this, this.f1305c);
            } finally {
                this.f1305c.h();
            }
        }

        @Override // android.support.v7.view.b
        public void a(View view) {
            r.this.e.setCustomView(view);
            this.e = new WeakReference<>(view);
        }

        @Override // android.support.v7.view.b
        public void a(CharSequence charSequence) {
            r.this.e.setSubtitle(charSequence);
        }

        @Override // android.support.v7.view.b
        public void b(CharSequence charSequence) {
            r.this.e.setTitle(charSequence);
        }

        @Override // android.support.v7.view.b
        public void a(int i) {
            b(r.this.f1296a.getResources().getString(i));
        }

        @Override // android.support.v7.view.b
        public void b(int i) {
            a((CharSequence) r.this.f1296a.getResources().getString(i));
        }

        @Override // android.support.v7.view.b
        public CharSequence f() {
            return r.this.e.getTitle();
        }

        @Override // android.support.v7.view.b
        public CharSequence g() {
            return r.this.e.getSubtitle();
        }

        @Override // android.support.v7.view.b
        public void a(boolean z) {
            super.a(z);
            r.this.e.setTitleOptional(z);
        }

        @Override // android.support.v7.view.b
        public boolean h() {
            return r.this.e.isTitleOptional();
        }

        @Override // android.support.v7.view.b
        public View i() {
            if (this.e != null) {
                return this.e.get();
            }
            return null;
        }

        @Override // android.support.v7.view.menu.h.a
        public boolean a(android.support.v7.view.menu.h hVar, MenuItem menuItem) {
            if (this.f1306d != null) {
                return this.f1306d.a(this, menuItem);
            }
            return false;
        }

        @Override // android.support.v7.view.menu.h.a
        public void a(android.support.v7.view.menu.h hVar) {
            if (this.f1306d != null) {
                d();
                r.this.e.showOverflowMenu();
            }
        }
    }

    @Override // android.support.v7.app.a
    public void e(boolean z) {
        if (!this.A) {
            b(z);
        }
    }

    @Override // android.support.v7.app.a
    public boolean a(int i, KeyEvent keyEvent) {
        Menu menuB;
        if (this.h == null || (menuB = this.h.b()) == null) {
            return false;
        }
        menuB.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuB.performShortcut(i, keyEvent, 0);
    }
}
