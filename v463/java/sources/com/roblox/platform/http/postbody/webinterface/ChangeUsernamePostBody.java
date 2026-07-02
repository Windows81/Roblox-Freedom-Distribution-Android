package com.roblox.platform.http.postbody.webinterface;

import com.roblox.platform.http.postbody.PostBody;

/* JADX INFO: loaded from: classes.dex */
public class ChangeUsernamePostBody implements PostBody {
    public final String password;
    public final String username;

    public ChangeUsernamePostBody(String str, String str2) {
        this.username = str;
        this.password = str2;
    }
}
