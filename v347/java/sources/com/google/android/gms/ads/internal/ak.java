package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.asx;
import com.google.android.gms.internal.ads.ii;
import com.google.android.gms.internal.ads.jd;

/* JADX INFO: loaded from: classes.dex */
final class ak implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f3006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ii f3007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ ad f3008c;

    ak(ad adVar, String str, ii iiVar) {
        this.f3008c = adVar;
        this.f3006a = str;
        this.f3007b = iiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f3008c.e.v.get(this.f3006a).a((asx) this.f3007b.C);
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }
}
