package com.roblox.client.friends.nearby;

import androidx.lifecycle.e;
import androidx.lifecycle.g;
import androidx.lifecycle.j;
import androidx.lifecycle.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class NearbyPresenter_LifecycleAdapter implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final NearbyPresenter f6116a;

    NearbyPresenter_LifecycleAdapter(NearbyPresenter nearbyPresenter) {
        this.f6116a = nearbyPresenter;
    }

    @Override // androidx.lifecycle.e
    public void a(j jVar, g.a aVar, boolean z, o oVar) {
        boolean z2 = oVar != null;
        if (z) {
            return;
        }
        if (aVar == g.a.ON_START) {
            if (!z2 || oVar.a("onStart", 1)) {
                this.f6116a.onStart();
                return;
            }
            return;
        }
        if (aVar == g.a.ON_RESUME) {
            if (!z2 || oVar.a("onResume", 1)) {
                this.f6116a.onResume();
                return;
            }
            return;
        }
        if (aVar == g.a.ON_PAUSE) {
            if (!z2 || oVar.a("onPause", 1)) {
                this.f6116a.onPause();
                return;
            }
            return;
        }
        if (aVar == g.a.ON_STOP) {
            if (!z2 || oVar.a("onStop", 1)) {
                this.f6116a.onStop();
                return;
            }
            return;
        }
        if (aVar == g.a.ON_DESTROY) {
            if (!z2 || oVar.a("onDestroy", 1)) {
                this.f6116a.onDestroy();
            }
        }
    }
}
