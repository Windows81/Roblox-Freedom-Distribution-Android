package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class bc implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ConnectionResult f3527a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ d.a f3528b;

    bc(d.a aVar, ConnectionResult connectionResult) {
        this.f3528b = aVar;
        this.f3527a = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3528b.a(this.f3527a);
    }
}
