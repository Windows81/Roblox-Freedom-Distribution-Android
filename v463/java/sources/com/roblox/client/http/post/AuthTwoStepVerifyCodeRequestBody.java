package com.roblox.client.http.post;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AuthTwoStepVerifyCodeRequestBody implements GsonCompatibleRequestBody {
    private String actionType;
    private String code;
    private boolean rememberDevice;
    private String ticket;
    private String username;

    public AuthTwoStepVerifyCodeRequestBody(String str, String str2, String str3, boolean z, String str4) {
        this.username = str;
        this.ticket = str2;
        this.code = str3;
        this.rememberDevice = z;
        this.actionType = str4;
    }
}
