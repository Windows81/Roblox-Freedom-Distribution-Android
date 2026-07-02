package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
final class y implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ x f3413a;

    y(x xVar) {
        this.f3413a = xVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3413a.h.b(new ConnectionResult(4));
    }
}
