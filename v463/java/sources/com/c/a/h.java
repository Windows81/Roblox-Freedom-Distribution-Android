package com.c.a;

import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class h implements ViewTreeObserver.OnPreDrawListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final x f3129a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final WeakReference<ImageView> f3130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    e f3131c;

    h(x xVar, ImageView imageView, e eVar) {
        this.f3129a = xVar;
        this.f3130b = new WeakReference<>(imageView);
        this.f3131c = eVar;
        imageView.getViewTreeObserver().addOnPreDrawListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        ImageView imageView = this.f3130b.get();
        if (imageView == null) {
            return true;
        }
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        int width = imageView.getWidth();
        int height = imageView.getHeight();
        if (width > 0 && height > 0) {
            viewTreeObserver.removeOnPreDrawListener(this);
            this.f3129a.a().a(width, height).a(imageView, this.f3131c);
        }
        return true;
    }

    void a() {
        this.f3131c = null;
        ImageView imageView = this.f3130b.get();
        if (imageView == null) {
            return;
        }
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this);
        }
    }
}
