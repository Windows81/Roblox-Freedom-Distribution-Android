package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ap implements f.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ n f3503a;

    ap(am amVar, n nVar) {
        this.f3503a = nVar;
    }

    @Override // com.google.android.gms.common.api.f.c
    public final void a(ConnectionResult connectionResult) {
        this.f3503a.b(new Status(8));
    }
}
