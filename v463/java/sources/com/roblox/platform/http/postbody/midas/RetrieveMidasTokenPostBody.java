package com.roblox.platform.http.postbody.midas;

import com.roblox.platform.http.postbody.PostBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RetrieveMidasTokenPostBody implements PostBody {
    private final String mainProductCode;
    private final String midasPlatformId;
    private final String midasPlatformKey;

    public RetrieveMidasTokenPostBody(String str, String str2, String str3) {
        this.mainProductCode = str;
        this.midasPlatformId = str2;
        this.midasPlatformKey = str3;
    }
}
