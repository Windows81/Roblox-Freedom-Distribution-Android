package com.roblox.client.http.post;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class ResetPasswordRequestBody implements GsonCompatibleRequestBody {
    private String username;

    public ResetPasswordRequestBody(String str) {
        this.username = str;
    }
}
