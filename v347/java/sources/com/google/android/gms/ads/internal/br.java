package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.asv;
import com.google.android.gms.internal.ads.jd;

/* JADX INFO: loaded from: classes.dex */
final class br implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ asv f3065a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bn f3066b;

    br(bn bnVar, asv asvVar) {
        this.f3066b = bnVar;
        this.f3065a = asvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f3066b.e.s != null) {
                this.f3066b.e.s.a(this.f3065a);
                this.f3066b.a(this.f3065a.j());
            }
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }
}
