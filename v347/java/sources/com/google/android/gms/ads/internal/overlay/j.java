package com.google.android.gms.ads.internal.overlay;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
final class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Drawable f3168a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ i f3169b;

    j(i iVar, Drawable drawable) {
        this.f3169b = iVar;
        this.f3168a = drawable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3169b.f3167a.f3155a.getWindow().setBackgroundDrawable(this.f3168a);
    }
}
