package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.SignInResponse;

/* JADX INFO: loaded from: classes.dex */
final class aa implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ SignInResponse f3343a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ x f3344b;

    aa(x xVar, SignInResponse signInResponse) {
        this.f3344b = xVar;
        this.f3343a = signInResponse;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3344b.b(this.f3343a);
    }
}
