package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.auy;
import com.google.android.gms.internal.ads.jd;

/* JADX INFO: loaded from: classes.dex */
final class al implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ auy f3009a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ad f3010b;

    al(ad adVar, auy auyVar) {
        this.f3010b = adVar;
        this.f3009a = auyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f3010b.e.v.get(this.f3009a.l()).a(this.f3009a);
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }
}
