package com.roblox.platform.http.returntypes.auth;

import com.roblox.platform.http.returntypes.ResponseBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SignUpResponseBody implements ResponseBody {
    public final long starterPlaceId;
    public final long userId;

    public SignUpResponseBody(long j, long j2) {
        this.userId = j;
        this.starterPlaceId = j2;
    }
}
