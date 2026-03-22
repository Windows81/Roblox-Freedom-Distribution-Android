package com.roblox.client.pushnotification.notificationreceivers;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class FriendRequestAcceptedNotificationReceiver extends a {
    @Override // com.roblox.client.pushnotification.notificationreceivers.a
    protected Intent a(Context context, Intent intent, Intent intent2) {
        intent.putExtra("EXTRA_NOTIFICATION_TYPE", "FriendRequestAccepted");
        intent.putExtra("EXTRA_NOTIFICATION_USER_ID", intent2.getLongExtra("EXTRA_NOTIFICATION_USER_ID", -1L));
        return intent;
    }
}
