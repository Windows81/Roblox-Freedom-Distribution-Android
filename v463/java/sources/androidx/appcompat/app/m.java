package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
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
import androidx.appcompat.a;
import androidx.appcompat.app.a;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.DecorToolbar;
import androidx.appcompat.widget.ScrollingTabContainerView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.h.r;
import androidx.core.h.v;
import androidx.core.h.w;
import androidx.core.h.x;
import androidx.core.h.y;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class m extends androidx.appcompat.app.a implements ActionBarOverlayLayout.ActionBarVisibilityCallback {
    static final /* synthetic */ boolean s = !m.class.desiredAssertionStatus();
    private static final Interpolator t = new AccelerateInterpolator();
    private static final Interpolator u = new DecelerateInterpolator();
    private boolean A;
    private boolean B;
    private boolean D;
    private boolean F;
    private boolean H;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f697a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ActionBarOverlayLayout f698b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ActionBarContainer f699c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    DecorToolbar f700d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ActionBarContextView f701e;
    View f;
    ScrollingTabContainerView g;
    a h;
    androidx.appcompat.view.b i;
    b.a j;
    boolean l;
    boolean m;
    androidx.appcompat.view.h n;
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
    final w p = new x() { // from class: androidx.appcompat.app.m.1
        @Override // androidx.core.h.x, androidx.core.h.w
        public void onAnimationEnd(View view) {
            if (m.this.k && m.this.f != null) {
                m.this.f.setTranslationY(0.0f);
                m.this.f699c.setTranslationY(0.0f);
            }
            m.this.f699c.setVisibility(8);
            m.this.f699c.setTransitioning(false);
            m.this.n = null;
            m.this.h();
            if (m.this.f698b != null) {
                r.o(m.this.f698b);
            }
        }
    };
    final w q = new x() { // from class: androidx.appcompat.app.m.2
        @Override // androidx.core.h.x, androidx.core.h.w
        public void onAnimationEnd(View view) {
            m.this.n = null;
            m.this.f699c.requestLayout();
        }
    };
    final y r = new y() { // from class: androidx.appcompat.app.m.3
        @Override // androidx.core.h.y
        public void a(View view) {
            ((View) m.this.f699c.getParent()).invalidate();
        }
    };

    static boolean a(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return (z || z2) ? false : true;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onContentScrollStopped() {
    }

    public m(Activity activity, boolean z) {
        this.w = activity;
        View decorView = activity.getWindow().getDecorView();
        a(decorView);
        if (z) {
            return;
        }
        this.f = decorView.findViewById(R.id.content);
    }

    public m(Dialog dialog) {
        this.x = dialog;
        a(dialog.getWindow().getDecorView());
    }

    private void a(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(a.f.decor_content_parent);
        this.f698b = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f700d = b(view.findViewById(a.f.action_bar));
        this.f701e = (ActionBarContextView) view.findViewById(a.f.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(a.f.action_bar_container);
        this.f699c = actionBarContainer;
        DecorToolbar decorToolbar = this.f700d;
        if (decorToolbar == null || this.f701e == null || actionBarContainer == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f697a = decorToolbar.getContext();
        boolean z = (this.f700d.getDisplayOptions() & 4) != 0;
        if (z) {
            this.A = true;
        }
        androidx.appcompat.view.a aVarA = androidx.appcompat.view.a.a(this.f697a);
        d(aVarA.f() || z);
        l(aVarA.d());
        TypedArray typedArrayObtainStyledAttributes = this.f697a.obtainStyledAttributes(null, a.j.ActionBar, a.C0012a.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(a.j.ActionBar_hideOnContentScroll, false)) {
            e(true);
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
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != 0 ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    @Override // androidx.appcompat.app.a
    public void a(float f) {
        r.a(this.f699c, f);
    }

    @Override // androidx.appcompat.app.a
    public void a(Configuration configuration) {
        l(androidx.appcompat.view.a.a(this.f697a).d());
    }

    private void l(boolean z) {
        this.D = z;
        if (!z) {
            this.f700d.setEmbeddedTabView(null);
            this.f699c.setTabContainer(this.g);
        } else {
            this.f699c.setTabContainer(null);
            this.f700d.setEmbeddedTabView(this.g);
        }
        boolean z2 = i() == 2;
        ScrollingTabContainerView scrollingTabContainerView = this.g;
        if (scrollingTabContainerView != null) {
            if (z2) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f698b;
                if (actionBarOverlayLayout != null) {
                    r.o(actionBarOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
        }
        this.f700d.setCollapsible(!this.D && z2);
        this.f698b.setHasNonEmbeddedTabs(!this.D && z2);
    }

    void h() {
        b.a aVar = this.j;
        if (aVar != null) {
            aVar.a(this.i);
            this.i = null;
            this.j = null;
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onWindowVisibilityChanged(int i) {
        this.E = i;
    }

    @Override // androidx.appcompat.app.a
    public void g(boolean z) {
        androidx.appcompat.view.h hVar;
        this.H = z;
        if (z || (hVar = this.n) == null) {
            return;
        }
        hVar.c();
    }

    @Override // androidx.appcompat.app.a
    public void h(boolean z) {
        if (z == this.B) {
            return;
        }
        this.B = z;
        int size = this.C.size();
        for (int i = 0; i < size; i++) {
            this.C.get(i).a(z);
        }
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
    public void d(boolean z) {
        this.f700d.setHomeButtonEnabled(z);
    }

    @Override // androidx.appcompat.app.a
    public void a(int i) {
        a(this.f697a.getString(i));
    }

    @Override // androidx.appcompat.app.a
    public void a(CharSequence charSequence) {
        this.f700d.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void b(CharSequence charSequence) {
        this.f700d.setWindowTitle(charSequence);
    }

    public void a(int i, int i2) {
        int displayOptions = this.f700d.getDisplayOptions();
        if ((i2 & 4) != 0) {
            this.A = true;
        }
        this.f700d.setDisplayOptions((i & i2) | ((i2 ^ (-1)) & displayOptions));
    }

    public int i() {
        return this.f700d.getNavigationMode();
    }

    @Override // androidx.appcompat.app.a
    public int a() {
        return this.f700d.getDisplayOptions();
    }

    @Override // androidx.appcompat.app.a
    public androidx.appcompat.view.b a(b.a aVar) {
        a aVar2 = this.h;
        if (aVar2 != null) {
            aVar2.c();
        }
        this.f698b.setHideOnContentScrollEnabled(false);
        this.f701e.killMode();
        a aVar3 = new a(this.f701e.getContext(), aVar);
        if (!aVar3.e()) {
            return null;
        }
        this.h = aVar3;
        aVar3.d();
        this.f701e.initForMode(aVar3);
        k(true);
        this.f701e.sendAccessibilityEvent(32);
        return aVar3;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void enableContentAnimations(boolean z) {
        this.k = z;
    }

    private void j() {
        if (this.F) {
            return;
        }
        this.F = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.f698b;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        m(false);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void showForSystem() {
        if (this.m) {
            this.m = false;
            m(true);
        }
    }

    private void k() {
        if (this.F) {
            this.F = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f698b;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            m(false);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void hideForSystem() {
        if (this.m) {
            return;
        }
        this.m = true;
        m(true);
    }

    @Override // androidx.appcompat.app.a
    public void e(boolean z) {
        if (z && !this.f698b.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.o = z;
        this.f698b.setHideOnContentScrollEnabled(z);
    }

    private void m(boolean z) {
        if (a(this.l, this.m, this.F)) {
            if (this.G) {
                return;
            }
            this.G = true;
            i(z);
            return;
        }
        if (this.G) {
            this.G = false;
            j(z);
        }
    }

    public void i(boolean z) {
        View view;
        View view2;
        androidx.appcompat.view.h hVar = this.n;
        if (hVar != null) {
            hVar.c();
        }
        this.f699c.setVisibility(0);
        if (this.E == 0 && (this.H || z)) {
            this.f699c.setTranslationY(0.0f);
            float f = -this.f699c.getHeight();
            if (z) {
                this.f699c.getLocationInWindow(new int[]{0, 0});
                f -= r5[1];
            }
            this.f699c.setTranslationY(f);
            androidx.appcompat.view.h hVar2 = new androidx.appcompat.view.h();
            v vVarB = r.k(this.f699c).b(0.0f);
            vVarB.a(this.r);
            hVar2.a(vVarB);
            if (this.k && (view2 = this.f) != null) {
                view2.setTranslationY(f);
                hVar2.a(r.k(this.f).b(0.0f));
            }
            hVar2.a(u);
            hVar2.a(250L);
            hVar2.a(this.q);
            this.n = hVar2;
            hVar2.a();
        } else {
            this.f699c.setAlpha(1.0f);
            this.f699c.setTranslationY(0.0f);
            if (this.k && (view = this.f) != null) {
                view.setTranslationY(0.0f);
            }
            this.q.onAnimationEnd(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f698b;
        if (actionBarOverlayLayout != null) {
            r.o(actionBarOverlayLayout);
        }
    }

    public void j(boolean z) {
        View view;
        androidx.appcompat.view.h hVar = this.n;
        if (hVar != null) {
            hVar.c();
        }
        if (this.E == 0 && (this.H || z)) {
            this.f699c.setAlpha(1.0f);
            this.f699c.setTransitioning(true);
            androidx.appcompat.view.h hVar2 = new androidx.appcompat.view.h();
            float f = -this.f699c.getHeight();
            if (z) {
                this.f699c.getLocationInWindow(new int[]{0, 0});
                f -= r5[1];
            }
            v vVarB = r.k(this.f699c).b(f);
            vVarB.a(this.r);
            hVar2.a(vVarB);
            if (this.k && (view = this.f) != null) {
                hVar2.a(r.k(view).b(f));
            }
            hVar2.a(t);
            hVar2.a(250L);
            hVar2.a(this.p);
            this.n = hVar2;
            hVar2.a();
            return;
        }
        this.p.onAnimationEnd(null);
    }

    public void k(boolean z) {
        v vVar;
        v vVar2;
        if (z) {
            j();
        } else {
            k();
        }
        if (!l()) {
            if (z) {
                this.f700d.setVisibility(4);
                this.f701e.setVisibility(0);
                return;
            } else {
                this.f700d.setVisibility(0);
                this.f701e.setVisibility(8);
                return;
            }
        }
        if (z) {
            vVar2 = this.f700d.setupAnimatorToVisibility(4, 100L);
            vVar = this.f701e.setupAnimatorToVisibility(0, 200L);
        } else {
            vVar = this.f700d.setupAnimatorToVisibility(0, 200L);
            vVar2 = this.f701e.setupAnimatorToVisibility(8, 100L);
        }
        androidx.appcompat.view.h hVar = new androidx.appcompat.view.h();
        hVar.a(vVar2, vVar);
        hVar.a();
    }

    private boolean l() {
        return r.w(this.f699c);
    }

    @Override // androidx.appcompat.app.a
    public Context b() {
        if (this.v == null) {
            TypedValue typedValue = new TypedValue();
            this.f697a.getTheme().resolveAttribute(a.C0012a.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.v = new ContextThemeWrapper(this.f697a, i);
            } else {
                this.v = this.f697a;
            }
        }
        return this.v;
    }

    @Override // androidx.appcompat.app.a
    public void b(int i) {
        this.f700d.setNavigationIcon(i);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onContentScrollStarted() {
        androidx.appcompat.view.h hVar = this.n;
        if (hVar != null) {
            hVar.c();
            this.n = null;
        }
    }

    @Override // androidx.appcompat.app.a
    public boolean f() {
        DecorToolbar decorToolbar = this.f700d;
        if (decorToolbar == null || !decorToolbar.hasExpandedActionView()) {
            return false;
        }
        this.f700d.collapseActionView();
        return true;
    }

    public class a extends androidx.appcompat.view.b implements h.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Context f706b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final androidx.appcompat.view.menu.h f707c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private b.a f708d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private WeakReference<View> f709e;

        public a(Context context, b.a aVar) {
            this.f706b = context;
            this.f708d = aVar;
            androidx.appcompat.view.menu.h hVarA = new androidx.appcompat.view.menu.h(context).a(1);
            this.f707c = hVarA;
            hVarA.a(this);
        }

        @Override // androidx.appcompat.view.b
        public MenuInflater a() {
            return new androidx.appcompat.view.g(this.f706b);
        }

        @Override // androidx.appcompat.view.b
        public Menu b() {
            return this.f707c;
        }

        @Override // androidx.appcompat.view.b
        public void c() {
            if (m.this.h != this) {
                return;
            }
            if (!m.a(m.this.l, m.this.m, false)) {
                m.this.i = this;
                m.this.j = this.f708d;
            } else {
                this.f708d.a(this);
            }
            this.f708d = null;
            m.this.k(false);
            m.this.f701e.closeMode();
            m.this.f700d.getViewGroup().sendAccessibilityEvent(32);
            m.this.f698b.setHideOnContentScrollEnabled(m.this.o);
            m.this.h = null;
        }

        @Override // androidx.appcompat.view.b
        public void d() {
            if (m.this.h != this) {
                return;
            }
            this.f707c.h();
            try {
                this.f708d.b(this, this.f707c);
            } finally {
                this.f707c.i();
            }
        }

        public boolean e() {
            this.f707c.h();
            try {
                return this.f708d.a(this, this.f707c);
            } finally {
                this.f707c.i();
            }
        }

        @Override // androidx.appcompat.view.b
        public void a(View view) {
            m.this.f701e.setCustomView(view);
            this.f709e = new WeakReference<>(view);
        }

        @Override // androidx.appcompat.view.b
        public void a(CharSequence charSequence) {
            m.this.f701e.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.b
        public void b(CharSequence charSequence) {
            m.this.f701e.setTitle(charSequence);
        }

        @Override // androidx.appcompat.view.b
        public void a(int i) {
            b(m.this.f697a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.b
        public void b(int i) {
            a((CharSequence) m.this.f697a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.b
        public CharSequence f() {
            return m.this.f701e.getTitle();
        }

        @Override // androidx.appcompat.view.b
        public CharSequence g() {
            return m.this.f701e.getSubtitle();
        }

        @Override // androidx.appcompat.view.b
        public void a(boolean z) {
            super.a(z);
            m.this.f701e.setTitleOptional(z);
        }

        @Override // androidx.appcompat.view.b
        public boolean h() {
            return m.this.f701e.isTitleOptional();
        }

        @Override // androidx.appcompat.view.b
        public View i() {
            WeakReference<View> weakReference = this.f709e;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // androidx.appcompat.view.menu.h.a
        public boolean a(androidx.appcompat.view.menu.h hVar, MenuItem menuItem) {
            b.a aVar = this.f708d;
            if (aVar != null) {
                return aVar.a(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.h.a
        public void a(androidx.appcompat.view.menu.h hVar) {
            if (this.f708d == null) {
                return;
            }
            d();
            m.this.f701e.showOverflowMenu();
        }
    }

    @Override // androidx.appcompat.app.a
    public void f(boolean z) {
        if (this.A) {
            return;
        }
        b(z);
    }

    @Override // androidx.appcompat.app.a
    public boolean a(int i, KeyEvent keyEvent) {
        Menu menuB;
        a aVar = this.h;
        if (aVar == null || (menuB = aVar.b()) == null) {
            return false;
        }
        menuB.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuB.performShortcut(i, keyEvent, 0);
    }
}
