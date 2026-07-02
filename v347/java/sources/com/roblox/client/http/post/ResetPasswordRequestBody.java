package com.roblox.client.http.post;

/* JADX INFO: loaded from: classes.dex */
public class ResetPasswordRequestBody implements GsonCompatibleRequestBody {
    private String username;

    public ResetPasswordRequestBody(String str) {
        this.username = str;
    }
}
