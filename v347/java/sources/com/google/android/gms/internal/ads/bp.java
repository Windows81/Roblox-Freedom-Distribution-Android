package com.google.android.gms.internal.ads;

import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class bp implements ViewTreeObserver.OnScrollChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ WeakReference f4864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bi f4865b;

    bp(bi biVar, WeakReference weakReference) {
        this.f4865b = biVar;
        this.f4864a = weakReference;
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        this.f4865b.a((WeakReference<qd>) this.f4864a, true);
    }
}
