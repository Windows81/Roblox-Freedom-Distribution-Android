package com.roblox.client.http.post;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SignUpRequestBody implements GsonCompatibleRequestBody {
    private String birthday;
    private String captchaProvider;
    private String captchaToken;
    private String deviceHandle;
    private String email;
    private String gender;
    private String password;
    private String username;

    public SignUpRequestBody(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.username = str;
        this.password = str2;
        this.gender = str3;
        this.birthday = str4;
        this.email = str5;
        this.captchaToken = str6;
        this.captchaProvider = str7;
    }

    public void setDeviceHandle(String str) {
        this.deviceHandle = str;
    }
}
