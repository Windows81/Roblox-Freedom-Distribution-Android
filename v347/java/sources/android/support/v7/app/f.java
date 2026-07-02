package android.support.v7.app;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.view.b;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.Window;
import java.lang.Thread;

/* JADX INFO: loaded from: classes.dex */
abstract class f extends e {
    private static boolean m;
    private static final boolean n;
    private static final int[] o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f1230a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Window f1231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Window.Callback f1232c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Window.Callback f1233d;
    final d e;
    android.support.v7.app.a f;
    MenuInflater g;
    boolean h;
    boolean i;
    boolean j;
    boolean k;
    boolean l;
    private CharSequence p;
    private boolean q;
    private boolean r;

    abstract android.support.v7.view.b a(b.a aVar);

    abstract void a(int i, Menu menu);

    abstract boolean a(int i, KeyEvent keyEvent);

    abstract boolean a(KeyEvent keyEvent);

    abstract void b(CharSequence charSequence);

    abstract boolean b(int i, Menu menu);

    abstract void l();

    static {
        n = Build.VERSION.SDK_INT < 21;
        if (n && !m) {
            final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: android.support.v7.app.f.1
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
            m = true;
        }
        o = new int[]{R.attr.windowBackground};
    }

    f(Context context, Window window, d dVar) {
        this.f1230a = context;
        this.f1231b = window;
        this.e = dVar;
        this.f1232c = this.f1231b.getCallback();
        if (this.f1232c instanceof a) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        this.f1233d = a(this.f1232c);
        this.f1231b.setCallback(this.f1233d);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, (AttributeSet) null, o);
        Drawable drawableIfKnown = tintTypedArrayObtainStyledAttributes.getDrawableIfKnown(0);
        if (drawableIfKnown != null) {
            this.f1231b.setBackgroundDrawable(drawableIfKnown);
        }
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    Window.Callback a(Window.Callback callback) {
        return new a(callback);
    }

    @Override // android.support.v7.app.e
    public android.support.v7.app.a a() {
        l();
        return this.f;
    }

    final android.support.v7.app.a m() {
        return this.f;
    }

    @Override // android.support.v7.app.e
    public MenuInflater b() {
        if (this.g == null) {
            l();
            this.g = new android.support.v7.view.g(this.f != null ? this.f.b() : this.f1230a);
        }
        return this.g;
    }

    final Context n() {
        Context contextB = null;
        android.support.v7.app.a aVarA = a();
        if (aVarA != null) {
            contextB = aVarA.b();
        }
        if (contextB == null) {
            return this.f1230a;
        }
        return contextB;
    }

    @Override // android.support.v7.app.e
    public void c() {
        this.q = true;
    }

    @Override // android.support.v7.app.e
    public void d() {
        this.q = false;
    }

    @Override // android.support.v7.app.e
    public void g() {
        this.r = true;
    }

    public boolean o() {
        return false;
    }

    @Override // android.support.v7.app.e
    public boolean i() {
        return false;
    }

    final boolean p() {
        return this.r;
    }

    final Window.Callback q() {
        return this.f1231b.getCallback();
    }

    @Override // android.support.v7.app.e
    public final void a(CharSequence charSequence) {
        this.p = charSequence;
        b(charSequence);
    }

    @Override // android.support.v7.app.e
    public void c(Bundle bundle) {
    }

    final CharSequence r() {
        return this.f1232c instanceof Activity ? ((Activity) this.f1232c).getTitle() : this.p;
    }

    class a extends android.support.v7.view.i {
        a(Window.Callback callback) {
            super(callback);
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return f.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || f.this.a(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof android.support.v7.view.menu.h)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            android.support.v7.view.menu.h hVar = menu instanceof android.support.v7.view.menu.h ? (android.support.v7.view.menu.h) menu : null;
            if (i == 0 && hVar == null) {
                return false;
            }
            if (hVar != null) {
                hVar.c(true);
            }
            boolean zOnPreparePanel = super.onPreparePanel(i, view, menu);
            if (hVar != null) {
                hVar.c(false);
                return zOnPreparePanel;
            }
            return zOnPreparePanel;
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            f.this.b(i, menu);
            return true;
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            f.this.a(i, menu);
        }
    }
}
