package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
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
import androidx.appcompat.a;
import androidx.appcompat.view.b;
import androidx.appcompat.view.f;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.o;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.DecorContentParent;
import androidx.appcompat.widget.FitWindowsViewGroup;
import androidx.appcompat.widget.TintTypedArray;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.VectorEnabledTintResources;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.ViewUtils;
import androidx.core.h.d;
import androidx.core.h.o;
import androidx.core.h.r;
import androidx.core.h.v;
import androidx.core.h.w;
import androidx.core.h.x;
import androidx.core.h.z;
import java.lang.Thread;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class f extends androidx.appcompat.app.e implements LayoutInflater.Factory2, h.a {
    private static final boolean u;
    private static final int[] v;
    private static boolean w;
    private g A;
    private boolean C;
    private ViewGroup D;
    private TextView E;
    private View F;
    private boolean G;
    private boolean H;
    private boolean I;
    private C0016f[] J;
    private C0016f K;
    private boolean L;
    private boolean N;
    private d O;
    private boolean Q;
    private Rect R;
    private Rect S;
    private AppCompatViewInflater T;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Window f635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Window.Callback f636c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Window.Callback f637d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final androidx.appcompat.app.d f638e;
    androidx.appcompat.app.a f;
    MenuInflater g;
    androidx.appcompat.view.b h;
    ActionBarContextView i;
    PopupWindow j;
    Runnable k;
    boolean m;
    boolean n;
    boolean o;
    boolean p;
    boolean q;
    boolean r;
    boolean s;
    int t;
    private CharSequence x;
    private DecorContentParent y;
    private a z;
    v l = null;
    private boolean B = true;
    private int M = -100;
    private final Runnable P = new Runnable() { // from class: androidx.appcompat.app.f.2
        @Override // java.lang.Runnable
        public void run() {
            if ((f.this.t & 1) != 0) {
                f.this.g(0);
            }
            if ((f.this.t & 4096) != 0) {
                f.this.g(108);
            }
            f.this.s = false;
            f.this.t = 0;
        }
    };

    void a(ViewGroup viewGroup) {
    }

    static {
        boolean z = Build.VERSION.SDK_INT < 21;
        u = z;
        v = new int[]{R.attr.windowBackground};
        if (!z || w) {
            return;
        }
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: androidx.appcompat.app.f.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                if (a(th)) {
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
                    notFoundException.initCause(th.getCause());
                    notFoundException.setStackTrace(th.getStackTrace());
                    defaultUncaughtExceptionHandler.uncaughtException(thread, notFoundException);
                    return;
                }
                defaultUncaughtExceptionHandler.uncaughtException(thread, th);
            }

            private boolean a(Throwable th) {
                String message;
                if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                    return false;
                }
                return message.contains("drawable") || message.contains("Drawable");
            }
        });
        w = true;
    }

    f(Context context, Window window, androidx.appcompat.app.d dVar) {
        this.f634a = context;
        this.f635b = window;
        this.f638e = dVar;
        Window.Callback callback = window.getCallback();
        this.f636c = callback;
        if (callback instanceof c) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        c cVar = new c(callback);
        this.f637d = cVar;
        this.f635b.setCallback(cVar);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, (AttributeSet) null, v);
        Drawable drawableIfKnown = tintTypedArrayObtainStyledAttributes.getDrawableIfKnown(0);
        if (drawableIfKnown != null) {
            this.f635b.setBackgroundDrawable(drawableIfKnown);
        }
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.appcompat.app.e
    public void a(Bundle bundle) {
        Window.Callback callback = this.f636c;
        if (callback instanceof Activity) {
            String strB = null;
            try {
                strB = androidx.core.app.g.b((Activity) callback);
            } catch (IllegalArgumentException unused) {
            }
            if (strB != null) {
                androidx.appcompat.app.a aVarK = k();
                if (aVarK == null) {
                    this.Q = true;
                } else {
                    aVarK.f(true);
                }
            }
        }
        if (bundle == null || this.M != -100) {
            return;
        }
        this.M = bundle.getInt("appcompat:local_night_mode", -100);
    }

    @Override // androidx.appcompat.app.e
    public void b(Bundle bundle) {
        u();
    }

    @Override // androidx.appcompat.app.e
    public androidx.appcompat.app.a a() {
        t();
        return this.f;
    }

    final androidx.appcompat.app.a k() {
        return this.f;
    }

    final Window.Callback l() {
        return this.f635b.getCallback();
    }

    private void t() {
        u();
        if (this.m && this.f == null) {
            Window.Callback callback = this.f636c;
            if (callback instanceof Activity) {
                this.f = new m((Activity) callback, this.n);
            } else if (callback instanceof Dialog) {
                this.f = new m((Dialog) callback);
            }
            androidx.appcompat.app.a aVar = this.f;
            if (aVar != null) {
                aVar.f(this.Q);
            }
        }
    }

    @Override // androidx.appcompat.app.e
    public void a(Toolbar toolbar) {
        if (this.f636c instanceof Activity) {
            androidx.appcompat.app.a aVarA = a();
            if (aVarA instanceof m) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.g = null;
            if (aVarA != null) {
                aVarA.g();
            }
            if (toolbar != null) {
                j jVar = new j(toolbar, ((Activity) this.f636c).getTitle(), this.f637d);
                this.f = jVar;
                this.f635b.setCallback(jVar.h());
            } else {
                this.f = null;
                this.f635b.setCallback(this.f637d);
            }
            f();
        }
    }

    final Context m() {
        androidx.appcompat.app.a aVarA = a();
        Context contextB = aVarA != null ? aVarA.b() : null;
        return contextB == null ? this.f634a : contextB;
    }

    @Override // androidx.appcompat.app.e
    public MenuInflater b() {
        if (this.g == null) {
            t();
            androidx.appcompat.app.a aVar = this.f;
            this.g = new androidx.appcompat.view.g(aVar != null ? aVar.b() : this.f634a);
        }
        return this.g;
    }

    @Override // androidx.appcompat.app.e
    public <T extends View> T a(int i) {
        u();
        return (T) this.f635b.findViewById(i);
    }

    @Override // androidx.appcompat.app.e
    public void a(Configuration configuration) {
        androidx.appcompat.app.a aVarA;
        if (this.m && this.C && (aVarA = a()) != null) {
            aVarA.a(configuration);
        }
        AppCompatDrawableManager.get().onConfigurationChanged(this.f634a);
        i();
    }

    @Override // androidx.appcompat.app.e
    public void c() {
        i();
    }

    @Override // androidx.appcompat.app.e
    public void d() {
        androidx.appcompat.app.a aVarA = a();
        if (aVarA != null) {
            aVarA.g(false);
        }
        d dVar = this.O;
        if (dVar != null) {
            dVar.d();
        }
    }

    @Override // androidx.appcompat.app.e
    public void e() {
        androidx.appcompat.app.a aVarA = a();
        if (aVarA != null) {
            aVarA.g(true);
        }
    }

    @Override // androidx.appcompat.app.e
    public void a(View view) {
        u();
        ViewGroup viewGroup = (ViewGroup) this.D.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f636c.onContentChanged();
    }

    @Override // androidx.appcompat.app.e
    public void b(int i) {
        u();
        ViewGroup viewGroup = (ViewGroup) this.D.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f634a).inflate(i, viewGroup);
        this.f636c.onContentChanged();
    }

    @Override // androidx.appcompat.app.e
    public void a(View view, ViewGroup.LayoutParams layoutParams) {
        u();
        ViewGroup viewGroup = (ViewGroup) this.D.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f636c.onContentChanged();
    }

    @Override // androidx.appcompat.app.e
    public void b(View view, ViewGroup.LayoutParams layoutParams) {
        u();
        ((ViewGroup) this.D.findViewById(R.id.content)).addView(view, layoutParams);
        this.f636c.onContentChanged();
    }

    @Override // androidx.appcompat.app.e
    public void c(Bundle bundle) {
        int i = this.M;
        if (i != -100) {
            bundle.putInt("appcompat:local_night_mode", i);
        }
    }

    @Override // androidx.appcompat.app.e
    public void g() {
        if (this.s) {
            this.f635b.getDecorView().removeCallbacks(this.P);
        }
        this.r = true;
        androidx.appcompat.app.a aVar = this.f;
        if (aVar != null) {
            aVar.g();
        }
        d dVar = this.O;
        if (dVar != null) {
            dVar.d();
        }
    }

    private void u() {
        if (this.C) {
            return;
        }
        this.D = v();
        CharSequence charSequenceN = n();
        if (!TextUtils.isEmpty(charSequenceN)) {
            DecorContentParent decorContentParent = this.y;
            if (decorContentParent != null) {
                decorContentParent.setWindowTitle(charSequenceN);
            } else if (k() != null) {
                k().b(charSequenceN);
            } else {
                TextView textView = this.E;
                if (textView != null) {
                    textView.setText(charSequenceN);
                }
            }
        }
        w();
        a(this.D);
        this.C = true;
        C0016f c0016fA = a(0, false);
        if (this.r) {
            return;
        }
        if (c0016fA == null || c0016fA.j == null) {
            j(108);
        }
    }

    private ViewGroup v() {
        ViewGroup viewGroup;
        Context dVar;
        TypedArray typedArrayObtainStyledAttributes = this.f634a.obtainStyledAttributes(a.j.AppCompatTheme);
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
        this.p = typedArrayObtainStyledAttributes.getBoolean(a.j.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        this.f635b.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f634a);
        if (!this.q) {
            if (this.p) {
                viewGroup = (ViewGroup) layoutInflaterFrom.inflate(a.g.abc_dialog_title_material, (ViewGroup) null);
                this.n = false;
                this.m = false;
            } else if (this.m) {
                TypedValue typedValue = new TypedValue();
                this.f634a.getTheme().resolveAttribute(a.C0012a.actionBarTheme, typedValue, true);
                if (typedValue.resourceId != 0) {
                    dVar = new androidx.appcompat.view.d(this.f634a, typedValue.resourceId);
                } else {
                    dVar = this.f634a;
                }
                viewGroup = (ViewGroup) LayoutInflater.from(dVar).inflate(a.g.abc_screen_toolbar, (ViewGroup) null);
                DecorContentParent decorContentParent = (DecorContentParent) viewGroup.findViewById(a.f.decor_content_parent);
                this.y = decorContentParent;
                decorContentParent.setWindowCallback(l());
                if (this.n) {
                    this.y.initFeature(109);
                }
                if (this.G) {
                    this.y.initFeature(2);
                }
                if (this.H) {
                    this.y.initFeature(5);
                }
            } else {
                viewGroup = null;
            }
        } else {
            if (this.o) {
                viewGroup = (ViewGroup) layoutInflaterFrom.inflate(a.g.abc_screen_simple_overlay_action_mode, (ViewGroup) null);
            } else {
                viewGroup = (ViewGroup) layoutInflaterFrom.inflate(a.g.abc_screen_simple, (ViewGroup) null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                r.a(viewGroup, new o() { // from class: androidx.appcompat.app.f.3
                    @Override // androidx.core.h.o
                    public z a(View view, z zVar) {
                        int iB = zVar.b();
                        int iH = f.this.h(iB);
                        if (iB != iH) {
                            zVar = zVar.a(zVar.a(), iH, zVar.c(), zVar.d());
                        }
                        return r.a(view, zVar);
                    }
                });
            } else {
                ((FitWindowsViewGroup) viewGroup).setOnFitSystemWindowsListener(new FitWindowsViewGroup.OnFitSystemWindowsListener() { // from class: androidx.appcompat.app.f.4
                    @Override // androidx.appcompat.widget.FitWindowsViewGroup.OnFitSystemWindowsListener
                    public void onFitSystemWindows(Rect rect) {
                        rect.top = f.this.h(rect.top);
                    }
                });
            }
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.m + ", windowActionBarOverlay: " + this.n + ", android:windowIsFloating: " + this.p + ", windowActionModeOverlay: " + this.o + ", windowNoTitle: " + this.q + " }");
        }
        if (this.y == null) {
            this.E = (TextView) viewGroup.findViewById(a.f.title);
        }
        ViewUtils.makeOptionalFitsSystemWindows(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(a.f.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f635b.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f635b.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new ContentFrameLayout.OnAttachListener() { // from class: androidx.appcompat.app.f.5
            @Override // androidx.appcompat.widget.ContentFrameLayout.OnAttachListener
            public void onAttachedFromWindow() {
            }

            @Override // androidx.appcompat.widget.ContentFrameLayout.OnAttachListener
            public void onDetachedFromWindow() {
                f.this.s();
            }
        });
        return viewGroup;
    }

    private void w() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.D.findViewById(R.id.content);
        View decorView = this.f635b.getDecorView();
        contentFrameLayout.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes = this.f634a.obtainStyledAttributes(a.j.AppCompatTheme);
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

    @Override // androidx.appcompat.app.e
    public boolean c(int i) {
        int iK = k(i);
        if (this.q && iK == 108) {
            return false;
        }
        if (this.m && iK == 1) {
            this.m = false;
        }
        if (iK == 1) {
            x();
            this.q = true;
            return true;
        }
        if (iK == 2) {
            x();
            this.G = true;
            return true;
        }
        if (iK == 5) {
            x();
            this.H = true;
            return true;
        }
        if (iK == 10) {
            x();
            this.o = true;
            return true;
        }
        if (iK == 108) {
            x();
            this.m = true;
            return true;
        }
        if (iK == 109) {
            x();
            this.n = true;
            return true;
        }
        return this.f635b.requestFeature(iK);
    }

    @Override // androidx.appcompat.app.e
    public final void a(CharSequence charSequence) {
        this.x = charSequence;
        DecorContentParent decorContentParent = this.y;
        if (decorContentParent != null) {
            decorContentParent.setWindowTitle(charSequence);
            return;
        }
        if (k() != null) {
            k().b(charSequence);
            return;
        }
        TextView textView = this.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    final CharSequence n() {
        Window.Callback callback = this.f636c;
        if (callback instanceof Activity) {
            return ((Activity) callback).getTitle();
        }
        return this.x;
    }

    void d(int i) {
        if (i == 108) {
            androidx.appcompat.app.a aVarA = a();
            if (aVarA != null) {
                aVarA.h(false);
                return;
            }
            return;
        }
        if (i == 0) {
            C0016f c0016fA = a(i, true);
            if (c0016fA.o) {
                a(c0016fA, false);
            }
        }
    }

    void e(int i) {
        androidx.appcompat.app.a aVarA;
        if (i != 108 || (aVarA = a()) == null) {
            return;
        }
        aVarA.h(true);
    }

    @Override // androidx.appcompat.view.menu.h.a
    public boolean a(androidx.appcompat.view.menu.h hVar, MenuItem menuItem) {
        C0016f c0016fA;
        Window.Callback callbackL = l();
        if (callbackL == null || this.r || (c0016fA = a((Menu) hVar.q())) == null) {
            return false;
        }
        return callbackL.onMenuItemSelected(c0016fA.f659a, menuItem);
    }

    @Override // androidx.appcompat.view.menu.h.a
    public void a(androidx.appcompat.view.menu.h hVar) {
        a(hVar, true);
    }

    public androidx.appcompat.view.b a(b.a aVar) {
        androidx.appcompat.app.d dVar;
        if (aVar == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        androidx.appcompat.view.b bVar = this.h;
        if (bVar != null) {
            bVar.c();
        }
        b bVar2 = new b(aVar);
        androidx.appcompat.app.a aVarA = a();
        if (aVarA != null) {
            androidx.appcompat.view.b bVarA = aVarA.a(bVar2);
            this.h = bVarA;
            if (bVarA != null && (dVar = this.f638e) != null) {
                dVar.a(bVarA);
            }
        }
        if (this.h == null) {
            this.h = b(bVar2);
        }
        return this.h;
    }

    @Override // androidx.appcompat.app.e
    public void f() {
        androidx.appcompat.app.a aVarA = a();
        if (aVarA == null || !aVarA.e()) {
            j(0);
        }
    }

    androidx.appcompat.view.b b(b.a aVar) {
        androidx.appcompat.view.b bVarA;
        Context dVar;
        androidx.appcompat.app.d dVar2;
        q();
        androidx.appcompat.view.b bVar = this.h;
        if (bVar != null) {
            bVar.c();
        }
        if (!(aVar instanceof b)) {
            aVar = new b(aVar);
        }
        androidx.appcompat.app.d dVar3 = this.f638e;
        if (dVar3 == null || this.r) {
            bVarA = null;
        } else {
            try {
                bVarA = dVar3.a(aVar);
            } catch (AbstractMethodError unused) {
                bVarA = null;
            }
        }
        if (bVarA != null) {
            this.h = bVarA;
        } else {
            if (this.i == null) {
                if (this.p) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = this.f634a.getTheme();
                    theme.resolveAttribute(a.C0012a.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = this.f634a.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        dVar = new androidx.appcompat.view.d(this.f634a, 0);
                        dVar.getTheme().setTo(themeNewTheme);
                    } else {
                        dVar = this.f634a;
                    }
                    this.i = new ActionBarContextView(dVar);
                    PopupWindow popupWindow = new PopupWindow(dVar, (AttributeSet) null, a.C0012a.actionModePopupWindowStyle);
                    this.j = popupWindow;
                    androidx.core.widget.h.a(popupWindow, 2);
                    this.j.setContentView(this.i);
                    this.j.setWidth(-1);
                    dVar.getTheme().resolveAttribute(a.C0012a.actionBarSize, typedValue, true);
                    this.i.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, dVar.getResources().getDisplayMetrics()));
                    this.j.setHeight(-2);
                    this.k = new Runnable() { // from class: androidx.appcompat.app.f.6
                        @Override // java.lang.Runnable
                        public void run() {
                            f.this.j.showAtLocation(f.this.i, 55, 0, 0);
                            f.this.q();
                            if (f.this.o()) {
                                f.this.i.setAlpha(0.0f);
                                f fVar = f.this;
                                fVar.l = r.k(fVar.i).a(1.0f);
                                f.this.l.a(new x() { // from class: androidx.appcompat.app.f.6.1
                                    @Override // androidx.core.h.x, androidx.core.h.w
                                    public void onAnimationStart(View view) {
                                        f.this.i.setVisibility(0);
                                    }

                                    @Override // androidx.core.h.x, androidx.core.h.w
                                    public void onAnimationEnd(View view) {
                                        f.this.i.setAlpha(1.0f);
                                        f.this.l.a((w) null);
                                        f.this.l = null;
                                    }
                                });
                                return;
                            }
                            f.this.i.setAlpha(1.0f);
                            f.this.i.setVisibility(0);
                        }
                    };
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.D.findViewById(a.f.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(m()));
                        this.i = (ActionBarContextView) viewStubCompat.inflate();
                    }
                }
            }
            if (this.i != null) {
                q();
                this.i.killMode();
                androidx.appcompat.view.e eVar = new androidx.appcompat.view.e(this.i.getContext(), this.i, aVar, this.j == null);
                if (aVar.a(eVar, eVar.b())) {
                    eVar.d();
                    this.i.initForMode(eVar);
                    this.h = eVar;
                    if (o()) {
                        this.i.setAlpha(0.0f);
                        v vVarA = r.k(this.i).a(1.0f);
                        this.l = vVarA;
                        vVarA.a(new x() { // from class: androidx.appcompat.app.f.7
                            @Override // androidx.core.h.x, androidx.core.h.w
                            public void onAnimationStart(View view) {
                                f.this.i.setVisibility(0);
                                f.this.i.sendAccessibilityEvent(32);
                                if (f.this.i.getParent() instanceof View) {
                                    r.o((View) f.this.i.getParent());
                                }
                            }

                            @Override // androidx.core.h.x, androidx.core.h.w
                            public void onAnimationEnd(View view) {
                                f.this.i.setAlpha(1.0f);
                                f.this.l.a((w) null);
                                f.this.l = null;
                            }
                        });
                    } else {
                        this.i.setAlpha(1.0f);
                        this.i.setVisibility(0);
                        this.i.sendAccessibilityEvent(32);
                        if (this.i.getParent() instanceof View) {
                            r.o((View) this.i.getParent());
                        }
                    }
                    if (this.j != null) {
                        this.f635b.getDecorView().post(this.k);
                    }
                } else {
                    this.h = null;
                }
            }
        }
        androidx.appcompat.view.b bVar2 = this.h;
        if (bVar2 != null && (dVar2 = this.f638e) != null) {
            dVar2.a(bVar2);
        }
        return this.h;
    }

    final boolean o() {
        ViewGroup viewGroup;
        return this.C && (viewGroup = this.D) != null && r.w(viewGroup);
    }

    public boolean p() {
        return this.B;
    }

    void q() {
        v vVar = this.l;
        if (vVar != null) {
            vVar.b();
        }
    }

    boolean r() {
        androidx.appcompat.view.b bVar = this.h;
        if (bVar != null) {
            bVar.c();
            return true;
        }
        androidx.appcompat.app.a aVarA = a();
        return aVarA != null && aVarA.f();
    }

    boolean a(int i, KeyEvent keyEvent) {
        androidx.appcompat.app.a aVarA = a();
        if (aVarA != null && aVarA.a(i, keyEvent)) {
            return true;
        }
        C0016f c0016f = this.K;
        if (c0016f != null && a(c0016f, keyEvent.getKeyCode(), keyEvent, 1)) {
            C0016f c0016f2 = this.K;
            if (c0016f2 != null) {
                c0016f2.n = true;
            }
            return true;
        }
        if (this.K == null) {
            C0016f c0016fA = a(0, true);
            b(c0016fA, keyEvent);
            boolean zA = a(c0016fA, keyEvent.getKeyCode(), keyEvent, 1);
            c0016fA.m = false;
            if (zA) {
                return true;
            }
        }
        return false;
    }

    boolean a(KeyEvent keyEvent) {
        View decorView;
        Window.Callback callback = this.f636c;
        if (((callback instanceof d.a) || (callback instanceof androidx.appcompat.app.g)) && (decorView = this.f635b.getDecorView()) != null && androidx.core.h.d.a(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f636c.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? c(keyCode, keyEvent) : b(keyCode, keyEvent);
    }

    boolean b(int i, KeyEvent keyEvent) {
        if (i == 4) {
            boolean z = this.L;
            this.L = false;
            C0016f c0016fA = a(0, false);
            if (c0016fA != null && c0016fA.o) {
                if (!z) {
                    a(c0016fA, true);
                }
                return true;
            }
            if (r()) {
                return true;
            }
        } else if (i == 82) {
            e(0, keyEvent);
            return true;
        }
        return false;
    }

    boolean c(int i, KeyEvent keyEvent) {
        if (i == 4) {
            this.L = (keyEvent.getFlags() & 128) != 0;
        } else if (i == 82) {
            d(0, keyEvent);
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View a(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        boolean zA = false;
        if (this.T == null) {
            String string = this.f634a.obtainStyledAttributes(a.j.AppCompatTheme).getString(a.j.AppCompatTheme_viewInflaterClass);
            if (string == null || AppCompatViewInflater.class.getName().equals(string)) {
                this.T = new AppCompatViewInflater();
            } else {
                try {
                    this.T = (AppCompatViewInflater) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.T = new AppCompatViewInflater();
                }
            }
        }
        if (u) {
            if (attributeSet instanceof XmlPullParser) {
                if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    zA = true;
                }
            } else {
                zA = a((ViewParent) view);
            }
            z = zA;
        } else {
            z = false;
        }
        return this.T.createView(view, str, context, attributeSet, z, u, true, VectorEnabledTintResources.shouldBeUsed());
    }

    private boolean a(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f635b.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || r.z((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    @Override // androidx.appcompat.app.e
    public void h() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f634a);
        if (layoutInflaterFrom.getFactory() == null) {
            androidx.core.h.e.a(layoutInflaterFrom, this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof f) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return a(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    private void a(C0016f c0016f, KeyEvent keyEvent) {
        int i;
        ViewGroup.LayoutParams layoutParams;
        if (c0016f.o || this.r) {
            return;
        }
        if (c0016f.f659a == 0) {
            if ((this.f634a.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        Window.Callback callbackL = l();
        if (callbackL != null && !callbackL.onMenuOpened(c0016f.f659a, c0016f.j)) {
            a(c0016f, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f634a.getSystemService("window");
        if (windowManager != null && b(c0016f, keyEvent)) {
            if (c0016f.g == null || c0016f.q) {
                if (c0016f.g == null) {
                    if (!a(c0016f) || c0016f.g == null) {
                        return;
                    }
                } else if (c0016f.q && c0016f.g.getChildCount() > 0) {
                    c0016f.g.removeAllViews();
                }
                if (!c(c0016f) || !c0016f.a()) {
                    return;
                }
                ViewGroup.LayoutParams layoutParams2 = c0016f.h.getLayoutParams();
                if (layoutParams2 == null) {
                    layoutParams2 = new ViewGroup.LayoutParams(-2, -2);
                }
                c0016f.g.setBackgroundResource(c0016f.f660b);
                ViewParent parent = c0016f.h.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(c0016f.h);
                }
                c0016f.g.addView(c0016f.h, layoutParams2);
                if (!c0016f.h.hasFocus()) {
                    c0016f.h.requestFocus();
                }
            } else {
                if (c0016f.i != null && (layoutParams = c0016f.i.getLayoutParams()) != null && layoutParams.width == -1) {
                    i = -1;
                }
                c0016f.n = false;
                WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams(i, -2, c0016f.f662d, c0016f.f663e, 1002, 8519680, -3);
                layoutParams3.gravity = c0016f.f661c;
                layoutParams3.windowAnimations = c0016f.f;
                windowManager.addView(c0016f.g, layoutParams3);
                c0016f.o = true;
            }
            i = -2;
            c0016f.n = false;
            WindowManager.LayoutParams layoutParams32 = new WindowManager.LayoutParams(i, -2, c0016f.f662d, c0016f.f663e, 1002, 8519680, -3);
            layoutParams32.gravity = c0016f.f661c;
            layoutParams32.windowAnimations = c0016f.f;
            windowManager.addView(c0016f.g, layoutParams32);
            c0016f.o = true;
        }
    }

    private boolean a(C0016f c0016f) {
        c0016f.a(m());
        c0016f.g = new e(c0016f.l);
        c0016f.f661c = 81;
        return true;
    }

    private void a(androidx.appcompat.view.menu.h hVar, boolean z) {
        DecorContentParent decorContentParent = this.y;
        if (decorContentParent != null && decorContentParent.canShowOverflowMenu() && (!ViewConfiguration.get(this.f634a).hasPermanentMenuKey() || this.y.isOverflowMenuShowPending())) {
            Window.Callback callbackL = l();
            if (!this.y.isOverflowMenuShowing() || !z) {
                if (callbackL == null || this.r) {
                    return;
                }
                if (this.s && (this.t & 1) != 0) {
                    this.f635b.getDecorView().removeCallbacks(this.P);
                    this.P.run();
                }
                C0016f c0016fA = a(0, true);
                if (c0016fA.j == null || c0016fA.r || !callbackL.onPreparePanel(0, c0016fA.i, c0016fA.j)) {
                    return;
                }
                callbackL.onMenuOpened(108, c0016fA.j);
                this.y.showOverflowMenu();
                return;
            }
            this.y.hideOverflowMenu();
            if (this.r) {
                return;
            }
            callbackL.onPanelClosed(108, a(0, true).j);
            return;
        }
        C0016f c0016fA2 = a(0, true);
        c0016fA2.q = true;
        a(c0016fA2, false);
        a(c0016fA2, (KeyEvent) null);
    }

    private boolean b(C0016f c0016f) {
        Context context = this.f634a;
        if ((c0016f.f659a == 0 || c0016f.f659a == 108) && this.y != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(a.C0012a.actionBarTheme, typedValue, true);
            Resources.Theme themeNewTheme = null;
            if (typedValue.resourceId != 0) {
                themeNewTheme = context.getResources().newTheme();
                themeNewTheme.setTo(theme);
                themeNewTheme.applyStyle(typedValue.resourceId, true);
                themeNewTheme.resolveAttribute(a.C0012a.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(a.C0012a.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (themeNewTheme == null) {
                    themeNewTheme = context.getResources().newTheme();
                    themeNewTheme.setTo(theme);
                }
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            if (themeNewTheme != null) {
                androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
                dVar.getTheme().setTo(themeNewTheme);
                context = dVar;
            }
        }
        androidx.appcompat.view.menu.h hVar = new androidx.appcompat.view.menu.h(context);
        hVar.a(this);
        c0016f.a(hVar);
        return true;
    }

    private boolean c(C0016f c0016f) {
        if (c0016f.i != null) {
            c0016f.h = c0016f.i;
            return true;
        }
        if (c0016f.j == null) {
            return false;
        }
        if (this.A == null) {
            this.A = new g();
        }
        c0016f.h = (View) c0016f.a(this.A);
        return c0016f.h != null;
    }

    private boolean b(C0016f c0016f, KeyEvent keyEvent) {
        DecorContentParent decorContentParent;
        DecorContentParent decorContentParent2;
        DecorContentParent decorContentParent3;
        if (this.r) {
            return false;
        }
        if (c0016f.m) {
            return true;
        }
        C0016f c0016f2 = this.K;
        if (c0016f2 != null && c0016f2 != c0016f) {
            a(c0016f2, false);
        }
        Window.Callback callbackL = l();
        if (callbackL != null) {
            c0016f.i = callbackL.onCreatePanelView(c0016f.f659a);
        }
        boolean z = c0016f.f659a == 0 || c0016f.f659a == 108;
        if (z && (decorContentParent3 = this.y) != null) {
            decorContentParent3.setMenuPrepared();
        }
        if (c0016f.i == null && (!z || !(k() instanceof j))) {
            if (c0016f.j == null || c0016f.r) {
                if (c0016f.j == null && (!b(c0016f) || c0016f.j == null)) {
                    return false;
                }
                if (z && this.y != null) {
                    if (this.z == null) {
                        this.z = new a();
                    }
                    this.y.setMenu(c0016f.j, this.z);
                }
                c0016f.j.h();
                if (!callbackL.onCreatePanelMenu(c0016f.f659a, c0016f.j)) {
                    c0016f.a((androidx.appcompat.view.menu.h) null);
                    if (z && (decorContentParent = this.y) != null) {
                        decorContentParent.setMenu(null, this.z);
                    }
                    return false;
                }
                c0016f.r = false;
            }
            c0016f.j.h();
            if (c0016f.s != null) {
                c0016f.j.b(c0016f.s);
                c0016f.s = null;
            }
            if (!callbackL.onPreparePanel(0, c0016f.i, c0016f.j)) {
                if (z && (decorContentParent2 = this.y) != null) {
                    decorContentParent2.setMenu(null, this.z);
                }
                c0016f.j.i();
                return false;
            }
            c0016f.p = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            c0016f.j.setQwertyMode(c0016f.p);
            c0016f.j.i();
        }
        c0016f.m = true;
        c0016f.n = false;
        this.K = c0016f;
        return true;
    }

    void b(androidx.appcompat.view.menu.h hVar) {
        if (this.I) {
            return;
        }
        this.I = true;
        this.y.dismissPopups();
        Window.Callback callbackL = l();
        if (callbackL != null && !this.r) {
            callbackL.onPanelClosed(108, hVar);
        }
        this.I = false;
    }

    void f(int i) {
        a(a(i, true), true);
    }

    void a(C0016f c0016f, boolean z) {
        DecorContentParent decorContentParent;
        if (z && c0016f.f659a == 0 && (decorContentParent = this.y) != null && decorContentParent.isOverflowMenuShowing()) {
            b(c0016f.j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f634a.getSystemService("window");
        if (windowManager != null && c0016f.o && c0016f.g != null) {
            windowManager.removeView(c0016f.g);
            if (z) {
                a(c0016f.f659a, c0016f, null);
            }
        }
        c0016f.m = false;
        c0016f.n = false;
        c0016f.o = false;
        c0016f.h = null;
        c0016f.q = true;
        if (this.K == c0016f) {
            this.K = null;
        }
    }

    private boolean d(int i, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        C0016f c0016fA = a(i, true);
        if (c0016fA.o) {
            return false;
        }
        return b(c0016fA, keyEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean e(int r4, android.view.KeyEvent r5) {
        /*
            r3 = this;
            androidx.appcompat.view.b r0 = r3.h
            r1 = 0
            if (r0 == 0) goto L6
            return r1
        L6:
            r0 = 1
            androidx.appcompat.app.f$f r2 = r3.a(r4, r0)
            if (r4 != 0) goto L43
            androidx.appcompat.widget.DecorContentParent r4 = r3.y
            if (r4 == 0) goto L43
            boolean r4 = r4.canShowOverflowMenu()
            if (r4 == 0) goto L43
            android.content.Context r4 = r3.f634a
            android.view.ViewConfiguration r4 = android.view.ViewConfiguration.get(r4)
            boolean r4 = r4.hasPermanentMenuKey()
            if (r4 != 0) goto L43
            androidx.appcompat.widget.DecorContentParent r4 = r3.y
            boolean r4 = r4.isOverflowMenuShowing()
            if (r4 != 0) goto L3c
            boolean r4 = r3.r
            if (r4 != 0) goto L62
            boolean r4 = r3.b(r2, r5)
            if (r4 == 0) goto L62
            androidx.appcompat.widget.DecorContentParent r4 = r3.y
            boolean r0 = r4.showOverflowMenu()
            goto L6a
        L3c:
            androidx.appcompat.widget.DecorContentParent r4 = r3.y
            boolean r0 = r4.hideOverflowMenu()
            goto L6a
        L43:
            boolean r4 = r2.o
            if (r4 != 0) goto L64
            boolean r4 = r2.n
            if (r4 == 0) goto L4c
            goto L64
        L4c:
            boolean r4 = r2.m
            if (r4 == 0) goto L62
            boolean r4 = r2.r
            if (r4 == 0) goto L5b
            r2.m = r1
            boolean r4 = r3.b(r2, r5)
            goto L5c
        L5b:
            r4 = 1
        L5c:
            if (r4 == 0) goto L62
            r3.a(r2, r5)
            goto L6a
        L62:
            r0 = 0
            goto L6a
        L64:
            boolean r4 = r2.o
            r3.a(r2, r0)
            r0 = r4
        L6a:
            if (r0 == 0) goto L83
            android.content.Context r4 = r3.f634a
            java.lang.String r5 = "audio"
            java.lang.Object r4 = r4.getSystemService(r5)
            android.media.AudioManager r4 = (android.media.AudioManager) r4
            if (r4 == 0) goto L7c
            r4.playSoundEffect(r1)
            goto L83
        L7c:
            java.lang.String r4 = "AppCompatDelegate"
            java.lang.String r5 = "Couldn't get audio manager"
            android.util.Log.w(r4, r5)
        L83:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.f.e(int, android.view.KeyEvent):boolean");
    }

    void a(int i, C0016f c0016f, Menu menu) {
        if (menu == null) {
            if (c0016f == null && i >= 0) {
                C0016f[] c0016fArr = this.J;
                if (i < c0016fArr.length) {
                    c0016f = c0016fArr[i];
                }
            }
            if (c0016f != null) {
                menu = c0016f.j;
            }
        }
        if ((c0016f == null || c0016f.o) && !this.r) {
            this.f636c.onPanelClosed(i, menu);
        }
    }

    C0016f a(Menu menu) {
        C0016f[] c0016fArr = this.J;
        int length = c0016fArr != null ? c0016fArr.length : 0;
        for (int i = 0; i < length; i++) {
            C0016f c0016f = c0016fArr[i];
            if (c0016f != null && c0016f.j == menu) {
                return c0016f;
            }
        }
        return null;
    }

    protected C0016f a(int i, boolean z) {
        C0016f[] c0016fArr = this.J;
        if (c0016fArr == null || c0016fArr.length <= i) {
            C0016f[] c0016fArr2 = new C0016f[i + 1];
            if (c0016fArr != null) {
                System.arraycopy(c0016fArr, 0, c0016fArr2, 0, c0016fArr.length);
            }
            this.J = c0016fArr2;
            c0016fArr = c0016fArr2;
        }
        C0016f c0016f = c0016fArr[i];
        if (c0016f != null) {
            return c0016f;
        }
        C0016f c0016f2 = new C0016f(i);
        c0016fArr[i] = c0016f2;
        return c0016f2;
    }

    private boolean a(C0016f c0016f, int i, KeyEvent keyEvent, int i2) {
        boolean zPerformShortcut = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((c0016f.m || b(c0016f, keyEvent)) && c0016f.j != null) {
            zPerformShortcut = c0016f.j.performShortcut(i, keyEvent, i2);
        }
        if (zPerformShortcut && (i2 & 1) == 0 && this.y == null) {
            a(c0016f, true);
        }
        return zPerformShortcut;
    }

    private void j(int i) {
        this.t = (1 << i) | this.t;
        if (this.s) {
            return;
        }
        r.a(this.f635b.getDecorView(), this.P);
        this.s = true;
    }

    void g(int i) {
        C0016f c0016fA;
        C0016f c0016fA2 = a(i, true);
        if (c0016fA2.j != null) {
            Bundle bundle = new Bundle();
            c0016fA2.j.a(bundle);
            if (bundle.size() > 0) {
                c0016fA2.s = bundle;
            }
            c0016fA2.j.h();
            c0016fA2.j.clear();
        }
        c0016fA2.r = true;
        c0016fA2.q = true;
        if ((i != 108 && i != 0) || this.y == null || (c0016fA = a(0, false)) == null) {
            return;
        }
        c0016fA.m = false;
        b(c0016fA, (KeyEvent) null);
    }

    int h(int i) {
        boolean z;
        boolean z2;
        ActionBarContextView actionBarContextView = this.i;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.i.getLayoutParams();
            if (this.i.isShown()) {
                if (this.R == null) {
                    this.R = new Rect();
                    this.S = new Rect();
                }
                Rect rect = this.R;
                Rect rect2 = this.S;
                rect.set(0, i, 0, 0);
                ViewUtils.computeFitSystemWindows(this.D, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i : 0)) {
                    marginLayoutParams.topMargin = i;
                    View view = this.F;
                    if (view == null) {
                        View view2 = new View(this.f634a);
                        this.F = view2;
                        view2.setBackgroundColor(this.f634a.getResources().getColor(a.c.abc_input_method_navigation_guard));
                        this.D.addView(this.F, -1, new ViewGroup.LayoutParams(-1, i));
                    } else {
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        if (layoutParams.height != i) {
                            layoutParams.height = i;
                            this.F.setLayoutParams(layoutParams);
                        }
                    }
                    z2 = true;
                } else {
                    z2 = false;
                }
                z = this.F != null;
                if (!this.o && z) {
                    i = 0;
                }
                boolean z3 = z;
                z = z2;
                z = z3;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z = false;
            } else {
                z = false;
                z = false;
            }
            if (z) {
                this.i.setLayoutParams(marginLayoutParams);
            }
        }
        View view3 = this.F;
        if (view3 != null) {
            view3.setVisibility(z ? 0 : 8);
        }
        return i;
    }

    private void x() {
        if (this.C) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private int k(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        if (i != 9) {
            return i;
        }
        Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
        return 109;
    }

    void s() {
        DecorContentParent decorContentParent = this.y;
        if (decorContentParent != null) {
            decorContentParent.dismissPopups();
        }
        if (this.j != null) {
            this.f635b.getDecorView().removeCallbacks(this.k);
            if (this.j.isShowing()) {
                try {
                    this.j.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.j = null;
        }
        q();
        C0016f c0016fA = a(0, false);
        if (c0016fA == null || c0016fA.j == null) {
            return;
        }
        c0016fA.j.close();
    }

    @Override // androidx.appcompat.app.e
    public boolean i() {
        int iY = y();
        int i = i(iY);
        boolean zL = i != -1 ? l(i) : false;
        if (iY == 0) {
            z();
            this.O.c();
        }
        this.N = true;
        return zL;
    }

    int i(int i) {
        if (i == -100) {
            return -1;
        }
        if (i != 0) {
            return i;
        }
        if (Build.VERSION.SDK_INT >= 23 && ((UiModeManager) this.f634a.getSystemService(UiModeManager.class)).getNightMode() == 0) {
            return -1;
        }
        z();
        return this.O.a();
    }

    private int y() {
        int i = this.M;
        return i != -100 ? i : j();
    }

    private boolean l(int i) {
        Resources resources = this.f634a.getResources();
        Configuration configuration = resources.getConfiguration();
        int i2 = configuration.uiMode & 48;
        int i3 = i == 2 ? 32 : 16;
        if (i2 == i3) {
            return false;
        }
        if (A()) {
            ((Activity) this.f634a).recreate();
            return true;
        }
        Configuration configuration2 = new Configuration(configuration);
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        configuration2.uiMode = i3 | (configuration2.uiMode & (-49));
        resources.updateConfiguration(configuration2, displayMetrics);
        if (Build.VERSION.SDK_INT >= 26) {
            return true;
        }
        i.a(resources);
        return true;
    }

    private void z() {
        if (this.O == null) {
            this.O = new d(l.a(this.f634a));
        }
    }

    private boolean A() {
        if (this.N) {
            Context context = this.f634a;
            if (context instanceof Activity) {
                try {
                    return (context.getPackageManager().getActivityInfo(new ComponentName(this.f634a, this.f634a.getClass()), 0).configChanges & 512) == 0;
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e2);
                    return true;
                }
            }
        }
        return false;
    }

    class b implements b.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b.a f649b;

        public b(b.a aVar) {
            this.f649b = aVar;
        }

        @Override // androidx.appcompat.view.b.a
        public boolean a(androidx.appcompat.view.b bVar, Menu menu) {
            return this.f649b.a(bVar, menu);
        }

        @Override // androidx.appcompat.view.b.a
        public boolean b(androidx.appcompat.view.b bVar, Menu menu) {
            return this.f649b.b(bVar, menu);
        }

        @Override // androidx.appcompat.view.b.a
        public boolean a(androidx.appcompat.view.b bVar, MenuItem menuItem) {
            return this.f649b.a(bVar, menuItem);
        }

        @Override // androidx.appcompat.view.b.a
        public void a(androidx.appcompat.view.b bVar) {
            this.f649b.a(bVar);
            if (f.this.j != null) {
                f.this.f635b.getDecorView().removeCallbacks(f.this.k);
            }
            if (f.this.i != null) {
                f.this.q();
                f fVar = f.this;
                fVar.l = r.k(fVar.i).a(0.0f);
                f.this.l.a(new x() { // from class: androidx.appcompat.app.f.b.1
                    @Override // androidx.core.h.x, androidx.core.h.w
                    public void onAnimationEnd(View view) {
                        f.this.i.setVisibility(8);
                        if (f.this.j != null) {
                            f.this.j.dismiss();
                        } else if (f.this.i.getParent() instanceof View) {
                            r.o((View) f.this.i.getParent());
                        }
                        f.this.i.removeAllViews();
                        f.this.l.a((w) null);
                        f.this.l = null;
                    }
                });
            }
            if (f.this.f638e != null) {
                f.this.f638e.b(f.this.h);
            }
            f.this.h = null;
        }
    }

    private final class g implements o.a {
        g() {
        }

        @Override // androidx.appcompat.view.menu.o.a
        public void a(androidx.appcompat.view.menu.h hVar, boolean z) {
            androidx.appcompat.view.menu.h hVarQ = hVar.q();
            boolean z2 = hVarQ != hVar;
            f fVar = f.this;
            if (z2) {
                hVar = hVarQ;
            }
            C0016f c0016fA = fVar.a((Menu) hVar);
            if (c0016fA != null) {
                if (z2) {
                    f.this.a(c0016fA.f659a, c0016fA, hVarQ);
                    f.this.a(c0016fA, true);
                } else {
                    f.this.a(c0016fA, z);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.o.a
        public boolean a(androidx.appcompat.view.menu.h hVar) {
            Window.Callback callbackL;
            if (hVar != null || !f.this.m || (callbackL = f.this.l()) == null || f.this.r) {
                return true;
            }
            callbackL.onMenuOpened(108, hVar);
            return true;
        }
    }

    private final class a implements o.a {
        a() {
        }

        @Override // androidx.appcompat.view.menu.o.a
        public boolean a(androidx.appcompat.view.menu.h hVar) {
            Window.Callback callbackL = f.this.l();
            if (callbackL == null) {
                return true;
            }
            callbackL.onMenuOpened(108, hVar);
            return true;
        }

        @Override // androidx.appcompat.view.menu.o.a
        public void a(androidx.appcompat.view.menu.h hVar, boolean z) {
            f.this.b(hVar);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.f$f, reason: collision with other inner class name */
    protected static final class C0016f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f659a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f660b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f661c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f662d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f663e;
        int f;
        ViewGroup g;
        View h;
        View i;
        androidx.appcompat.view.menu.h j;
        androidx.appcompat.view.menu.f k;
        Context l;
        boolean m;
        boolean n;
        boolean o;
        public boolean p;
        boolean q = false;
        boolean r;
        Bundle s;

        C0016f(int i) {
            this.f659a = i;
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
            themeNewTheme.resolveAttribute(a.C0012a.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            themeNewTheme.resolveAttribute(a.C0012a.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            } else {
                themeNewTheme.applyStyle(a.i.Theme_AppCompat_CompactMenu, true);
            }
            androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
            dVar.getTheme().setTo(themeNewTheme);
            this.l = dVar;
            TypedArray typedArrayObtainStyledAttributes = dVar.obtainStyledAttributes(a.j.AppCompatTheme);
            this.f660b = typedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTheme_panelBackground, 0);
            this.f = typedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTheme_android_windowAnimationStyle, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        void a(androidx.appcompat.view.menu.h hVar) {
            androidx.appcompat.view.menu.f fVar;
            androidx.appcompat.view.menu.h hVar2 = this.j;
            if (hVar == hVar2) {
                return;
            }
            if (hVar2 != null) {
                hVar2.b(this.k);
            }
            this.j = hVar;
            if (hVar == null || (fVar = this.k) == null) {
                return;
            }
            hVar.a(fVar);
        }

        p a(o.a aVar) {
            if (this.j == null) {
                return null;
            }
            if (this.k == null) {
                androidx.appcompat.view.menu.f fVar = new androidx.appcompat.view.menu.f(this.l, a.g.abc_list_menu_item_layout);
                this.k = fVar;
                fVar.a(aVar);
                this.j.a(this.k);
            }
            return this.k.a(this.g);
        }
    }

    private class e extends ContentFrameLayout {
        public e(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return f.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                f.this.f(0);
                return true;
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(androidx.appcompat.a.a.a.b(getContext(), i));
        }

        private boolean a(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }
    }

    class c extends androidx.appcompat.view.i {
        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public void onContentChanged() {
        }

        c(Window.Callback callback) {
            super(callback);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return f.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || f.this.a(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof androidx.appcompat.view.menu.h)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            androidx.appcompat.view.menu.h hVar = menu instanceof androidx.appcompat.view.menu.h ? (androidx.appcompat.view.menu.h) menu : null;
            if (i == 0 && hVar == null) {
                return false;
            }
            if (hVar != null) {
                hVar.c(true);
            }
            boolean zOnPreparePanel = super.onPreparePanel(i, view, menu);
            if (hVar != null) {
                hVar.c(false);
            }
            return zOnPreparePanel;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            f.this.e(i);
            return true;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            f.this.d(i);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            if (f.this.p()) {
                return a(callback);
            }
            return super.onWindowStartingActionMode(callback);
        }

        final ActionMode a(ActionMode.Callback callback) {
            f.a aVar = new f.a(f.this.f634a, callback);
            androidx.appcompat.view.b bVarA = f.this.a(aVar);
            if (bVarA != null) {
                return aVar.b(bVarA);
            }
            return null;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            if (f.this.p() && i == 0) {
                return a(callback);
            }
            return super.onWindowStartingActionMode(callback, i);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            C0016f c0016fA = f.this.a(0, true);
            if (c0016fA != null && c0016fA.j != null) {
                super.onProvideKeyboardShortcuts(list, c0016fA.j, i);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i);
            }
        }
    }

    final class d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private l f653b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f654c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private BroadcastReceiver f655d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private IntentFilter f656e;

        d(l lVar) {
            this.f653b = lVar;
            this.f654c = lVar.a();
        }

        int a() {
            boolean zA = this.f653b.a();
            this.f654c = zA;
            return zA ? 2 : 1;
        }

        void b() {
            boolean zA = this.f653b.a();
            if (zA != this.f654c) {
                this.f654c = zA;
                f.this.i();
            }
        }

        void c() {
            d();
            if (this.f655d == null) {
                this.f655d = new BroadcastReceiver() { // from class: androidx.appcompat.app.f.d.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        d.this.b();
                    }
                };
            }
            if (this.f656e == null) {
                IntentFilter intentFilter = new IntentFilter();
                this.f656e = intentFilter;
                intentFilter.addAction("android.intent.action.TIME_SET");
                this.f656e.addAction("android.intent.action.TIMEZONE_CHANGED");
                this.f656e.addAction("android.intent.action.TIME_TICK");
            }
            f.this.f634a.registerReceiver(this.f655d, this.f656e);
        }

        void d() {
            if (this.f655d != null) {
                f.this.f634a.unregisterReceiver(this.f655d);
                this.f655d = null;
            }
        }
    }
}
