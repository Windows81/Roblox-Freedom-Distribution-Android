package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.auy;
import com.google.android.gms.internal.ads.jd;

/* JADX INFO: loaded from: classes.dex */
final class bs implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ auy f3067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bn f3068b;

    bs(bn bnVar, auy auyVar) {
        this.f3068b = bnVar;
        this.f3067a = auyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f3068b.e.v.get(this.f3067a.l()).a(this.f3067a);
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }
}
