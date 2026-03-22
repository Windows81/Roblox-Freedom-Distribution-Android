package com.roblox.platform.http.returntypes;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class TencentTokenAuthenticationResponseBody implements ResponseBody {
    public final String displayName;
    public final int gender;
    public final long userId;
    public final String voucher;

    public TencentTokenAuthenticationResponseBody(int i, long j, String str, String str2) {
        this.gender = i;
        this.userId = j;
        this.voucher = str;
        this.displayName = str2;
    }
}
