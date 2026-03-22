package com.google.android.gms.internal.measurement;

import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class he implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ gv f4467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gz f4468b;

    he(gz gzVar, gv gvVar) {
        this.f4468b = gzVar;
        this.f4467a = gvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j;
        String str;
        String str2;
        String packageName;
        dp dpVar = this.f4468b.f4453b;
        if (dpVar == null) {
            this.f4468b.q().v().a("Failed to send current screen to service");
            return;
        }
        try {
            if (this.f4467a == null) {
                j = 0;
                str = null;
                str2 = null;
                packageName = this.f4468b.k().getPackageName();
            } else {
                j = this.f4467a.f4439c;
                str = this.f4467a.f4437a;
                str2 = this.f4467a.f4438b;
                packageName = this.f4468b.k().getPackageName();
            }
            dpVar.a(j, str, str2, packageName);
            this.f4468b.C();
        } catch (RemoteException e2) {
            this.f4468b.q().v().a("Failed to send current screen to the service", e2);
        }
    }
}
