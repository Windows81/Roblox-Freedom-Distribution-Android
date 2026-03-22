package com.roblox.client.http.post;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class LoginApiRequestBody implements GsonCompatibleRequestBody {
    private String deviceHandle;
    private String password;
    private String username;

    public LoginApiRequestBody(String str, String str2) {
        this.username = str;
        this.password = str2;
    }

    public void setDeviceHandle(String str) {
        this.deviceHandle = str;
    }
}
