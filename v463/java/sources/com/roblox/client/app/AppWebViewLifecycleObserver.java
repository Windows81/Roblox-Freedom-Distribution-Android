package com.roblox.client.app;

import androidx.lifecycle.g;
import androidx.lifecycle.i;
import androidx.lifecycle.r;
import com.roblox.engine.jni.memstorage.MemStorage;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AppWebViewLifecycleObserver implements i {
    @r(a = g.a.ON_CREATE)
    public void onWebViewCreated() {
    }

    @r(a = g.a.ON_DESTROY)
    public void onWebViewDestroyed() {
        MemStorage.fire("BrowserService.BrowserWindowClosed", "");
    }
}
