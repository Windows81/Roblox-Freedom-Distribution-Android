package com.roblox.platform.http.returntypes;

/* JADX INFO: loaded from: classes.dex */
public class TokenResponseBody implements ResponseBody {
    public final String code;
    public final long expires;

    public TokenResponseBody(long j, String str) {
        this.expires = j;
        this.code = str;
    }
}
