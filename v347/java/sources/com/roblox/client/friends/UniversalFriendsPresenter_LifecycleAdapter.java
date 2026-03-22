package com.roblox.client.friends;

import android.arch.lifecycle.d;
import android.arch.lifecycle.g;
import android.arch.lifecycle.k;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class UniversalFriendsPresenter_LifecycleAdapter implements android.arch.lifecycle.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final UniversalFriendsPresenter f6960a;

    UniversalFriendsPresenter_LifecycleAdapter(UniversalFriendsPresenter universalFriendsPresenter) {
        this.f6960a = universalFriendsPresenter;
    }

    @Override // android.arch.lifecycle.c
    public void a(g gVar, d.a aVar, boolean z, k kVar) {
        boolean z2 = kVar != null;
        if (!z) {
            if (aVar == d.a.ON_START) {
                if (!z2 || kVar.a("onStart", 1)) {
                    this.f6960a.onStart();
                    return;
                }
                return;
            }
            if (aVar == d.a.ON_RESUME) {
                if (!z2 || kVar.a("onResume", 1)) {
                    this.f6960a.onResume();
                    return;
                }
                return;
            }
            if (aVar == d.a.ON_STOP) {
                if (!z2 || kVar.a("onStop", 1)) {
                    this.f6960a.onStop();
                    return;
                }
                return;
            }
            if (aVar == d.a.ON_DESTROY) {
                if (!z2 || kVar.a("onDestroy", 1)) {
                    this.f6960a.onDestroy();
                }
            }
        }
    }
}
