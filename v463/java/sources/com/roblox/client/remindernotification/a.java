package com.roblox.client.remindernotification;

import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.BitmapFactory;
import android.os.Build;
import androidx.core.app.i;
import androidx.core.app.l;
import com.roblox.client.ad.c;
import com.roblox.client.ae.k;
import com.roblox.client.ae.s;
import com.roblox.client.analytics.d;
import com.roblox.client.b;
import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.s.h;
import com.roblox.client.startup.ActivitySplash;
import com.roblox.client.startup.BootCompletedBroadcastReceiver;
import com.roblox.client.startup.e;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.IllegalFormatException;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f6952a = UUID.randomUUID().hashCode();

    public static void a(Context context, long j) {
        s sVarA = s.a(context);
        if (d(sVarA) == -1) {
            return;
        }
        if (!a(sVarA)) {
            d(context);
            e(context);
        } else {
            SharedPreferences.Editor editorEdit = sVarA.a().edit();
            editorEdit.putLong("TimeSinceLastSignedIn", j);
            editorEdit.apply();
        }
    }

    public static void a(Context context, String str, long j) {
        k.b("ReminderNotificationHelper", "Scheduling alarm for broadcasting.");
        b(context, str, j);
        int iAC = b.aC();
        Calendar calendar = Calendar.getInstance();
        calendar.add(5, iAC);
        calendar.set(11, 16);
        calendar.set(12, 30);
        long timeInMillis = calendar.getTimeInMillis();
        b(context, timeInMillis);
        c(context, timeInMillis);
    }

    private static void e(Context context) {
        k.b("ReminderNotificationHelper", "canceling alarm.");
        PendingIntent pendingIntentF = f(context);
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        if (alarmManager != null) {
            alarmManager.cancel(pendingIntentF);
            p.d("alarmCanceled", "reminderNotification");
        } else {
            p.d("cancelingAlarmMgrNull", "reminderNotification");
        }
    }

    private static void b(Context context, long j) {
        PendingIntent pendingIntentF = f(context);
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        if (alarmManager != null) {
            alarmManager.cancel(pendingIntentF);
            if (Build.VERSION.SDK_INT >= 23) {
                alarmManager.setExactAndAllowWhileIdle(0, j, pendingIntentF);
            } else if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, j, pendingIntentF);
            } else {
                alarmManager.set(0, j, pendingIntentF);
            }
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, (Class<?>) BootCompletedBroadcastReceiver.class), 1, 1);
            a(j);
        }
    }

    static void a(Context context) {
        b(context, c(s.a(context)));
    }

    public static void b(Context context) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (notificationManager != null) {
            k.b("ReminderNotificationHelper", "Canceling reminder notification.");
            notificationManager.cancel("ReminderNotificationABTestTAG", f6952a);
        }
    }

    public static void a(Intent intent) {
        if (intent == null || e.REMINDER_NOTIFICATION != intent.getSerializableExtra("STARTED_FOR_INTENT_KEY")) {
            return;
        }
        k.b("ReminderNotificationHelper", "App opened from reminder notification");
        b();
    }

    static void c(Context context) {
        String str;
        String str2;
        if (c()) {
            k.b("ReminderNotificationHelper", "App in foreground. No need to show notification.");
            a("appIsVisible");
            return;
        }
        s sVarA = s.a(context);
        if (!a(sVarA)) {
            k.b("ReminderNotificationHelper", "App recently used. No need to show notification.");
            a("userActiveBeforeXDays");
            return;
        }
        if (!b(sVarA)) {
            k.b("ReminderNotificationHelper", "Different user logged in.");
            a("userLoggedOut");
            return;
        }
        if (!Locale.getDefault().getLanguage().equals(new Locale("en").getLanguage())) {
            k.b("ReminderNotificationHelper", "Feature available only in English.");
            a("localeNotValid");
            return;
        }
        k.b("ReminderNotificationHelper", "Creating reminder notification.");
        i.c cVar = new i.c(context, "channel_general");
        cVar.a(o.e.notification_icon);
        cVar.a(h(context));
        cVar.b(g(context));
        cVar.a(true);
        cVar.a(BitmapFactory.decodeResource(context.getResources(), o.i.ic_launcher));
        cVar.a((CharSequence) context.getString(o.j.CommonUI_Messages_Label_Roblox));
        String strE = c.a().e();
        try {
            str = String.format(b.aE(), strE);
        } catch (IllegalFormatException unused) {
            str = String.format("%1$s, check out these top games!", strE);
            d.a("Illegal format exception on reminder notification short text.");
        }
        cVar.b(str);
        try {
            str2 = String.format(b.aD(), strE);
        } catch (IllegalFormatException unused2) {
            str2 = String.format("%1$s, play the most popular games on Roblox now!", strE);
            d.a("Illegal format exception on reminder notification long text.");
        }
        cVar.a(new i.b().a(str2));
        l lVarA = l.a(context);
        if (Build.VERSION.SDK_INT >= 19 && !lVarA.a()) {
            p.d("notificationsDisabled", "reminderNotification");
        }
        if (b.aP()) {
            lVarA.a("ReminderNotificationABTestTAG", f6952a, cVar.b());
            a();
        }
    }

    private static void b(Context context, String str, long j) {
        SharedPreferences.Editor editorEdit = s.a(context).a().edit();
        editorEdit.putString("LastSignedUpUsername", str);
        editorEdit.putLong("LastSignedUpTime", j);
        editorEdit.apply();
    }

    private static PendingIntent f(Context context) {
        Intent intent = new Intent(context, (Class<?>) ReminderNotificationBroadcastReceiver.class);
        intent.setAction("reminder_notification_alarm_triggered");
        return PendingIntent.getBroadcast(context, 1002, intent, 268435456);
    }

    private static void a(long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("triggerDate", String.valueOf(j)));
        p.a("alarmSetToTrigger", "reminderNotification", arrayList);
    }

    private static void a() {
        p.d("reminderNotificationShown", "reminderNotification");
    }

    private static void a(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("reason", str));
        p.a("reminderNotificationNotShown", "reminderNotification", arrayList);
    }

    private static void b() {
        p.d("reminderNotificationClicked", "reminderNotification");
    }

    private static PendingIntent g(Context context) {
        Intent intent = new Intent(context, (Class<?>) ReminderNotificationBroadcastReceiver.class);
        intent.setAction("reminder_notification_dismissed");
        return PendingIntent.getBroadcast(context, 1001, intent, 268435456);
    }

    private static PendingIntent h(Context context) {
        return PendingIntent.getActivity(context, 1000, i(context), 134217728);
    }

    private static boolean a(s sVar) {
        return d(sVar) + 86400000 > f(sVar);
    }

    private static boolean b(s sVar) {
        return h.a().b() != -1 && e(sVar).equals(c.a().e());
    }

    private static boolean c() {
        return com.roblox.client.s.c.d().g();
    }

    static void d(Context context) {
        k.b("ReminderNotificationHelper", "clearing preferences");
        SharedPreferences.Editor editorEdit = s.a(context).a().edit();
        editorEdit.remove("TimeSinceLastSignedIn");
        editorEdit.remove("LastSignedUpUsername");
        editorEdit.remove("LastSignedUpTime");
        editorEdit.apply();
        context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, (Class<?>) BootCompletedBroadcastReceiver.class), 2, 1);
    }

    private static void c(Context context, long j) {
        SharedPreferences.Editor editorEdit = s.a(context).a().edit();
        editorEdit.putLong("AlarmTriggerTime", j);
        editorEdit.apply();
    }

    private static long c(s sVar) {
        return sVar.a().getLong("AlarmTriggerTime", -1L);
    }

    private static long d(s sVar) {
        return sVar.a().getLong("LastSignedUpTime", -1L);
    }

    private static String e(s sVar) {
        return sVar.a().getString("LastSignedUpUsername", "");
    }

    private static long f(s sVar) {
        return sVar.a().getLong("TimeSinceLastSignedIn", -1L);
    }

    private static Intent i(Context context) {
        Intent intentA = ActivitySplash.a(context, e.REMINDER_NOTIFICATION);
        intentA.setFlags(268468224);
        return intentA;
    }
}
