package com.roblox.client.login.mvp;

import androidx.lifecycle.g;
import androidx.lifecycle.j;
import androidx.lifecycle.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class LoginPresenter_LifecycleAdapter implements androidx.lifecycle.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final LoginPresenter f6560a;

    LoginPresenter_LifecycleAdapter(LoginPresenter loginPresenter) {
        this.f6560a = loginPresenter;
    }

    @Override // androidx.lifecycle.e
    public void a(j jVar, g.a aVar, boolean z, o oVar) {
        boolean z2 = oVar != null;
        if (z) {
            return;
        }
        if (aVar == g.a.ON_RESUME) {
            if (!z2 || oVar.a("setStoreCredentialValue", 1)) {
                this.f6560a.setStoreCredentialValue();
                return;
            }
            return;
        }
        if (aVar == g.a.ON_DESTROY) {
            if (!z2 || oVar.a("cleanup", 1)) {
                this.f6560a.cleanup();
            }
        }
    }
}
