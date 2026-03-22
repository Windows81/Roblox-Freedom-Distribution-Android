package com.roblox.client.http.post;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class TwoStepVerificationResendCodeRequestBody implements GsonCompatibleRequestBody {
    private String tl;
    private String username;

    public TwoStepVerificationResendCodeRequestBody(String str, String str2) {
        this.username = str;
        this.tl = str2;
    }
}
