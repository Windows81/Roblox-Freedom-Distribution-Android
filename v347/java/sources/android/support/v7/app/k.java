package android.support.v7.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.x;
import android.support.v4.view.aa;
import android.support.v4.view.s;
import android.support.v4.view.w;
import android.support.v4.view.y;
import android.support.v7.a.a;
import android.support.v7.view.b;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.o;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.AppCompatDrawableManager;
import android.support.v7.widget.ContentFrameLayout;
import android.support.v7.widget.DecorContentParent;
import android.support.v7.widget.FitWindowsViewGroup;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.VectorEnabledTintResources;
import android.support.v7.widget.ViewStubCompat;
import android.support.v7.widget.ViewUtils;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
class k extends f implements h.a, LayoutInflater.Factory2 {
    private static final boolean t;
    private View A;
    private boolean B;
    private boolean C;
    private boolean D;
    private d[] E;
    private d F;
    private boolean G;
    private final Runnable H;
    private boolean I;
    private Rect J;
    private Rect K;
    private m L;
    android.support.v7.view.b m;
    ActionBarContextView n;
    PopupWindow o;
    Runnable p;
    w q;
    boolean r;
    int s;
    private DecorContentParent u;
    private a v;
    private e w;
    private boolean x;
    private ViewGroup y;
    private TextView z;

    static {
        t = Build.VERSION.SDK_INT < 21;
    }

    k(Context context, Window window, android.support.v7.app.d dVar) {
        super(context, window, dVar);
        this.q = null;
        this.H = new Runnable() { // from class: android.support.v7.app.k.1
            @Override // java.lang.Runnable
            public void run() {
                if ((k.this.s & 1) != 0) {
                    k.this.f(0);
                }
                if ((k.this.s & RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT) != 0) {
                    k.this.f(108);
                }
                k.this.r = false;
                k.this.s = 0;
            }
        };
    }

    @Override // android.support.v7.app.e
    public void a(Bundle bundle) {
        if ((this.f1232c instanceof Activity) && x.b((Activity) this.f1232c) != null) {
            android.support.v7.app.a aVarM = m();
            if (aVarM == null) {
                this.I = true;
            } else {
                aVarM.e(true);
            }
        }
    }

    @Override // android.support.v7.app.e
    public void b(Bundle bundle) {
        w();
    }

    @Override // android.support.v7.app.f
    public void l() {
        w();
        if (this.h && this.f == null) {
            if (this.f1232c instanceof Activity) {
                this.f = new r((Activity) this.f1232c, this.i);
            } else if (this.f1232c instanceof Dialog) {
                this.f = new r((Dialog) this.f1232c);
            }
            if (this.f != null) {
                this.f.e(this.I);
            }
        }
    }

    @Override // android.support.v7.app.e
    public void a(Toolbar toolbar) {
        if (this.f1232c instanceof Activity) {
            android.support.v7.app.a aVarA = a();
            if (aVarA instanceof r) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.g = null;
            if (aVarA != null) {
                aVarA.g();
            }
            if (toolbar != null) {
                o oVar = new o(toolbar, ((Activity) this.f1232c).getTitle(), this.f1233d);
                this.f = oVar;
                this.f1231b.setCallback(oVar.h());
            } else {
                this.f = null;
                this.f1231b.setCallback(this.f1233d);
            }
            f();
        }
    }

    @Override // android.support.v7.app.e
    public <T extends View> T a(int i) {
        w();
        return (T) this.f1231b.findViewById(i);
    }

    @Override // android.support.v7.app.e
    public void a(Configuration configuration) {
        android.support.v7.app.a aVarA;
        if (this.h && this.x && (aVarA = a()) != null) {
            aVarA.a(configuration);
        }
        AppCompatDrawableManager.get().onConfigurationChanged(this.f1230a);
        i();
    }

    @Override // android.support.v7.app.f, android.support.v7.app.e
    public void d() {
        android.support.v7.app.a aVarA = a();
        if (aVarA != null) {
            aVarA.f(false);
        }
    }

    @Override // android.support.v7.app.e
    public void e() {
        android.support.v7.app.a aVarA = a();
        if (aVarA != null) {
            aVarA.f(true);
        }
    }

    @Override // android.support.v7.app.e
    public void a(View view) {
        w();
        ViewGroup viewGroup = (ViewGroup) this.y.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f1232c.onContentChanged();
    }

