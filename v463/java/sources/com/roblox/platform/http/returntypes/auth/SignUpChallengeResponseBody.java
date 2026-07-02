package com.roblox.platform.http.returntypes.auth;

import com.roblox.platform.http.returntypes.ResponseBody;

/* JADX INFO: loaded from: classes.dex */
public class SignUpChallengeResponseBody implements ResponseBody {
    public final String challenge;

    public SignUpChallengeResponseBody(String str) {
        this.challenge = str;
    }
}
