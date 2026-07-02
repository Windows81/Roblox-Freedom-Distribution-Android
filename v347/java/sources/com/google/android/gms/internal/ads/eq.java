package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class eq implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzaef f4977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ dt f4978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ eo f4979c;

    eq(eo eoVar, zzaef zzaefVar, dt dtVar) {
        this.f4979c = eoVar;
        this.f4977a = zzaefVar;
        this.f4978b = dtVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaej zzaejVar;
        try {
            zzaejVar = this.f4979c.a(this.f4977a);
        } catch (Exception e) {
            com.google.android.gms.ads.internal.aw.i().a(e, "AdRequestServiceImpl.loadAdAsync");
            jd.c("Could not fetch ad response due to an Exception.", e);
            zzaejVar = null;
        }
        if (zzaejVar == null) {
            zzaejVar = new zzaej(0);
        }
        try {
            this.f4978b.a(zzaejVar);
        } catch (RemoteException e2) {
            jd.c("Fail to forward ad response.", e2);
        }
    }
}
