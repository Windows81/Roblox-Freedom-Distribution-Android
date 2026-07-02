package com.roblox.client.startup;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.roblox.client.remindernotification.ReminderNotificationService;

/* JADX INFO: loaded from: classes.dex */
public class BootCompletedBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        ReminderNotificationService.a(context, intent);
    }
}
