package com.google.android.gms.internal.measurement;

import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class hg implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzdz f4470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gz f4471b;

    hg(gz gzVar, zzdz zzdzVar) {
        this.f4471b = gzVar;
        this.f4470a = zzdzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dp dpVar = this.f4471b.f4453b;
        if (dpVar == null) {
            this.f4471b.q().v().a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            dpVar.b(this.f4470a);
            this.f4471b.C();
        } catch (RemoteException e2) {
            this.f4471b.q().v().a("Failed to send measurementEnabled to the service", e2);
        }
    }
}
