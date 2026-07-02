package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.ata;
import com.google.android.gms.internal.ads.jd;

/* JADX INFO: loaded from: classes.dex */
final class ai implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ata f3002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ad f3003b;

    ai(ad adVar, ata ataVar) {
        this.f3003b = adVar;
        this.f3002a = ataVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f3003b.e.t != null) {
                this.f3003b.e.t.a(this.f3002a);
                this.f3003b.a(this.f3002a.n());
            }
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }
}
