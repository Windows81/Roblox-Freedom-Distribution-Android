package com.roblox.platform.http.postbody.wechat;

import com.roblox.platform.http.postbody.PostBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AuthenticateTokenPostBody implements PostBody {
    private final String accessToken;
    private final int accessTokenExpiry;
    private final String openId;
    private final String refreshToken;
    private final int refreshTokenExpiry;

    public AuthenticateTokenPostBody(String str, String str2, String str3, int i, int i2) {
        this.openId = str;
        this.accessToken = str2;
        this.refreshToken = str3;
        this.accessTokenExpiry = i;
        this.refreshTokenExpiry = i2;
    }
}
