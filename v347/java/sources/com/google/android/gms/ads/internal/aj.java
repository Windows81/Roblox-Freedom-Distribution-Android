package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.asv;
import com.google.android.gms.internal.ads.jd;

/* JADX INFO: loaded from: classes.dex */
final class aj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ asv f3004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ad f3005b;

    aj(ad adVar, asv asvVar) {
        this.f3005b = adVar;
        this.f3004a = asvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f3005b.e.s != null) {
                this.f3005b.e.s.a(this.f3004a);
                this.f3005b.a(this.f3004a.j());
            }
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }
}
