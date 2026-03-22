package com.roblox.client.friends.c;

import c.ad;
import com.roblox.platform.http.returntypes.TokenResponseBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.roblox.platform.http.c.g f6060a;

    public a(com.roblox.platform.http.c.g gVar) {
        this.f6060a = gVar;
    }

    @Override // com.roblox.client.friends.c.b
    public e.b<TokenResponseBody> a() {
        return this.f6060a.a();
    }

    @Override // com.roblox.client.friends.c.b
    public e.b<ad> b() {
        return this.f6060a.b();
    }

    @Override // com.roblox.client.friends.c.b
    public e.b<ad> c() {
        return this.f6060a.c();
    }
}
