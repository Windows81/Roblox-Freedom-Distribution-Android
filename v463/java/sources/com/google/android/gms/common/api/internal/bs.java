package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.SignInResponse;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class bs implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ SignInResponse f3555a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bp f3556b;

    bs(bp bpVar, SignInResponse signInResponse) {
        this.f3556b = bpVar;
        this.f3555a = signInResponse;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3556b.b(this.f3555a);
    }
}
