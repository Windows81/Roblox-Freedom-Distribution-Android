package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import android.text.TextUtils;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class hi implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ boolean f4477a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ boolean f4478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ zzed f4479c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ zzdz f4480d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzed f4481e;
    private final /* synthetic */ gz f;

    hi(gz gzVar, boolean z, boolean z2, zzed zzedVar, zzdz zzdzVar, zzed zzedVar2) {
        this.f = gzVar;
        this.f4478b = z2;
        this.f4479c = zzedVar;
        this.f4480d = zzdzVar;
        this.f4481e = zzedVar2;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        dp dpVar = this.f.f4453b;
        if (dpVar == null) {
            this.f.q().v().a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.f4477a) {
            this.f.a(dpVar, this.f4478b ? null : this.f4479c, this.f4480d);
        } else {
            try {
                if (TextUtils.isEmpty(this.f4481e.f4718a)) {
                    dpVar.a(this.f4479c, this.f4480d);
                } else {
                    dpVar.a(this.f4479c);
                }
            } catch (RemoteException e2) {
                this.f.q().v().a("Failed to send conditional user property to the service", e2);
            }
        }
        this.f.C();
    }
}
