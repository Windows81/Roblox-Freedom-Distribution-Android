package com.roblox.platform.http.postbody.notifications;

import com.roblox.platform.http.postbody.PostBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RegisterPushNotificationPostBody implements PostBody {
    public boolean authorizeForUser;
    public String notificationToken;
    public String oldNotificationToken;

    public RegisterPushNotificationPostBody(String str, boolean z, String str2) {
        this.notificationToken = str;
        this.authorizeForUser = z;
        this.oldNotificationToken = str2;
    }
}
