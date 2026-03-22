package com.roblox.client.http.post;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AuthTwoStepVerificationResendCodeRequestBody implements GsonCompatibleRequestBody {
    private String actionType;
    private String ticket;
    private String username;

    public AuthTwoStepVerificationResendCodeRequestBody(String str, String str2, String str3) {
        this.username = str;
        this.ticket = str2;
        this.actionType = str3;
    }
}
