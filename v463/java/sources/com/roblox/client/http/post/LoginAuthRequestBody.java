package com.roblox.client.http.post;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class LoginAuthRequestBody implements GsonCompatibleRequestBody {
    private String captchaProvider;
    private String captchaToken;
    private String ctype;
    private String cvalue;
    private String password;

    public LoginAuthRequestBody(String str, String str2, String str3, String str4, String str5) {
        this.cvalue = str;
        this.ctype = str2;
        this.password = str3;
        this.captchaToken = str4;
        this.captchaProvider = str5;
    }
}
