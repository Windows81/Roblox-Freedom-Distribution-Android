package com.roblox.client;

import androidx.lifecycle.g;
import com.roblox.client.RobloxWebActivity;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RobloxWebActivity_DataModelFocusLifecycleObserver_LifecycleAdapter implements androidx.lifecycle.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final RobloxWebActivity.DataModelFocusLifecycleObserver f5579a;

    RobloxWebActivity_DataModelFocusLifecycleObserver_LifecycleAdapter(RobloxWebActivity.DataModelFocusLifecycleObserver dataModelFocusLifecycleObserver) {
        this.f5579a = dataModelFocusLifecycleObserver;
    }

    @Override // androidx.lifecycle.e
    public void a(androidx.lifecycle.j jVar, g.a aVar, boolean z, androidx.lifecycle.o oVar) {
        boolean z2 = oVar != null;
        if (z) {
            return;
        }
        if (aVar == g.a.ON_CREATE) {
            if (!z2 || oVar.a("onFragmentCreated", 1)) {
                this.f5579a.onFragmentCreated();
                return;
            }
            return;
        }
        if (aVar == g.a.ON_DESTROY) {
            if (!z2 || oVar.a("onFragmentDestroyed", 1)) {
                this.f5579a.onFragmentDestroyed();
            }
        }
    }
}
