package com.roblox.client.http.post;

/* JADX INFO: loaded from: classes.dex */
public class TwoStepVerificationResendCodeRequestBody implements GsonCompatibleRequestBody {
    private String tl;
    private String username;

    public TwoStepVerificationResendCodeRequestBody(String str, String str2) {
        this.username = str;
        this.tl = str2;
    }
}
