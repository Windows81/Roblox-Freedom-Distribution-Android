package com.roblox.client.http.post;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class LoginAuthRequestBody implements GsonCompatibleRequestBody {
    private String ctype;
    private String cvalue;
    private String password;

    public LoginAuthRequestBody(String str, String str2, String str3) {
        this.cvalue = str;
        this.ctype = str2;
        this.password = str3;
    }
}
