package com.roblox.client.app;

import androidx.lifecycle.g;
import androidx.lifecycle.i;
import androidx.lifecycle.r;
import com.roblox.client.ae.k;
import com.roblox.engine.jni.NativeGLInterface;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AppInputFocusLifecycleObserver implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5699a = "rbx.datamodel";

    @r(a = g.a.ON_CREATE)
    public void onMenuOptionActivated() {
        k.c("rbx.datamodel", "onMenuOptionActivated");
        com.roblox.engine.b.a aVar = new com.roblox.engine.b.a(false);
        NativeGLInterface.nativeBroadcastEventWithNamespace(aVar.f7611b, aVar.f7612c, aVar.f7613d);
    }

    @r(a = g.a.ON_DESTROY)
    public void onMenuOptionClosed() {
        k.c("rbx.datamodel", "onMenuOptionClosed");
        com.roblox.engine.b.a aVar = new com.roblox.engine.b.a(true);
        NativeGLInterface.nativeBroadcastEventWithNamespace(aVar.f7611b, aVar.f7612c, aVar.f7613d);
    }
}
