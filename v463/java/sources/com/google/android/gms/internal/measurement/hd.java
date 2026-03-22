package com.google.android.gms.internal.measurement;

import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class hd implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzdz f4465a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gz f4466b;

    hd(gz gzVar, zzdz zzdzVar) {
        this.f4466b = gzVar;
        this.f4465a = zzdzVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        dp dpVar = this.f4466b.f4453b;
        if (dpVar == null) {
            this.f4466b.q().v().a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            dpVar.a(this.f4465a);
            this.f4466b.a(dpVar, null, this.f4465a);
            this.f4466b.C();
        } catch (RemoteException e2) {
            this.f4466b.q().v().a("Failed to send app launch to the service", e2);
        }
    }
}
