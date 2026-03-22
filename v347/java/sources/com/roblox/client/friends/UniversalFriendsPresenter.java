package com.roblox.client.friends;

import android.arch.lifecycle.d;
import android.arch.lifecycle.f;
import android.arch.lifecycle.m;
import android.util.Log;
import com.roblox.client.friends.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class UniversalFriendsPresenter implements f, c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c.b f6959a;

    public UniversalFriendsPresenter(d dVar, c.b bVar) {
        dVar.a(this);
        this.f6959a = bVar;
    }

    @m(a = d.a.ON_START)
    void onStart() {
        Log.i("UniversalPresenter", "LifecycleEvent.onStart");
    }

    @m(a = d.a.ON_RESUME)
    void onResume() {
        Log.i("UniversalPresenter", "LifecycleEvent.onResume");
    }

    @m(a = d.a.ON_STOP)
    void onStop() {
        Log.i("UniversalPresenter", "LifecycleEvent.onStop");
    }

    @m(a = d.a.ON_DESTROY)
    void onDestroy() {
        Log.i("UniversalPresenter", "LifecycleEvent.onDestroy");
    }
}
