package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@TargetApi(14)
public final class akf implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final long f4113a = ((Long) aoo.f().a(aro.bn)).longValue();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f4114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Application f4115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WindowManager f4116d;
    private final PowerManager e;
    private final KeyguardManager f;
    private BroadcastReceiver g;
    private WeakReference<ViewTreeObserver> h;
    private WeakReference<View> i;
    private akk j;
    private ln k = new ln(f4113a);
    private boolean l = false;
    private int m = -1;
    private final HashSet<akj> n = new HashSet<>();
    private final DisplayMetrics o;
    private final Rect p;

    public akf(Context context, View view) {
        this.f4114b = context.getApplicationContext();
        this.f4116d = (WindowManager) context.getSystemService("window");
        this.e = (PowerManager) this.f4114b.getSystemService("power");
        this.f = (KeyguardManager) context.getSystemService("keyguard");
        if (this.f4114b instanceof Application) {
            this.f4115c = (Application) this.f4114b;
            this.j = new akk((Application) this.f4114b, this);
        }
        this.o = context.getResources().getDisplayMetrics();
        this.p = new Rect();
        this.p.right = this.f4116d.getDefaultDisplay().getWidth();
        this.p.bottom = this.f4116d.getDefaultDisplay().getHeight();
        View view2 = this.i != null ? this.i.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            b(view2);
        }
        this.i = new WeakReference<>(view);
        if (view != null) {
            if (com.google.android.gms.ads.internal.aw.g().a(view)) {
                a(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    private final Rect a(Rect rect) {
        return new Rect(b(rect.left), b(rect.top), b(rect.right), b(rect.bottom));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(int i) {
        if (this.n.size() == 0 || this.i == null) {
            return;
        }
        View view = this.i.get();
        boolean z = i == 1;
        boolean z2 = view == null;
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        boolean globalVisibleRect = false;
        Rect rect3 = new Rect();
        boolean localVisibleRect = false;
        Rect rect4 = new Rect();
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        if (view != null) {
            globalVisibleRect = view.getGlobalVisibleRect(rect2);
            localVisibleRect = view.getLocalVisibleRect(rect3);
            view.getHitRect(rect4);
            try {
                view.getLocationOnScreen(iArr);
                view.getLocationInWindow(iArr2);
            } catch (Exception e) {
                jd.b("Failure getting view location.", e);
            }
            rect.left = iArr[0];
            rect.top = iArr[1];
            rect.right = rect.left + view.getWidth();
            rect.bottom = rect.top + view.getHeight();
        }
        int windowVisibility = view != null ? view.getWindowVisibility() : 8;
        if (this.m != -1) {
            windowVisibility = this.m;
        }
        boolean z3 = !z2 && com.google.android.gms.ads.internal.aw.e().a(view, this.e, this.f) && globalVisibleRect && localVisibleRect && windowVisibility == 0;
        if (z && !this.k.a() && z3 == this.l) {
            return;
        }
        if (z3 || this.l || i != 1) {
            aki akiVar = new aki(com.google.android.gms.ads.internal.aw.l().b(), this.e.isScreenOn(), view != null ? com.google.android.gms.ads.internal.aw.g().a(view) : false, view != null ? view.getWindowVisibility() : 8, a(this.p), a(rect), a(rect2), globalVisibleRect, a(rect3), localVisibleRect, a(rect4), this.o.density, z3);
            Iterator<akj> it = this.n.iterator();
            while (it.hasNext()) {
                it.next().a(akiVar);
            }
            this.l = z3;
        }
    }

    private final void a(Activity activity, int i) {
        Window window;
        if (this.i == null || (window = activity.getWindow()) == null) {
            return;
        }
        View viewPeekDecorView = window.peekDecorView();
        View view = this.i.get();
        if (view == null || viewPeekDecorView == null || view.getRootView() != viewPeekDecorView.getRootView()) {
            return;
        }
        this.m = i;
    }

    private final void a(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.h = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.g == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.g = new akh(this);
            com.google.android.gms.ads.internal.aw.E().a(this.f4114b, this.g, intentFilter);
        }
        if (this.f4115c != null) {
            try {
                this.f4115c.registerActivityLifecycleCallbacks(this.j);
            } catch (Exception e) {
                jd.b("Error registering activity lifecycle callbacks.", e);
            }
        }
    }

    private final int b(int i) {
        return (int) (i / this.o.density);
    }

    private final void b() {
        com.google.android.gms.ads.internal.aw.e();
        jm.f5184a.post(new akg(this));
    }

    private final void b(View view) {
        try {
            if (this.h != null) {
                ViewTreeObserver viewTreeObserver = this.h.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.h = null;
            }
        } catch (Exception e) {
            jd.b("Error while unregistering listeners from the last ViewTreeObserver.", e);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
            jd.b("Error while unregistering listeners from the ViewTreeObserver.", e2);
        }
        if (this.g != null) {
            try {
                com.google.android.gms.ads.internal.aw.E().a(this.f4114b, this.g);
            } catch (IllegalStateException e3) {
                jd.b("Failed trying to unregister the receiver", e3);
            } catch (Exception e4) {
                com.google.android.gms.ads.internal.aw.i().a(e4, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.g = null;
        }
        if (this.f4115c != null) {
            try {
                this.f4115c.unregisterActivityLifecycleCallbacks(this.j);
            } catch (Exception e5) {
                jd.b("Error registering activity lifecycle callbacks.", e5);
            }
        }
    }

    public final void a() {
        a(4);
    }

    public final void a(akj akjVar) {
        this.n.add(akjVar);
        a(3);
    }

    public final void b(akj akjVar) {
        this.n.remove(akjVar);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(activity, 0);
        a(3);
        b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        a(3);
        b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(activity, 4);
        a(3);
        b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(activity, 0);
        a(3);
        b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(3);
        b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(activity, 0);
        a(3);
        b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        a(3);
        b();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        a(2);
        b();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        a(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.m = -1;
        a(view);
        a(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.m = -1;
        a(3);
        b();
        b(view);
    }
}
