package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class qi implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ht f5473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ qe f5474b;

    qi(qe qeVar, ht htVar) {
        this.f5474b = qeVar;
        this.f5473a = htVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f5474b.a(view, this.f5473a, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
