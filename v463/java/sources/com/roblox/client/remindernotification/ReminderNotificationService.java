package com.roblox.client.remindernotification;

import android.content.Context;
import android.content.Intent;
import androidx.core.app.f;
import com.roblox.client.ae.k;
import com.roblox.client.analytics.d;
import com.roblox.client.http.b;
import com.roblox.client.p;
import com.roblox.client.s.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ReminderNotificationService extends f {
    public static void a(Context context, Intent intent) {
        k.b("ReminderNotificationHelper", "enqueuingWork.");
        a(context, ReminderNotificationService.class, 1000, intent);
    }

    @Override // androidx.core.app.f
    protected void a(Intent intent) {
        k.b("ReminderNotificationHelper", "onHandleWord.");
        Context applicationContext = getApplicationContext();
        String action = intent.getAction();
        c.d().a(applicationContext, c.b.APP_INIT_TYPE_SHELL);
        b.a(applicationContext);
        if ("reminder_notification_dismissed".equals(action)) {
            k.b("ReminderNotificationHelper", "Reminder notification dismissed.");
            p.d("reminderNotificationDismissed", "reminderNotification");
        } else if ("reminder_notification_alarm_triggered".equals(action)) {
            d.a("ReminderNotification", "AlarmTriggered");
            k.b("ReminderNotificationHelper", "Trying to show the notification.");
            com.roblox.client.b.b(applicationContext);
            a.c(applicationContext);
            a.d(applicationContext);
        } else if ("android.intent.action.BOOT_COMPLETED".equals(action)) {
            k.b("ReminderNotificationHelper", "Device rebooted, resetting the alarm.");
            d.a("ReminderNotification", "deviceRebooted");
            p.d("deviceBooted", "reminderNotification");
            a.a(applicationContext);
        }
        p.a();
    }

    @Override // androidx.core.app.f
    public boolean a() {
        k.b("ReminderNotificationHelper", "onStopCurrentWork.");
        d.a("ReminderNotification", "onStopCurrentWork.");
        p.d("reminderNotificationJobStopped", "reminderNotification");
        p.a();
        return super.a();
    }
}
