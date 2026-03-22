package com.roblox.platform.http.postbody.notifications;

import com.roblox.platform.http.postbody.PostBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class PushMarkCategoryAsReadPostBody implements PostBody {
    public String category;
    public String latestNotificationId;
    public String notificationType;

    public PushMarkCategoryAsReadPostBody(String str, String str2, String str3) {
        this.notificationType = str;
        this.category = str2;
        this.latestNotificationId = str3;
    }
}
