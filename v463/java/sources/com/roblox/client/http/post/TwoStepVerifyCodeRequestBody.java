package com.roblox.client.http.post;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class TwoStepVerifyCodeRequestBody implements GsonCompatibleRequestBody {
    private String identificationCode;
    private boolean rememberDevice;
    private String tl;
    private String username;

    public TwoStepVerifyCodeRequestBody(String str, String str2, String str3, boolean z) {
        this.username = str;
        this.tl = str2;
        this.identificationCode = str3;
        this.rememberDevice = z;
    }
}
