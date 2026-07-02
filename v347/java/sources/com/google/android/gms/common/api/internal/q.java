package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.b;

/* JADX INFO: loaded from: classes.dex */
final class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ b.a f3398a;

    q(b.a aVar) {
        this.f3398a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3398a.m();
    }
}
