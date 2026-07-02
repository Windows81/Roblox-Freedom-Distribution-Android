package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
final class jo implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Context f5191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ jm f5192b;

    jo(jm jmVar, Context context) {
        this.f5192b = jmVar;
        this.f5191a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f5192b.f5185b) {
            this.f5192b.f5187d = jm.d(this.f5191a);
            this.f5192b.f5185b.notifyAll();
        }
    }
}
