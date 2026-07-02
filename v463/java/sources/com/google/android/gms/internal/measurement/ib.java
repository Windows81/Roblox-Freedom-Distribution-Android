package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class ib implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ long f4532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ hy f4533b;

    ib(hy hyVar, long j) {
        this.f4533b = hyVar;
        this.f4532a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4533b.a(this.f4532a);
    }
}