    @Override // android.support.v7.app.e
    public void b(int i) {
        w();
        ViewGroup viewGroup = (ViewGroup) this.y.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f1230a).inflate(i, viewGroup);
        this.f1232c.onContentChanged();
    }

    @Override // android.support.v7.app.e
    public void a(View view, ViewGroup.LayoutParams layoutParams) {
        w();
        ViewGroup viewGroup = (ViewGroup) this.y.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f1232c.onContentChanged();
    }

    @Override // android.support.v7.app.e
    public void b(View view, ViewGroup.LayoutParams layoutParams) {
        w();
        ((ViewGroup) this.y.findViewById(R.id.content)).addView(view, layoutParams);
        this.f1232c.onContentChanged();
    }

    @Override // android.support.v7.app.f, android.support.v7.app.e
    public void g() {
        if (this.r) {
            this.f1231b.getDecorView().removeCallbacks(this.H);
        }
        super.g();
        if (this.f != null) {
            this.f.g();
        }
    }

    private void w() {
        if (!this.x) {
            this.y = x();
            CharSequence charSequenceR = r();
            if (!TextUtils.isEmpty(charSequenceR)) {
                b(charSequenceR);
            }
            y();
            a(this.y);
            this.x = true;
            d dVarA = a(0, false);
            if (p()) {
                return;
            }
            if (dVarA == null || dVarA.j == null) {
                d(108);
            }
        }
    }

    private ViewGroup x() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        Context dVar;
        TypedArray typedArrayObtainStyledAttributes = this.f1230a.obtainStyledAttributes(a.j.AppCompatTheme);
        if (!typedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTheme_windowActionBar)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(a.j.AppCompatTheme_windowNoTitle, false)) {
            c(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(a.j.AppCompatTheme_windowActionBar, false)) {
            c(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(a.j.AppCompatTheme_windowActionBarOverlay, false)) {
            c(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(a.j.AppCompatTheme_windowActionModeOverlay, false)) {
            c(10);
        }
        this.k = typedArrayObtainStyledAttributes.getBoolean(a.j.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        this.f1231b.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f1230a);
        if (!this.l) {
            if (this.k) {
                ViewGroup viewGroup3 = (ViewGroup) layoutInflaterFrom.inflate(a.g.abc_dialog_title_material, (ViewGroup) null);
                this.i = false;
                this.h = false;
                viewGroup2 = viewGroup3;
            } else if (this.h) {
                TypedValue typedValue = new TypedValue();
                this.f1230a.getTheme().resolveAttribute(a.C0032a.actionBarTheme, typedValue, true);
                if (typedValue.resourceId != 0) {
                    dVar = new android.support.v7.view.d(this.f1230a, typedValue.resourceId);
                } else {
                    dVar = this.f1230a;
                }
                ViewGroup viewGroup4 = (ViewGroup) LayoutInflater.from(dVar).inflate(a.g.abc_screen_toolbar, (ViewGroup) null);
                this.u = (DecorContentParent) viewGroup4.findViewById(a.f.decor_content_parent);
                this.u.setWindowCallback(q());
                if (this.i) {
                    this.u.initFeature(109);
                }
                if (this.B) {
                    this.u.initFeature(2);
                }
                if (this.C) {
                    this.u.initFeature(5);
                }
                viewGroup2 = viewGroup4;
            } else {
                viewGroup2 = null;
            }
        } else {
            if (this.j) {
                viewGroup = (ViewGroup) layoutInflaterFrom.inflate(a.g.abc_screen_simple_overlay_action_mode, (ViewGroup) null);
            } else {
                viewGroup = (ViewGroup) layoutInflaterFrom.inflate(a.g.abc_screen_simple, (ViewGroup) null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                s.a(viewGroup, new android.support.v4.view.o() { // from class: android.support.v7.app.k.2
                    @Override // android.support.v4.view.o
                    public aa a(View view, aa aaVar) {
                        int iB = aaVar.b();
                        int iG = k.this.g(iB);
                        if (iB != iG) {
                            aaVar = aaVar.a(aaVar.a(), iG, aaVar.c(), aaVar.d());
                        }
                        return s.a(view, aaVar);
                    }
                });
                viewGroup2 = viewGroup;
            } else {
                ((FitWindowsViewGroup) viewGroup).setOnFitSystemWindowsListener(new FitWindowsViewGroup.OnFitSystemWindowsListener() { // from class: android.support.v7.app.k.3
                    @Override // android.support.v7.widget.FitWindowsViewGroup.OnFitSystemWindowsListener
                    public void onFitSystemWindows(Rect rect) {
                        rect.top = k.this.g(rect.top);
                    }
                });
                viewGroup2 = viewGroup;
            }
        }
        if (viewGroup2 == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.h + ", windowActionBarOverlay: " + this.i + ", android:windowIsFloating: " + this.k + ", windowActionModeOverlay: " + this.j + ", windowNoTitle: " + this.l + " }");
        }
        if (this.u == null) {
            this.z = (TextView) viewGroup2.findViewById(a.f.title);
        }
        ViewUtils.makeOptionalFitsSystemWindows(viewGroup2);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup2.findViewById(a.f.action_bar_activity_content);
        ViewGroup viewGroup5 = (ViewGroup) this.f1231b.findViewById(R.id.content);
        if (viewGroup5 != null) {
            while (viewGroup5.getChildCount() > 0) {
                View childAt = viewGroup5.getChildAt(0);
                viewGroup5.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup5.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup5 instanceof FrameLayout) {
                ((FrameLayout) viewGroup5).setForeground(null);
            }
        }
        this.f1231b.setContentView(viewGroup2);
        contentFrameLayout.setAttachListener(new ContentFrameLayout.OnAttachListener() { // from class: android.support.v7.app.k.4
            @Override // android.support.v7.widget.ContentFrameLayout.OnAttachListener
            public void onAttachedFromWindow() {
            }

            @Override // android.support.v7.widget.ContentFrameLayout.OnAttachListener
            public void onDetachedFromWindow() {
                k.this.v();
            }
        });
        return viewGroup2;
    }

    void a(ViewGroup viewGroup) {
    }

    private void y() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.y.findViewById(R.id.content);
        View decorView = this.f1231b.getDecorView();
        contentFrameLayout.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes = this.f1230a.obtainStyledAttributes(a.j.AppCompatTheme);
        typedArrayObtainStyledAttributes.getValue(a.j.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        typedArrayObtainStyledAttributes.getValue(a.j.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTheme_windowFixedWidthMajor)) {
            typedArrayObtainStyledAttributes.getValue(a.j.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTheme_windowFixedWidthMinor)) {
            typedArrayObtainStyledAttributes.getValue(a.j.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTheme_windowFixedHeightMajor)) {
            typedArrayObtainStyledAttributes.getValue(a.j.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTheme_windowFixedHeightMinor)) {
            typedArrayObtainStyledAttributes.getValue(a.j.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    @Override // android.support.v7.app.e
    public boolean c(int i) {
        int iH = h(i);
        if (this.l && iH == 108) {
            return false;
        }
        if (this.h && iH == 1) {
            this.h = false;
        }
        switch (iH) {
            case 1:
                z();
                this.l = true;
                return true;
            case 2:
                z();
                this.B = true;
                return true;
            case 5:
                z();
                this.C = true;
                return true;
            case 10:
                z();
                this.j = true;
                return true;
            case 108:
                z();
                this.h = true;
                return true;
            case 109:
                z();
                this.i = true;
                return true;
            default:
                return this.f1231b.requestFeature(iH);
        }
    }

    @Override // android.support.v7.app.f
    void b(CharSequence charSequence) {
        if (this.u != null) {
            this.u.setWindowTitle(charSequence);
        } else if (m() != null) {
            m().a(charSequence);
        } else if (this.z != null) {
            this.z.setText(charSequence);
        }
    }

    @Override // android.support.v7.app.f
    void a(int i, Menu menu) {
        if (i == 108) {
            android.support.v7.app.a aVarA = a();
            if (aVarA != null) {
                aVarA.g(false);
                return;
            }
            return;
        }
        if (i == 0) {
            d dVarA = a(i, true);
            if (dVarA.o) {
                a(dVarA, false);
            }
        }
    }

    @Override // android.support.v7.app.f
    boolean b(int i, Menu menu) {
        if (i != 108) {
            return false;
        }
        android.support.v7.app.a aVarA = a();
        if (aVarA == null) {
            return true;
        }
        aVarA.g(true);
        return true;
    }

    @Override // android.support.v7.view.menu.h.a
    public boolean a(android.support.v7.view.menu.h hVar, MenuItem menuItem) {
        d dVarA;
        Window.Callback callbackQ = q();
        if (callbackQ == null || p() || (dVarA = a((Menu) hVar.p())) == null) {
            return false;
        }
        return callbackQ.onMenuItemSelected(dVarA.f1256a, menuItem);
    }

    @Override // android.support.v7.view.menu.h.a
    public void a(android.support.v7.view.menu.h hVar) {
        a(hVar, true);
    }

    public android.support.v7.view.b b(b.a aVar) {
        if (aVar == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        if (this.m != null) {
            this.m.c();
        }
        b bVar = new b(aVar);
        android.support.v7.app.a aVarA = a();
        if (aVarA != null) {
            this.m = aVarA.a(bVar);
            if (this.m != null && this.e != null) {
                this.e.a(this.m);
            }
        }
        if (this.m == null) {
            this.m = a(bVar);
        }
        return this.m;
    }

    @Override // android.support.v7.app.e
    public void f() {
        android.support.v7.app.a aVarA = a();
        if (aVarA == null || !aVarA.e()) {
            d(0);
        }
    }

    @Override // android.support.v7.app.f
    android.support.v7.view.b a(b.a aVar) {
        android.support.v7.view.b bVarA;
        Context dVar;
        t();
        if (this.m != null) {
            this.m.c();
        }
        if (!(aVar instanceof b)) {
            aVar = new b(aVar);
        }
        if (this.e == null || p()) {
            bVarA = null;
        } else {
            try {
                bVarA = this.e.a(aVar);
            } catch (AbstractMethodError e2) {
                bVarA = null;
            }
        }
        if (bVarA != null) {
            this.m = bVarA;
        } else {
            if (this.n == null) {
                if (this.k) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = this.f1230a.getTheme();
                    theme.resolveAttribute(a.C0032a.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = this.f1230a.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        dVar = new android.support.v7.view.d(this.f1230a, 0);
                        dVar.getTheme().setTo(themeNewTheme);
                    } else {
                        dVar = this.f1230a;
                    }
                    this.n = new ActionBarContextView(dVar);
                    this.o = new PopupWindow(dVar, (AttributeSet) null, a.C0032a.actionModePopupWindowStyle);
                    android.support.v4.widget.l.a(this.o, 2);
                    this.o.setContentView(this.n);
                    this.o.setWidth(-1);
                    dVar.getTheme().resolveAttribute(a.C0032a.actionBarSize, typedValue, true);
                    this.n.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, dVar.getResources().getDisplayMetrics()));
                    this.o.setHeight(-2);
                    this.p = new Runnable() { // from class: android.support.v7.app.k.5
                        @Override // java.lang.Runnable
                        public void run() {
                            k.this.o.showAtLocation(k.this.n, 55, 0, 0);
                            k.this.t();
                            if (k.this.s()) {
                                k.this.n.setAlpha(0.0f);
                                k.this.q = s.j(k.this.n).a(1.0f);
                                k.this.q.a(new y() { // from class: android.support.v7.app.k.5.1
                                    @Override // android.support.v4.view.y, android.support.v4.view.x
                                    public void onAnimationStart(View view) {
                                        k.this.n.setVisibility(0);
                                    }

                                    @Override // android.support.v4.view.y, android.support.v4.view.x
                                    public void onAnimationEnd(View view) {
                                        k.this.n.setAlpha(1.0f);
                                        k.this.q.a((android.support.v4.view.x) null);
                                        k.this.q = null;
                                    }
                                });
                                return;
                            }
                            k.this.n.setAlpha(1.0f);
                            k.this.n.setVisibility(0);
                        }
                    };
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.y.findViewById(a.f.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(n()));
                        this.n = (ActionBarContextView) viewStubCompat.inflate();
                    }
                }
            }
            if (this.n != null) {
                t();
                this.n.killMode();
                android.support.v7.view.e eVar = new android.support.v7.view.e(this.n.getContext(), this.n, aVar, this.o == null);
                if (aVar.a(eVar, eVar.b())) {
                    eVar.d();
                    this.n.initForMode(eVar);
                    this.m = eVar;
                    if (s()) {
                        this.n.setAlpha(0.0f);
                        this.q = s.j(this.n).a(1.0f);
                        this.q.a(new y() { // from class: android.support.v7.app.k.6
                            @Override // android.support.v4.view.y, android.support.v4.view.x
                            public void onAnimationStart(View view) {
                                k.this.n.setVisibility(0);
                                k.this.n.sendAccessibilityEvent(32);
                                if (k.this.n.getParent() instanceof View) {
                                    s.n((View) k.this.n.getParent());
                                }
                            }

                            @Override // android.support.v4.view.y, android.support.v4.view.x
                            public void onAnimationEnd(View view) {
                                k.this.n.setAlpha(1.0f);
                                k.this.q.a((android.support.v4.view.x) null);
                                k.this.q = null;
                            }
                        });
                    } else {
                        this.n.setAlpha(1.0f);
                        this.n.setVisibility(0);
                        this.n.sendAccessibilityEvent(32);
                        if (this.n.getParent() instanceof View) {
                            s.n((View) this.n.getParent());
                        }
                    }
                    if (this.o != null) {
                        this.f1231b.getDecorView().post(this.p);
                    }
                } else {
                    this.m = null;
                }
            }
        }
        if (this.m != null && this.e != null) {
            this.e.a(this.m);
        }
        return this.m;
    }

    final boolean s() {
        return this.x && this.y != null && s.v(this.y);
    }

    void t() {
        if (this.q != null) {
            this.q.b();
        }
    }

    boolean u() {
        if (this.m != null) {
            this.m.c();
            return true;
        }
        android.support.v7.app.a aVarA = a();
        return aVarA != null && aVarA.f();
    }

    @Override // android.support.v7.app.f
    boolean a(int i, KeyEvent keyEvent) {
        android.support.v7.app.a aVarA = a();
        if (aVarA != null && aVarA.a(i, keyEvent)) {
            return true;
        }
        if (this.F != null && a(this.F, keyEvent.getKeyCode(), keyEvent, 1)) {
            if (this.F == null) {
                return true;
            }
            this.F.n = true;
            return true;
        }
        if (this.F == null) {
            d dVarA = a(0, true);
            b(dVarA, keyEvent);
            boolean zA = a(dVarA, keyEvent.getKeyCode(), keyEvent, 1);
            dVarA.m = false;
            if (zA) {
                return true;
            }
        }
        return false;
    }

    @Override // android.support.v7.app.f
    boolean a(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 82 && this.f1232c.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? c(keyCode, keyEvent) : b(keyCode, keyEvent);
    }

    boolean b(int i, KeyEvent keyEvent) {
        switch (i) {
            case 4:
                boolean z = this.G;
                this.G = false;
                d dVarA = a(0, false);
                if (dVarA != null && dVarA.o) {
                    if (z) {
                        return true;
                    }
                    a(dVarA, true);
                    return true;
                }
                if (u()) {
                    return true;
                }
                break;
            case 82:
                e(0, keyEvent);
                return true;
        }
        return false;
    }

    boolean c(int i, KeyEvent keyEvent) {
        switch (i) {
            case 4:
                this.G = (keyEvent.getFlags() & 128) != 0;
                break;
            case 82:
                d(0, keyEvent);
                return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View b(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        boolean zA;
        if (this.L == null) {
            this.L = new m();
        }
        if (t) {
            if (attributeSet instanceof XmlPullParser) {
                zA = ((XmlPullParser) attributeSet).getDepth() > 1;
            } else {
                zA = a((ViewParent) view);
            }
            z = zA;
        } else {
            z = false;
        }
        return this.L.a(view, str, context, attributeSet, z, t, true, VectorEnabledTintResources.shouldBeUsed());
    }

    private boolean a(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f1231b.getDecorView();
        for (ViewParent parent = viewParent; parent != null; parent = parent.getParent()) {
            if (parent == decorView || !(parent instanceof View) || s.y((View) parent)) {
                return false;
            }
        }
        return true;
    }

    @Override // android.support.v7.app.e
    public void h() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f1230a);
        if (layoutInflaterFrom.getFactory() == null) {
            android.support.v4.view.e.b(layoutInflaterFrom, this);
        } else if (!(layoutInflaterFrom.getFactory2() instanceof k)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewA = a(view, str, context, attributeSet);
        return viewA != null ? viewA : b(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    View a(View view, String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView;
        if (!(this.f1232c instanceof LayoutInflater.Factory) || (viewOnCreateView = ((LayoutInflater.Factory) this.f1232c).onCreateView(str, context, attributeSet)) == null) {
            return null;
        }
        return viewOnCreateView;
    }

    private void a(d dVar, KeyEvent keyEvent) {
        ViewGroup.LayoutParams layoutParams;
        int i = -1;
        if (!dVar.o && !p()) {
            if (dVar.f1256a == 0) {
                if ((this.f1230a.getResources().getConfiguration().screenLayout & 15) == 4) {
                    return;
                }
            }
            Window.Callback callbackQ = q();
            if (callbackQ != null && !callbackQ.onMenuOpened(dVar.f1256a, dVar.j)) {
                a(dVar, true);
                return;
            }
            WindowManager windowManager = (WindowManager) this.f1230a.getSystemService("window");
            if (windowManager != null && b(dVar, keyEvent)) {
                if (dVar.g == null || dVar.q) {
                    if (dVar.g == null) {
                        if (!a(dVar) || dVar.g == null) {
                            return;
                        }
                    } else if (dVar.q && dVar.g.getChildCount() > 0) {
                        dVar.g.removeAllViews();
                    }
                    if (c(dVar) && dVar.a()) {
                        ViewGroup.LayoutParams layoutParams2 = dVar.h.getLayoutParams();
                        ViewGroup.LayoutParams layoutParams3 = layoutParams2 == null ? new ViewGroup.LayoutParams(-2, -2) : layoutParams2;
                        dVar.g.setBackgroundResource(dVar.f1257b);
                        ViewParent parent = dVar.h.getParent();
                        if (parent != null && (parent instanceof ViewGroup)) {
                            ((ViewGroup) parent).removeView(dVar.h);
                        }
                        dVar.g.addView(dVar.h, layoutParams3);
                        if (!dVar.h.hasFocus()) {
                            dVar.h.requestFocus();
                        }
                        i = -2;
                    } else {
                        return;
                    }
                } else if (dVar.i == null || (layoutParams = dVar.i.getLayoutParams()) == null || layoutParams.width != -1) {
                    i = -2;
                }
                dVar.n = false;
                WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i, -2, dVar.f1259d, dVar.e, 1002, 8519680, -3);
                layoutParams4.gravity = dVar.f1258c;
                layoutParams4.windowAnimations = dVar.f;
                windowManager.addView(dVar.g, layoutParams4);
                dVar.o = true;
            }
        }
    }

    private boolean a(d dVar) {
        dVar.a(n());
        dVar.g = new c(dVar.l);
        dVar.f1258c = 81;
        return true;
    }

    private void a(android.support.v7.view.menu.h hVar, boolean z) {
        if (this.u != null && this.u.canShowOverflowMenu() && (!ViewConfiguration.get(this.f1230a).hasPermanentMenuKey() || this.u.isOverflowMenuShowPending())) {
            Window.Callback callbackQ = q();
            if (!this.u.isOverflowMenuShowing() || !z) {
                if (callbackQ != null && !p()) {
                    if (this.r && (this.s & 1) != 0) {
                        this.f1231b.getDecorView().removeCallbacks(this.H);
                        this.H.run();
                    }
                    d dVarA = a(0, true);
                    if (dVarA.j != null && !dVarA.r && callbackQ.onPreparePanel(0, dVarA.i, dVarA.j)) {
                        callbackQ.onMenuOpened(108, dVarA.j);
                        this.u.showOverflowMenu();
                        return;
                    }
                    return;
                }
                return;
            }
            this.u.hideOverflowMenu();
            if (!p()) {
                callbackQ.onPanelClosed(108, a(0, true).j);
                return;
            }
            return;
        }
        d dVarA2 = a(0, true);
        dVarA2.q = true;
        a(dVarA2, false);
        a(dVarA2, (KeyEvent) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean b(android.support.v7.app.k.d r7) {
        /*
            r6 = this;
            r5 = 1
            android.content.Context r1 = r6.f1230a
            int r0 = r7.f1256a
            if (r0 == 0) goto Ld
            int r0 = r7.f1256a
            r2 = 108(0x6c, float:1.51E-43)
            if (r0 != r2) goto L71
        Ld:
            android.support.v7.widget.DecorContentParent r0 = r6.u
            if (r0 == 0) goto L71
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            android.content.res.Resources$Theme r3 = r1.getTheme()
            int r0 = android.support.v7.a.a.C0032a.actionBarTheme
            r3.resolveAttribute(r0, r2, r5)
            r0 = 0
            int r4 = r2.resourceId
            if (r4 == 0) goto L6b
            android.content.res.Resources r0 = r1.getResources()
            android.content.res.Resources$Theme r0 = r0.newTheme()
            r0.setTo(r3)
            int r4 = r2.resourceId
            r0.applyStyle(r4, r5)
            int r4 = android.support.v7.a.a.C0032a.actionBarWidgetTheme
            r0.resolveAttribute(r4, r2, r5)
        L39:
            int r4 = r2.resourceId
            if (r4 == 0) goto L4f
            if (r0 != 0) goto L4a
            android.content.res.Resources r0 = r1.getResources()
            android.content.res.Resources$Theme r0 = r0.newTheme()
            r0.setTo(r3)
        L4a:
            int r2 = r2.resourceId
            r0.applyStyle(r2, r5)
        L4f:
            r2 = r0
            if (r2 == 0) goto L71
            android.support.v7.view.d r0 = new android.support.v7.view.d
            r3 = 0
            r0.<init>(r1, r3)
            android.content.res.Resources$Theme r1 = r0.getTheme()
            r1.setTo(r2)
        L5f:
            android.support.v7.view.menu.h r1 = new android.support.v7.view.menu.h
            r1.<init>(r0)
            r1.a(r6)
            r7.a(r1)
            return r5
        L6b:
            int r4 = android.support.v7.a.a.C0032a.actionBarWidgetTheme
            r3.resolveAttribute(r4, r2, r5)
            goto L39
        L71:
            r0 = r1
            goto L5f
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.k.b(android.support.v7.app.k$d):boolean");
    }

    private boolean c(d dVar) {
        if (dVar.i != null) {
            dVar.h = dVar.i;
            return true;
        }
        if (dVar.j == null) {
            return false;
        }
        if (this.w == null) {
            this.w = new e();
        }
        dVar.h = (View) dVar.a(this.w);
        return dVar.h != null;
    }

    private boolean b(d dVar, KeyEvent keyEvent) {
        if (p()) {
            return false;
        }
        if (dVar.m) {
            return true;
        }
        if (this.F != null && this.F != dVar) {
            a(this.F, false);
        }
        Window.Callback callbackQ = q();
        if (callbackQ != null) {
            dVar.i = callbackQ.onCreatePanelView(dVar.f1256a);
        }
        boolean z = dVar.f1256a == 0 || dVar.f1256a == 108;
        if (z && this.u != null) {
            this.u.setMenuPrepared();
        }
        if (dVar.i == null && (!z || !(m() instanceof o))) {
            if (dVar.j == null || dVar.r) {
                if (dVar.j == null && (!b(dVar) || dVar.j == null)) {
                    return false;
                }
                if (z && this.u != null) {
                    if (this.v == null) {
                        this.v = new a();
                    }
                    this.u.setMenu(dVar.j, this.v);
                }
                dVar.j.g();
                if (!callbackQ.onCreatePanelMenu(dVar.f1256a, dVar.j)) {
                    dVar.a((android.support.v7.view.menu.h) null);
                    if (!z || this.u == null) {
                        return false;
                    }
                    this.u.setMenu(null, this.v);
                    return false;
                }
                dVar.r = false;
            }
            dVar.j.g();
            if (dVar.s != null) {
                dVar.j.b(dVar.s);
                dVar.s = null;
            }
            if (!callbackQ.onPreparePanel(0, dVar.i, dVar.j)) {
                if (z && this.u != null) {
                    this.u.setMenu(null, this.v);
                }
                dVar.j.h();
                return false;
            }
            dVar.p = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            dVar.j.setQwertyMode(dVar.p);
            dVar.j.h();
        }
        dVar.m = true;
        dVar.n = false;
        this.F = dVar;
        return true;
    }

    void b(android.support.v7.view.menu.h hVar) {
        if (!this.D) {
            this.D = true;
            this.u.dismissPopups();
            Window.Callback callbackQ = q();
            if (callbackQ != null && !p()) {
                callbackQ.onPanelClosed(108, hVar);
            }
            this.D = false;
        }
    }

    void e(int i) {
        a(a(i, true), true);
    }

    void a(d dVar, boolean z) {
        if (z && dVar.f1256a == 0 && this.u != null && this.u.isOverflowMenuShowing()) {
            b(dVar.j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f1230a.getSystemService("window");
        if (windowManager != null && dVar.o && dVar.g != null) {
            windowManager.removeView(dVar.g);
            if (z) {
                a(dVar.f1256a, dVar, (Menu) null);
            }
        }
        dVar.m = false;
        dVar.n = false;
        dVar.o = false;
        dVar.h = null;
        dVar.q = true;
        if (this.F == dVar) {
            this.F = null;
        }
    }

    private boolean d(int i, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() == 0) {
            d dVarA = a(i, true);
            if (!dVarA.o) {
                return b(dVarA, keyEvent);
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean e(int r5, android.view.KeyEvent r6) {
        /*
            r4 = this;
            r2 = 1
            r1 = 0
            android.support.v7.view.b r0 = r4.m
            if (r0 == 0) goto L8
            r0 = r1
        L7:
            return r0
        L8:
            android.support.v7.app.k$d r3 = r4.a(r5, r2)
            if (r5 != 0) goto L5a
            android.support.v7.widget.DecorContentParent r0 = r4.u
            if (r0 == 0) goto L5a
            android.support.v7.widget.DecorContentParent r0 = r4.u
            boolean r0 = r0.canShowOverflowMenu()
            if (r0 == 0) goto L5a
            android.content.Context r0 = r4.f1230a
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            boolean r0 = r0.hasPermanentMenuKey()
            if (r0 != 0) goto L5a
            android.support.v7.widget.DecorContentParent r0 = r4.u
            boolean r0 = r0.isOverflowMenuShowing()
            if (r0 != 0) goto L53
            boolean r0 = r4.p()
            if (r0 != 0) goto L85
            boolean r0 = r4.b(r3, r6)
            if (r0 == 0) goto L85
            android.support.v7.widget.DecorContentParent r0 = r4.u
            boolean r2 = r0.showOverflowMenu()
        L40:
            if (r2 == 0) goto L51
            android.content.Context r0 = r4.f1230a
            java.lang.String r3 = "audio"
            java.lang.Object r0 = r0.getSystemService(r3)
            android.media.AudioManager r0 = (android.media.AudioManager) r0
            if (r0 == 0) goto L7d
            r0.playSoundEffect(r1)
        L51:
            r0 = r2
            goto L7
        L53:
            android.support.v7.widget.DecorContentParent r0 = r4.u
            boolean r2 = r0.hideOverflowMenu()
            goto L40
        L5a:
            boolean r0 = r3.o
            if (r0 != 0) goto L62
            boolean r0 = r3.n
            if (r0 == 0) goto L69
        L62:
            boolean r0 = r3.o
            r4.a(r3, r2)
            r2 = r0
            goto L40
        L69:
            boolean r0 = r3.m
            if (r0 == 0) goto L85
            boolean r0 = r3.r
            if (r0 == 0) goto L87
            r3.m = r1
            boolean r0 = r4.b(r3, r6)
        L77:
            if (r0 == 0) goto L85
            r4.a(r3, r6)
            goto L40
        L7d:
            java.lang.String r0 = "AppCompatDelegate"
            java.lang.String r1 = "Couldn't get audio manager"
            android.util.Log.w(r0, r1)
            goto L51
        L85:
            r2 = r1
            goto L40
        L87:
            r0 = r2
            goto L77
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.k.e(int, android.view.KeyEvent):boolean");
    }

    void a(int i, d dVar, Menu menu) {
        if (menu == null) {
            if (dVar == null && i >= 0 && i < this.E.length) {
                dVar = this.E[i];
            }
            if (dVar != null) {
                menu = dVar.j;
            }
        }
        if ((dVar == null || dVar.o) && !p()) {
            this.f1232c.onPanelClosed(i, menu);
        }
    }

    d a(Menu menu) {
        d[] dVarArr = this.E;
        int length = dVarArr != null ? dVarArr.length : 0;
        for (int i = 0; i < length; i++) {
            d dVar = dVarArr[i];
            if (dVar != null && dVar.j == menu) {
                return dVar;
            }
        }
        return null;
    }

    protected d a(int i, boolean z) {
        d[] dVarArr = this.E;
        if (dVarArr == null || dVarArr.length <= i) {
            d[] dVarArr2 = new d[i + 1];
            if (dVarArr != null) {
                System.arraycopy(dVarArr, 0, dVarArr2, 0, dVarArr.length);
            }
            this.E = dVarArr2;
            dVarArr = dVarArr2;
        }
        d dVar = dVarArr[i];
        if (dVar != null) {
            return dVar;
        }
        d dVar2 = new d(i);
        dVarArr[i] = dVar2;
        return dVar2;
    }

    private boolean a(d dVar, int i, KeyEvent keyEvent, int i2) {
        boolean zPerformShortcut = false;
        if (!keyEvent.isSystem()) {
            if ((dVar.m || b(dVar, keyEvent)) && dVar.j != null) {
                zPerformShortcut = dVar.j.performShortcut(i, keyEvent, i2);
            }
            if (zPerformShortcut && (i2 & 1) == 0 && this.u == null) {
                a(dVar, true);
            }
        }
        return zPerformShortcut;
    }

    private void d(int i) {
        this.s |= 1 << i;
        if (!this.r) {
            s.a(this.f1231b.getDecorView(), this.H);
            this.r = true;
        }
    }

    void f(int i) {
        d dVarA;
        d dVarA2 = a(i, true);
        if (dVarA2.j != null) {
            Bundle bundle = new Bundle();
            dVarA2.j.a(bundle);
            if (bundle.size() > 0) {
                dVarA2.s = bundle;
            }
            dVarA2.j.g();
            dVarA2.j.clear();
        }
        dVarA2.r = true;
        dVarA2.q = true;
        if ((i == 108 || i == 0) && this.u != null && (dVarA = a(0, false)) != null) {
            dVarA.m = false;
            b(dVarA, (KeyEvent) null);
        }
    }

    int g(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        if (this.n == null || !(this.n.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.n.getLayoutParams();
            if (this.n.isShown()) {
                if (this.J == null) {
                    this.J = new Rect();
                    this.K = new Rect();
                }
                Rect rect = this.J;
                Rect rect2 = this.K;
                rect.set(0, i, 0, 0);
                ViewUtils.computeFitSystemWindows(this.y, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i : 0)) {
                    marginLayoutParams.topMargin = i;
                    if (this.A == null) {
                        this.A = new View(this.f1230a);
                        this.A.setBackgroundColor(this.f1230a.getResources().getColor(a.c.abc_input_method_navigation_guard));
                        this.y.addView(this.A, -1, new ViewGroup.LayoutParams(-1, i));
                        z3 = true;
                    } else {
                        ViewGroup.LayoutParams layoutParams = this.A.getLayoutParams();
                        if (layoutParams.height != i) {
                            layoutParams.height = i;
                            this.A.setLayoutParams(layoutParams);
                        }
                        z3 = true;
                    }
                } else {
                    z3 = false;
                }
                z = this.A != null;
                if (!this.j && z) {
                    i = 0;
                }
                boolean z4 = z3;
                z2 = z;
                z = z4;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = false;
            } else {
                z = false;
                z2 = false;
            }
            if (z) {
                this.n.setLayoutParams(marginLayoutParams);
            }
            z = z2;
        }
        if (this.A != null) {
            this.A.setVisibility(z ? 0 : 8);
        }
        return i;
    }

    private void z() {
        if (this.x) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private int h(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        if (i == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            return 109;
        }
        return i;
    }

    void v() {
        if (this.u != null) {
            this.u.dismissPopups();
        }
        if (this.o != null) {
            this.f1231b.getDecorView().removeCallbacks(this.p);
            if (this.o.isShowing()) {
                try {
                    this.o.dismiss();
                } catch (IllegalArgumentException e2) {
                }
            }
            this.o = null;
        }
        t();
        d dVarA = a(0, false);
        if (dVarA != null && dVarA.j != null) {
            dVarA.j.close();
        }
    }

    class b implements b.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b.a f1253b;

        public b(b.a aVar) {
            this.f1253b = aVar;
        }

        @Override // android.support.v7.view.b.a
        public boolean a(android.support.v7.view.b bVar, Menu menu) {
            return this.f1253b.a(bVar, menu);
        }

        @Override // android.support.v7.view.b.a
        public boolean b(android.support.v7.view.b bVar, Menu menu) {
            return this.f1253b.b(bVar, menu);
        }

        @Override // android.support.v7.view.b.a
        public boolean a(android.support.v7.view.b bVar, MenuItem menuItem) {
            return this.f1253b.a(bVar, menuItem);
        }

        @Override // android.support.v7.view.b.a
        public void a(android.support.v7.view.b bVar) {
            this.f1253b.a(bVar);
            if (k.this.o != null) {
                k.this.f1231b.getDecorView().removeCallbacks(k.this.p);
            }
            if (k.this.n != null) {
                k.this.t();
                k.this.q = s.j(k.this.n).a(0.0f);
                k.this.q.a(new y() { // from class: android.support.v7.app.k.b.1
                    @Override // android.support.v4.view.y, android.support.v4.view.x
                    public void onAnimationEnd(View view) {
                        k.this.n.setVisibility(8);
                        if (k.this.o != null) {
                            k.this.o.dismiss();
                        } else if (k.this.n.getParent() instanceof View) {
                            s.n((View) k.this.n.getParent());
                        }
                        k.this.n.removeAllViews();
                        k.this.q.a((android.support.v4.view.x) null);
                        k.this.q = null;
                    }
                });
            }
            if (k.this.e != null) {
                k.this.e.b(k.this.m);
            }
            k.this.m = null;
        }
    }

    private final class e implements o.a {
        e() {
        }

        @Override // android.support.v7.view.menu.o.a
        public void a(android.support.v7.view.menu.h hVar, boolean z) {
            android.support.v7.view.menu.h hVarP = hVar.p();
            boolean z2 = hVarP != hVar;
            k kVar = k.this;
            if (z2) {
                hVar = hVarP;
            }
            d dVarA = kVar.a((Menu) hVar);
            if (dVarA != null) {
                if (z2) {
                    k.this.a(dVarA.f1256a, dVarA, hVarP);
                    k.this.a(dVarA, true);
                } else {
                    k.this.a(dVarA, z);
                }
            }
        }

        @Override // android.support.v7.view.menu.o.a
        public boolean a(android.support.v7.view.menu.h hVar) {
            Window.Callback callbackQ;
            if (hVar == null && k.this.h && (callbackQ = k.this.q()) != null && !k.this.p()) {
                callbackQ.onMenuOpened(108, hVar);
                return true;
            }
            return true;
        }
    }

    private final class a implements o.a {
        a() {
        }

        @Override // android.support.v7.view.menu.o.a
        public boolean a(android.support.v7.view.menu.h hVar) {
            Window.Callback callbackQ = k.this.q();
            if (callbackQ != null) {
                callbackQ.onMenuOpened(108, hVar);
                return true;
            }
            return true;
        }

        @Override // android.support.v7.view.menu.o.a
        public void a(android.support.v7.view.menu.h hVar, boolean z) {
            k.this.b(hVar);
        }
    }

    protected static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1256a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1257b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1258c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1259d;
        int e;
        int f;
        ViewGroup g;
        View h;
        View i;
        android.support.v7.view.menu.h j;
        android.support.v7.view.menu.f k;
        Context l;
        boolean m;
        boolean n;
        boolean o;
        public boolean p;
        boolean q = false;
        boolean r;
        Bundle s;

        d(int i) {
            this.f1256a = i;
        }

        public boolean a() {
            if (this.h == null) {
                return false;
            }
            return this.i != null || this.k.a().getCount() > 0;
        }

        void a(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme themeNewTheme = context.getResources().newTheme();
            themeNewTheme.setTo(context.getTheme());
            themeNewTheme.resolveAttribute(a.C0032a.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            themeNewTheme.resolveAttribute(a.C0032a.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            } else {
                themeNewTheme.applyStyle(a.i.Theme_AppCompat_CompactMenu, true);
            }
            android.support.v7.view.d dVar = new android.support.v7.view.d(context, 0);
            dVar.getTheme().setTo(themeNewTheme);
            this.l = dVar;
            TypedArray typedArrayObtainStyledAttributes = dVar.obtainStyledAttributes(a.j.AppCompatTheme);
            this.f1257b = typedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTheme_panelBackground, 0);
            this.f = typedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTheme_android_windowAnimationStyle, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        void a(android.support.v7.view.menu.h hVar) {
            if (hVar != this.j) {
                if (this.j != null) {
                    this.j.b(this.k);
                }
                this.j = hVar;
                if (hVar == null || this.k == null) {
                    return;
                }
                hVar.a(this.k);
            }
        }

        android.support.v7.view.menu.p a(o.a aVar) {
            if (this.j == null) {
                return null;
            }
            if (this.k == null) {
                this.k = new android.support.v7.view.menu.f(this.l, a.g.abc_list_menu_item_layout);
                this.k.a(aVar);
                this.j.a(this.k);
            }
            return this.k.a(this.g);
        }
    }

    private class c extends ContentFrameLayout {
        public c(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return k.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            k.this.e(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(android.support.v7.b.a.b.b(getContext(), i));
        }

        private boolean a(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }
    }
}
