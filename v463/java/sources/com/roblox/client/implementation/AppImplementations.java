package com.roblox.client.implementation;

import com.roblox.client.analytics.e;
import com.roblox.client.s.d;
import com.roblox.client.shell.ShellImplementations;
import com.roblox.client.shell.a;
import com.roblox.client.shell.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AppImplementations implements ShellImplementations, a, f {
    @Override // com.roblox.client.shell.a
    public d getAppsFlyerManager() {
        return com.roblox.client.c.a.a();
    }

    @Override // com.roblox.client.shell.f
    public e createGoogleAnalyticsImpl() {
        return new com.roblox.client.analytics.f();
    }
}
