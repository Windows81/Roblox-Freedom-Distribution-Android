package com.roblox.platform.http.returntypes.midas;

import com.roblox.platform.http.returntypes.ResponseBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class MidasRetrieveTokenResponseBody implements ResponseBody {
    public final String appId;
    public final String errorMessages;
    public final String goodsTokenUrl;
    public final String openId;
    public final String openKey;
    public final String platformId;
    public final String sessionId;
    public final String sessionType;
    public final String token;

    public MidasRetrieveTokenResponseBody(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        this.appId = str;
        this.platformId = str2;
        this.openId = str3;
        this.openKey = str4;
        this.sessionId = str5;
        this.sessionType = str6;
        this.goodsTokenUrl = str7;
        this.token = str8;
        this.errorMessages = str9;
    }
}
