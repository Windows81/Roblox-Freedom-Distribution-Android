package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class aj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConnectionResult f3363b;

    aj(ConnectionResult connectionResult, int i) {
        com.google.android.gms.common.internal.w.a(connectionResult);
        this.f3363b = connectionResult;
        this.f3362a = i;
    }

    final int a() {
        return this.f3362a;
    }

    final ConnectionResult b() {
        return this.f3363b;
    }
}
