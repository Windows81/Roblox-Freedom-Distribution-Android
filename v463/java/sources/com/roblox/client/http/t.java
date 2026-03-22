package com.roblox.client.http;

import java.net.CookiePolicy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class t implements com.roblox.platform.http.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f6363a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private s f6364b;

    @Override // com.roblox.platform.http.a
    public com.roblox.platform.http.h a() {
        s sVar;
        synchronized (f6363a) {
            if (this.f6364b == null) {
                this.f6364b = new s(CookiePolicy.ACCEPT_ALL);
            }
            sVar = this.f6364b;
        }
        return sVar;
    }
}
