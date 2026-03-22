package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ahw implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Handler f4027a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f4028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Application f4029c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PowerManager f4030d;
    private final KeyguardManager e;
    private final ahm f;
    private BroadcastReceiver g;
    private WeakReference<ViewTreeObserver> h;
    private WeakReference<View> i;
    private aha j;
    private boolean k = false;
    private int l = -1;
    private long m = -3;

    public ahw(ahm ahmVar, View view) {
        this.f = ahmVar;
        this.f4028b = ahmVar.f4004a;
        this.f4030d = (PowerManager) this.f4028b.getSystemService("power");
        this.e = (KeyguardManager) this.f4028b.getSystemService("keyguard");
        if (this.f4028b instanceof Application) {
            this.f4029c = (Application) this.f4028b;
            this.j = new aha((Application) this.f4028b, this);
        }
        a(view);
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
        this.l = i;
    }

    private final void b() {
        f4027a.post(new ahx(this));
    }

    private final void b(View view) {
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
            this.g = new ahy(this);
            this.f4028b.registerReceiver(this.g, intentFilter);
        }
        if (this.f4029c != null) {
            try {
                this.f4029c.registerActivityLifecycleCallbacks(this.j);
            } catch (Exception e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c() {
        /*
            r9 = this;
            r3 = 1
            r2 = 0
            java.lang.ref.WeakReference<android.view.View> r0 = r9.i
            if (r0 != 0) goto L7
        L6:
            return
        L7:
            java.lang.ref.WeakReference<android.view.View> r0 = r9.i
            java.lang.Object r0 = r0.get()
            android.view.View r0 = (android.view.View) r0
            if (r0 != 0) goto L18
            r0 = -3
            r9.m = r0
            r9.k = r2
            goto L6
        L18:
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            boolean r5 = r0.getGlobalVisibleRect(r1)
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            boolean r6 = r0.getLocalVisibleRect(r1)
            com.google.android.gms.internal.ads.ahm r1 = r9.f
            boolean r1 = r1.j()
            if (r1 != 0) goto L53
            android.app.KeyguardManager r1 = r9.e
            boolean r1 = r1.inKeyguardRestrictedInputMode()
            if (r1 == 0) goto L92
            android.app.Activity r1 = com.google.android.gms.internal.ads.ahu.a(r0)
            if (r1 == 0) goto L90
            android.view.Window r1 = r1.getWindow()
            if (r1 != 0) goto L8b
            r1 = 0
        L47:
            if (r1 == 0) goto L90
            int r1 = r1.flags
            r4 = 524288(0x80000, float:7.34684E-40)
            r1 = r1 & r4
            if (r1 == 0) goto L90
            r1 = r3
        L51:
            if (r1 == 0) goto L92
        L53:
            r1 = r3
        L54:
            int r4 = r0.getWindowVisibility()
            int r7 = r9.l
            r8 = -1
            if (r7 == r8) goto L5f
            int r4 = r9.l
        L5f:
            int r7 = r0.getVisibility()
            if (r7 != 0) goto L94
            boolean r0 = r0.isShown()
            if (r0 == 0) goto L94
            android.os.PowerManager r0 = r9.f4030d
            boolean r0 = r0.isScreenOn()
            if (r0 == 0) goto L94
            if (r1 == 0) goto L94
            if (r6 == 0) goto L94
            if (r5 == 0) goto L94
            if (r4 != 0) goto L94
        L7b:
            boolean r0 = r9.k
            if (r0 == r3) goto L6
            if (r3 == 0) goto L96
            long r0 = android.os.SystemClock.elapsedRealtime()
        L85:
            r9.m = r0
            r9.k = r3
            goto L6
        L8b:
            android.view.WindowManager$LayoutParams r1 = r1.getAttributes()
            goto L47
        L90:
            r1 = r2
            goto L51
        L92:
            r1 = r2
            goto L54
        L94:
            r3 = r2
            goto L7b
        L96:
            r0 = -2
            goto L85
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ahw.c():void");
    }

    private final void c(View view) {
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
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
        }
        if (this.g != null) {
            try {
                this.f4028b.unregisterReceiver(this.g);
            } catch (Exception e3) {
            }
            this.g = null;
        }
        if (this.f4029c != null) {
            try {
                this.f4029c.unregisterActivityLifecycleCallbacks(this.j);
            } catch (Exception e4) {
            }
        }
    }

    public final long a() {
        if (this.m == -2 && this.i.get() == null) {
            this.m = -3L;
        }
        return this.m;
    }

    final void a(View view) {
        View view2 = this.i != null ? this.i.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            c(view2);
        }
        this.i = new WeakReference<>(view);
        if (view == null) {
            this.m = -3L;
            return;
        }
        if ((view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true) {
            b(view);
        }
        view.addOnAttachStateChangeListener(this);
        this.m = -2L;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(activity, 0);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(activity, 4);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(activity, 0);
        c();
        b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(activity, 0);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        c();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        c();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        c();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.l = -1;
        b(view);
        c();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.l = -1;
        c();
        b();
        c(view);
    }
}
