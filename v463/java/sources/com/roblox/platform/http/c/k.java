package com.roblox.platform.http.c;

import com.roblox.platform.http.returntypes.thumbnails.ThumbnailResponseBody;
import e.b.t;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface k {
    @e.b.f(a = "v1/users/avatar-headshot")
    e.b<ThumbnailResponseBody> a(@t(a = "userIds") String str, @t(a = "size") String str2, @t(a = "format") String str3, @t(a = "isCircular") Boolean bool);

    @e.b.f(a = "v1/assets")
    e.b<ThumbnailResponseBody> a(@t(a = "assetIds") String str, @t(a = "returnPolicy") String str2, @t(a = "size") String str3, @t(a = "format") String str4, @t(a = "isCircular") Boolean bool);
}
