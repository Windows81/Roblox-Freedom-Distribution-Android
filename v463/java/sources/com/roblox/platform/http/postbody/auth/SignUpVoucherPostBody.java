package com.roblox.platform.http.postbody.auth;

import com.roblox.platform.http.postbody.PostBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SignUpVoucherPostBody implements PostBody {
    public final String challenge;
    public final String code;

    public SignUpVoucherPostBody(String str, String str2) {
        this.challenge = str;
        this.code = str2;
    }
}
