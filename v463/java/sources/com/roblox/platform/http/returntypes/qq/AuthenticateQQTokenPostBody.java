package com.roblox.platform.http.returntypes.qq;

import com.roblox.platform.http.postbody.PostBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AuthenticateQQTokenPostBody implements PostBody {
    private final String accessToken;
    private final int accessTokenExpiry;
    private final String openId;

    public AuthenticateQQTokenPostBody(String str, String str2, int i) {
        this.openId = str;
        this.accessToken = str2;
        this.accessTokenExpiry = i;
    }
}
