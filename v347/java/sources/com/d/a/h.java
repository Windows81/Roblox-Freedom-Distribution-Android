package com.d.a;

import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class h implements ViewTreeObserver.OnPreDrawListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final x f2475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final WeakReference<ImageView> f2476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    e f2477c;

    h(x xVar, ImageView imageView, e eVar) {
        this.f2475a = xVar;
        this.f2476b = new WeakReference<>(imageView);
        this.f2477c = eVar;
        imageView.getViewTreeObserver().addOnPreDrawListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        ImageView imageView = this.f2476b.get();
        if (imageView != null) {
            ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                int width = imageView.getWidth();
                int height = imageView.getHeight();
                if (width > 0 && height > 0) {
                    viewTreeObserver.removeOnPreDrawListener(this);
                    this.f2475a.a().a(width, height).a(imageView, this.f2477c);
                }
            }
        }
        return true;
    }

    void a() {
        this.f2477c = null;
        ImageView imageView = this.f2476b.get();
        if (imageView != null) {
            ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
        }
    }
}
