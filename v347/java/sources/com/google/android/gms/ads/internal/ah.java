package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.ast;
import com.google.android.gms.internal.ads.jd;

/* JADX INFO: loaded from: classes.dex */
final class ah implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ast f3000a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ad f3001b;

    ah(ad adVar, ast astVar) {
        this.f3001b = adVar;
        this.f3000a = astVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f3001b.e.r != null) {
                this.f3001b.e.r.a(this.f3000a);
                this.f3001b.a(this.f3000a.j());
            }
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }
}
