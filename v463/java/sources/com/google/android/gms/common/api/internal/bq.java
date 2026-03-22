package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class bq implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bp f3553a;

    bq(bp bpVar) {
        this.f3553a = bpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3553a.h.b(new ConnectionResult(4));
    }
}
