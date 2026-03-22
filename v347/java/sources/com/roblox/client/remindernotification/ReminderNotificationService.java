package com.roblox.client.remindernotification;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.u;
import com.roblox.client.http.b;
import com.roblox.client.i;
import com.roblox.client.i.c;
import com.roblox.client.util.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class ReminderNotificationService extends u {
    public static void a(Context context, Intent intent) {
        g.b("ReminderNotificationHelper", "enqueuingWork.");
        a(context, ReminderNotificationService.class, 1000, intent);
    }

    @Override // android.support.v4.app.u
    protected void a(Intent intent) {
        g.b("ReminderNotificationHelper", "onHandleWord.");
        Context applicationContext = getApplicationContext();
        String action = intent.getAction();
        c.a().a(applicationContext, c.b.APP_INIT_TYPE_SHELL);
        b.a(applicationContext);
        if ("reminder_notification_dismissed".equals(action)) {
            g.b("ReminderNotificationHelper", "Reminder notification dismissed.");
            i.c("reminderNotificationDismissed", "reminderNotification");
        } else if ("reminder_notification_alarm_triggered".equals(action)) {
            com.roblox.client.b.c.a("ReminderNotification", "AlarmTriggered");
            g.b("ReminderNotificationHelper", "Trying to show the notification.");
            com.roblox.client.b.b(applicationContext);
            a.c(applicationContext);
            a.d(applicationContext);
        } else if ("android.intent.action.BOOT_COMPLETED".equals(action)) {
            g.b("ReminderNotificationHelper", "Device rebooted, resetting the alarm.");
            com.roblox.client.b.c.a("ReminderNotification", "deviceRebooted");
            i.c("deviceBooted", "reminderNotification");
            a.a(applicationContext);
        }
        i.a();
    }

    @Override // android.support.v4.app.u
    public boolean a() {
        g.b("ReminderNotificationHelper", "onStopCurrentWork.");
        com.roblox.client.b.c.a("ReminderNotification", "onStopCurrentWork.");
        i.c("reminderNotificationJobStopped", "reminderNotification");
        i.a();
        return super.a();
    }
}
