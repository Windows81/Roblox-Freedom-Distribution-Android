package com.roblox.platform.http.postbody.auth;

import com.roblox.platform.http.postbody.PostBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SignUpChallengePostBody implements PostBody {
    public final String deliveryMethod;
    public final String deliveryTarget;

    public SignUpChallengePostBody(String str, String str2) {
        this.deliveryMethod = str;
        this.deliveryTarget = str2;
    }
}
