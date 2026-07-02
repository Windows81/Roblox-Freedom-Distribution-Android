package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class lx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f5283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Activity f5284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5285c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5286d;
    private boolean e;
    private ViewTreeObserver.OnGlobalLayoutListener f;
    private ViewTreeObserver.OnScrollChangedListener g;

    public lx(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.f5284b = activity;
        this.f5283a = view;
        this.f = onGlobalLayoutListener;
        this.g = onScrollChangedListener;
    }

    private static ViewTreeObserver b(Activity activity) {
        Window window;
        View decorView;
        if (activity == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }

    private final void e() {
        if (this.f5285c) {
            return;
        }
        if (this.f != null) {
            if (this.f5284b != null) {
                Activity activity = this.f5284b;
                ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f;
                ViewTreeObserver viewTreeObserverB = b(activity);
                if (viewTreeObserverB != null) {
                    viewTreeObserverB.addOnGlobalLayoutListener(onGlobalLayoutListener);
                }
            }
            com.google.android.gms.ads.internal.aw.A();
            nw.a(this.f5283a, this.f);
        }
        if (this.g != null) {
            if (this.f5284b != null) {
                Activity activity2 = this.f5284b;
                ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = this.g;
                ViewTreeObserver viewTreeObserverB2 = b(activity2);
                if (viewTreeObserverB2 != null) {
                    viewTreeObserverB2.addOnScrollChangedListener(onScrollChangedListener);
                }
            }
            com.google.android.gms.ads.internal.aw.A();
            nw.a(this.f5283a, this.g);
        }
        this.f5285c = true;
    }

    private final void f() {
        if (this.f5284b != null && this.f5285c) {
            if (this.f != null) {
                Activity activity = this.f5284b;
                ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f;
                ViewTreeObserver viewTreeObserverB = b(activity);
                if (viewTreeObserverB != null) {
                    com.google.android.gms.ads.internal.aw.g().a(viewTreeObserverB, onGlobalLayoutListener);
                }
            }
            if (this.g != null) {
                Activity activity2 = this.f5284b;
                ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = this.g;
                ViewTreeObserver viewTreeObserverB2 = b(activity2);
                if (viewTreeObserverB2 != null) {
                    viewTreeObserverB2.removeOnScrollChangedListener(onScrollChangedListener);
                }
            }
            this.f5285c = false;
        }
    }

    public final void a() {
        this.e = true;
        if (this.f5286d) {
            e();
        }
    }

    public final void a(Activity activity) {
        this.f5284b = activity;
    }

    public final void b() {
        this.e = false;
        f();
    }

    public final void c() {
        this.f5286d = true;
        if (this.e) {
            e();
        }
    }

    public final void d() {
        this.f5286d = false;
        f();
    }
}
