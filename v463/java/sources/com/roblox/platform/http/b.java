package com.roblox.platform.http;

import java.net.CookiePolicy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f7696a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f7697b;

    @Override // com.roblox.platform.http.a
    public h a() {
        h hVar;
        synchronized (f7696a) {
            if (this.f7697b == null) {
                this.f7697b = new h(CookiePolicy.ACCEPT_ALL);
            }
            hVar = this.f7697b;
        }
        return hVar;
    }
}
