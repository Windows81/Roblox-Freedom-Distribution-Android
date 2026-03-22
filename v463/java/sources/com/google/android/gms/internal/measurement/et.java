package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class et implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ fc f4290a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ dx f4291b;

    et(es esVar, fc fcVar, dx dxVar) {
        this.f4290a = fcVar;
        this.f4291b = dxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4290a.f() == null) {
            this.f4291b.v().a("Install Referrer Reporter is null");
        } else {
            this.f4290a.f().a();
        }
    }
}
