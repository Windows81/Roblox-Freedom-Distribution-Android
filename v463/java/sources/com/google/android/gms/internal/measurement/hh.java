package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import android.text.TextUtils;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class hh implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ boolean f4472a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ boolean f4473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ zzeu f4474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ zzdz f4475d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f4476e;
    private final /* synthetic */ gz f;

    hh(gz gzVar, boolean z, boolean z2, zzeu zzeuVar, zzdz zzdzVar, String str) {
        this.f = gzVar;
        this.f4473b = z2;
        this.f4474c = zzeuVar;
        this.f4475d = zzdzVar;
        this.f4476e = str;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        dp dpVar = this.f.f4453b;
        if (dpVar == null) {
            this.f.q().v().a("Discarding data. Failed to send event to service");
            return;
        }
        if (this.f4472a) {
            this.f.a(dpVar, this.f4473b ? null : this.f4474c, this.f4475d);
        } else {
            try {
                if (TextUtils.isEmpty(this.f4476e)) {
                    dpVar.a(this.f4474c, this.f4475d);
                } else {
                    dpVar.a(this.f4474c, this.f4476e, this.f.q().D());
                }
            } catch (RemoteException e2) {
                this.f.q().v().a("Failed to send event to the service", e2);
            }
        }
        this.f.C();
    }
}
