package com.roblox.client.friends.nearby.b;

import com.roblox.platform.http.c.k;
import com.roblox.platform.http.returntypes.thumbnails.ThumbnailResponseBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f6146a;

    public b(k kVar) {
        this.f6146a = kVar;
    }

    @Override // com.roblox.client.friends.nearby.b.a
    public e.b<ThumbnailResponseBody> a(long j) {
        return this.f6146a.a(Long.toString(j), "150x150", "Png", false);
    }
}
