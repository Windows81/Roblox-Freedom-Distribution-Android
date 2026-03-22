package com.google.android.gms.internal.measurement;

import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class hb implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzdz f4460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gz f4461b;

    hb(gz gzVar, zzdz zzdzVar) {
        this.f4461b = gzVar;
        this.f4460a = zzdzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dp dpVar = this.f4461b.f4453b;
        if (dpVar == null) {
            this.f4461b.q().v().a("Failed to reset data on the service; null service");
            return;
        }
        try {
            dpVar.d(this.f4460a);
        } catch (RemoteException e2) {
            this.f4461b.q().v().a("Failed to reset data on the service", e2);
        }
        this.f4461b.C();
    }
}
