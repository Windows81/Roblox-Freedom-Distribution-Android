package com.roblox.client.http.post;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class SignUpRequestBody implements GsonCompatibleRequestBody {
    private String birthday;
    private String deviceHandle;
    private String email;
    private String gender;
    private String password;
    private String username;

    public SignUpRequestBody(String str, String str2, String str3, String str4, String str5) {
        this.username = str;
        this.password = str2;
        this.gender = str3;
        this.birthday = str4;
        this.email = str5;
    }

    public void setDeviceHandle(String str) {
        this.deviceHandle = str;
    }
}
