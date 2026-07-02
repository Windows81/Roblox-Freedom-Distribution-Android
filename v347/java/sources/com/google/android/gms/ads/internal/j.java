package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzjj;

/* JADX INFO: loaded from: classes.dex */
final class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzjj f3139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ i f3140b;

    j(i iVar, zzjj zzjjVar) {
        this.f3140b = iVar;
        this.f3139a = zzjjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f3140b.s) {
            if (this.f3140b.d()) {
                this.f3140b.b(this.f3139a);
            } else {
                this.f3140b.b(this.f3139a, 1);
            }
        }
    }
}
