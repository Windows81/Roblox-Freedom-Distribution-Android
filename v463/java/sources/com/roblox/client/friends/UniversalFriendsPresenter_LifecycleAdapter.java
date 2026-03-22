package com.roblox.client.friends;

import androidx.lifecycle.e;
import androidx.lifecycle.g;
import androidx.lifecycle.j;
import androidx.lifecycle.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class UniversalFriendsPresenter_LifecycleAdapter implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final UniversalFriendsPresenter f6027a;

    UniversalFriendsPresenter_LifecycleAdapter(UniversalFriendsPresenter universalFriendsPresenter) {
        this.f6027a = universalFriendsPresenter;
    }

    @Override // androidx.lifecycle.e
    public void a(j jVar, g.a aVar, boolean z, o oVar) {
        boolean z2 = oVar != null;
        if (z) {
            return;
        }
        if (aVar == g.a.ON_START) {
            if (!z2 || oVar.a("onStart", 1)) {
                this.f6027a.onStart();
                return;
            }
            return;
        }
        if (aVar == g.a.ON_RESUME) {
            if (!z2 || oVar.a("onResume", 1)) {
                this.f6027a.onResume();
                return;
            }
            return;
        }
        if (aVar == g.a.ON_STOP) {
            if (!z2 || oVar.a("onStop", 1)) {
                this.f6027a.onStop();
                return;
            }
            return;
        }
        if (aVar == g.a.ON_DESTROY) {
            if (!z2 || oVar.a("onDestroy", 1)) {
                this.f6027a.onDestroy();
            }
        }
    }
}
