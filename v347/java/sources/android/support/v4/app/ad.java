package android.support.v4.app;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class ad implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewTreeObserver f675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f676c;

    private ad(View view, Runnable runnable) {
        this.f674a = view;
        this.f675b = view.getViewTreeObserver();
        this.f676c = runnable;
    }

    public static ad a(View view, Runnable runnable) {
        ad adVar = new ad(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(adVar);
        view.addOnAttachStateChangeListener(adVar);
        return adVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        a();
        this.f676c.run();
        return true;
    }

    public void a() {
        if (this.f675b.isAlive()) {
            this.f675b.removeOnPreDrawListener(this);
        } else {
            this.f674a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f674a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f675b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        a();
    }
}
