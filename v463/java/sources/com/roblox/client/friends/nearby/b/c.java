package com.roblox.client.friends.nearby.b;

import c.ad;
import com.roblox.platform.http.returntypes.NearbyUserResponseBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.roblox.platform.http.c.g f6147a;

    public c(com.roblox.platform.http.c.g gVar) {
        this.f6147a = gVar;
    }

    @Override // com.roblox.client.friends.nearby.b.d
    public e.b<NearbyUserResponseBody> a(String str) {
        return this.f6147a.a(str);
    }

    @Override // com.roblox.client.friends.nearby.b.d
    public e.b<ad> b(String str) {
        return this.f6147a.b(str);
    }
}
