package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ck {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConnectionResult f3607b;

    ck(ConnectionResult connectionResult, int i) {
        com.google.android.gms.common.internal.aa.a(connectionResult);
        this.f3607b = connectionResult;
        this.f3606a = i;
    }

    final int a() {
        return this.f3606a;
    }

    final ConnectionResult b() {
        return this.f3607b;
    }
}
