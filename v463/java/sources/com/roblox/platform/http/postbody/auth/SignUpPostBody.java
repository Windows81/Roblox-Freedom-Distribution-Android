package com.roblox.platform.http.postbody.auth;

import com.roblox.platform.http.postbody.PostBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SignUpPostBody implements PostBody {
    public final String birthdate;
    public final String password;
    public final String voucher;

    public SignUpPostBody(String str, String str2, String str3) {
        this.voucher = str;
        this.birthdate = str2;
        this.password = str3;
    }
}
