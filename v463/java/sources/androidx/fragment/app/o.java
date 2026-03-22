package androidx.fragment.app;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class o implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f1777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewTreeObserver f1778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f1779c;

    private o(View view, Runnable runnable) {
        this.f1777a = view;
        this.f1778b = view.getViewTreeObserver();
        this.f1779c = runnable;
    }

    public static o a(View view, Runnable runnable) {
        o oVar = new o(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(oVar);
        view.addOnAttachStateChangeListener(oVar);
        return oVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        a();
        this.f1779c.run();
        return true;
    }

    public void a() {
        if (this.f1778b.isAlive()) {
            this.f1778b.removeOnPreDrawListener(this);
        } else {
            this.f1777a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f1777a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f1778b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        a();
    }
}
