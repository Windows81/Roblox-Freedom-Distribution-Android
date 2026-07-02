package com.google.android.gms.internal.ads;

import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class bo implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ WeakReference f4862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bi f4863b;

    bo(bi biVar, WeakReference weakReference) {
        this.f4863b = biVar;
        this.f4862a = weakReference;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        this.f4863b.a((WeakReference<qd>) this.f4862a, false);
    }
}
