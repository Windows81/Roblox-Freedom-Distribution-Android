package com.roblox.client.app;

import androidx.lifecycle.e;
import androidx.lifecycle.g;
import androidx.lifecycle.j;
import androidx.lifecycle.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AppInputFocusLifecycleObserver_LifecycleAdapter implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final AppInputFocusLifecycleObserver f5700a;

    AppInputFocusLifecycleObserver_LifecycleAdapter(AppInputFocusLifecycleObserver appInputFocusLifecycleObserver) {
        this.f5700a = appInputFocusLifecycleObserver;
    }

    @Override // androidx.lifecycle.e
    public void a(j jVar, g.a aVar, boolean z, o oVar) {
        boolean z2 = oVar != null;
        if (z) {
            return;
        }
        if (aVar == g.a.ON_CREATE) {
            if (!z2 || oVar.a("onMenuOptionActivated", 1)) {
                this.f5700a.onMenuOptionActivated();
                return;
            }
            return;
        }
        if (aVar == g.a.ON_DESTROY) {
            if (!z2 || oVar.a("onMenuOptionClosed", 1)) {
                this.f5700a.onMenuOptionClosed();
            }
        }
    }
}
