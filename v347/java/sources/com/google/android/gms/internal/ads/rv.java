package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class rv implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ht f5526a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ rs f5527b;

    rv(rs rsVar, ht htVar) {
        this.f5527b = rsVar;
        this.f5526a = htVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f5527b.a(view, this.f5526a, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
