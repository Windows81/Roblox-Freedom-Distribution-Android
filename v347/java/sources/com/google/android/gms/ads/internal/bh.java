package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.ii;
import com.google.android.gms.internal.ads.ij;

/* JADX INFO: loaded from: classes.dex */
final class bh implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ij f3049a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bf f3050b;

    bh(bf bfVar, ij ijVar) {
        this.f3050b = bfVar;
        this.f3049a = ijVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3050b.b(new ii(this.f3049a, null, null, null, null, null, null, null));
    }
}
