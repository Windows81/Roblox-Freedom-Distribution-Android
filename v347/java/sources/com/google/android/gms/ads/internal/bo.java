package com.google.android.gms.ads.internal;

/* JADX INFO: loaded from: classes.dex */
final class bo implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bn f3060a;

    bo(bn bnVar) {
        this.f3060a = bnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3060a.b(this.f3060a.l);
    }
}
