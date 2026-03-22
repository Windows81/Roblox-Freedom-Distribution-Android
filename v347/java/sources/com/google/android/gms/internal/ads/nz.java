package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
abstract class nz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<View> f5365a;

    public nz(View view) {
        this.f5365a = new WeakReference<>(view);
    }

    private final ViewTreeObserver c() {
        View view = this.f5365a.get();
        if (view == null) {
            return null;
        }
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return null;
        }
        return viewTreeObserver;
    }

    public final void a() {
        ViewTreeObserver viewTreeObserverC = c();
        if (viewTreeObserverC != null) {
            a(viewTreeObserverC);
        }
    }

    protected abstract void a(ViewTreeObserver viewTreeObserver);

    public final void b() {
        ViewTreeObserver viewTreeObserverC = c();
        if (viewTreeObserverC != null) {
            b(viewTreeObserverC);
        }
    }

    protected abstract void b(ViewTreeObserver viewTreeObserver);
}
