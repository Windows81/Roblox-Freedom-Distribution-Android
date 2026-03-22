package com.roblox.platform.http.postbody.notifications;

import com.roblox.platform.http.postbody.PostBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class PushMarkAsReadPostBody implements PostBody {
    public String notificationId;
    public String platformType;

    public PushMarkAsReadPostBody(String str, String str2) {
        this.platformType = str;
        this.notificationId = str2;
    }
}
