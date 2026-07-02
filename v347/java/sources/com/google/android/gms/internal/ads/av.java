package com.google.android.gms.internal.ads;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
final class av implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ CountDownLatch f4527a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ au f4528b;

    av(au auVar, CountDownLatch countDownLatch) {
        this.f4528b = auVar;
        this.f4527a = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4528b.f4108d) {
            this.f4528b.m = com.google.android.gms.ads.internal.s.a(this.f4528b.l, this.f4528b.g, this.f4527a);
        }
    }
}
