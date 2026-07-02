package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.ii;

/* JADX INFO: loaded from: classes.dex */
final class bj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bi f3055a;

    bj(bi biVar) {
        this.f3055a = biVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3055a.f3053c.b(new ii(this.f3055a.f3051a, null, null, null, null, null, null, null));
    }
}
