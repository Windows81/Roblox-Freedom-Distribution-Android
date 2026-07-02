package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.ata;
import com.google.android.gms.internal.ads.jd;

/* JADX INFO: loaded from: classes.dex */
final class bp implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ata f3061a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bn f3062b;

    bp(bn bnVar, ata ataVar) {
        this.f3062b = bnVar;
        this.f3061a = ataVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f3062b.e.t != null) {
                this.f3062b.e.t.a(this.f3061a);
                this.f3062b.a(this.f3061a.n());
            }
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }
}
