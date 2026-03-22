package com.roblox.platform.http.returntypes.wechat;

import com.roblox.platform.http.returntypes.ResponseBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class TencentTokenExchangeResponseBody implements ResponseBody {
    public final int gender;
    public final long userId;
    public final String weChatVoucher;

    public TencentTokenExchangeResponseBody(String str, int i, long j) {
        this.weChatVoucher = str;
        this.gender = i;
        this.userId = j;
    }
}
