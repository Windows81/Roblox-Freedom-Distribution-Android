package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzjj;

/* JADX INFO: loaded from: classes.dex */
final class k implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzjj f3141a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ int f3142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ i f3143c;

    k(i iVar, zzjj zzjjVar, int i) {
        this.f3143c = iVar;
        this.f3141a = zzjjVar;
        this.f3142b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f3143c.s) {
            this.f3143c.b(this.f3141a, this.f3142b);
        }
    }
}
