package com.roblox.client.login.mvp;

import android.arch.lifecycle.d;
import android.arch.lifecycle.g;
import android.arch.lifecycle.k;

/* JADX INFO: loaded from: classes.dex */
public class LoginPresenter_LifecycleAdapter implements android.arch.lifecycle.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final LoginPresenter f7456a;

    LoginPresenter_LifecycleAdapter(LoginPresenter loginPresenter) {
        this.f7456a = loginPresenter;
    }

    @Override // android.arch.lifecycle.c
    public void a(g gVar, d.a aVar, boolean z, k kVar) {
        boolean z2 = kVar != null;
        if (!z) {
            if (aVar == d.a.ON_RESUME) {
                if (!z2 || kVar.a("setStoreCredentialValue", 1)) {
                    this.f7456a.setStoreCredentialValue();
                    return;
                }
                return;
            }
            if (aVar == d.a.ON_DESTROY) {
                if (!z2 || kVar.a("cleanup", 1)) {
                    this.f7456a.cleanup();
                }
            }
        }
    }
}
