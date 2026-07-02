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
import android.support.v4.app.ac;
import android.support.v4.app.z;
import com.roblox.client.R;
import com.roblox.client.b;
import com.roblox.client.b.c;
import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.i;
import com.roblox.client.i.h;
import com.roblox.client.q.d;
import com.roblox.client.startup.ActivitySplash;
import com.roblox.client.startup.BootCompletedBroadcastReceiver;
import com.roblox.client.startup.e;
import com.roblox.client.util.g;
import com.roblox.client.util.m;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.IllegalFormatException;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f7768a = UUID.randomUUID().hashCode();

    public static void a(Context context, long j) {
        m mVarA = m.a(context);
        if (d(mVarA) != -1) {
            if (!a(mVarA)) {
                d(context);
                e(context);
            } else {
                SharedPreferences.Editor editorEdit = mVarA.a().edit();
                editorEdit.putLong("TimeSinceLastSignedIn", j);
                editorEdit.apply();
            }
        }
    }

    public static void a(Context context, String str, long j) {
        g.b("ReminderNotificationHelper", "Scheduling alarm for broadcasting.");
        b(context, str, j);
        int iBu = b.bu();
        Calendar calendar = Calendar.getInstance();
        calendar.add(5, iBu);
        calendar.set(11, 16);
        calendar.set(12, 30);
        long timeInMillis = calendar.getTimeInMillis();
        b(context, timeInMillis);
        c(context, timeInMillis);
    }

    private static void e(Context context) {
        g.b("ReminderNotificationHelper", "canceling alarm.");
        PendingIntent pendingIntentF = f(context);
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        if (alarmManager != null) {
            alarmManager.cancel(pendingIntentF);
            i.c("alarmCanceled", "reminderNotification");
        } else {
            i.c("cancelingAlarmMgrNull", "reminderNotification");
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
        b(context, c(m.a(context)));
    }

    public static void b(Context context) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (notificationManager != null) {
            g.b("ReminderNotificationHelper", "Canceling reminder notification.");
            notificationManager.cancel("ReminderNotificationABTestTAG", f7768a);
        }
    }

    public static void a(Intent intent) {
        if (intent != null && e.REMINDER_NOTIFICATION == intent.getSerializableExtra("STARTED_FOR_INTENT_KEY")) {
            g.b("ReminderNotificationHelper", "App opened from reminder notification");
            b();
        }
    }

    static void c(Context context) {
        String str;
        String str2;
        if (c()) {
            g.b("ReminderNotificationHelper", "App in foreground. No need to show notification.");
            a("appIsVisible");
            return;
        }
        m mVarA = m.a(context);
        if (!a(mVarA)) {
            g.b("ReminderNotificationHelper", "App recently used. No need to show notification.");
            a("userActiveBeforeXDays");
            return;
        }
        if (!b(mVarA)) {
            g.b("ReminderNotificationHelper", "Different user logged in.");
            a("userLoggedOut");
            return;
        }
        if (!Locale.getDefault().getLanguage().equals(new Locale("en").getLanguage())) {
            g.b("ReminderNotificationHelper", "Feature available only in English.");
            a("localeNotValid");
            return;
        }
        g.b("ReminderNotificationHelper", "Creating reminder notification.");
        z.c cVar = new z.c(context, "channel_general");
        cVar.a(R.mipmap.ic_launcher);
        cVar.a(h(context));
        cVar.b(g(context));
        cVar.a(true);
        cVar.a(BitmapFactory.decodeResource(context.getResources(), R.mipmap.ic_launcher));
        cVar.a((CharSequence) context.getString(R.string.CommonUI_Messages_Label_Roblox));
        String strF = d.a().f();
        try {
            str = String.format(b.bw(), strF);
        } catch (IllegalFormatException e) {
            str = String.format("%1$s, check out these top games!", strF);
            c.a("Illegal format exception on reminder notification short text.");
        }
        cVar.b(str);
        try {
            str2 = String.format(b.bv(), strF);
        } catch (IllegalFormatException e2) {
            str2 = String.format("%1$s, play the most popular games on Roblox now!", strF);
            c.a("Illegal format exception on reminder notification long text.");
        }
        cVar.a(new z.b().a(str2));
        ac acVarA = ac.a(context);
        if (Build.VERSION.SDK_INT >= 19 && !acVarA.a()) {
            i.c("notificationsDisabled", "reminderNotification");
        }
        if (b.bO()) {
            acVarA.a("ReminderNotificationABTestTAG", f7768a, cVar.a());
            a();
        }
    }

    private static void b(Context context, String str, long j) {
        SharedPreferences.Editor editorEdit = m.a(context).a().edit();
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
        i.a("alarmSetToTrigger", "reminderNotification", arrayList);
    }

    private static void a() {
        i.c("reminderNotificationShown", "reminderNotification");
    }

    private static void a(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("reason", str));
        i.a("reminderNotificationNotShown", "reminderNotification", arrayList);
    }

    private static void b() {
        i.c("reminderNotificationClicked", "reminderNotification");
    }

    private static PendingIntent g(Context context) {
        Intent intent = new Intent(context, (Class<?>) ReminderNotificationBroadcastReceiver.class);
        intent.setAction("reminder_notification_dismissed");
        return PendingIntent.getBroadcast(context, 1001, intent, 268435456);
    }

    private static PendingIntent h(Context context) {
        return PendingIntent.getActivity(context, 1000, i(context), 134217728);
    }

    private static boolean a(m mVar) {
        return d(mVar) + 86400000 > f(mVar);
    }

    private static boolean b(m mVar) {
        return h.a().b() != -1 && e(mVar).equals(d.a().f());
    }

    private static boolean c() {
        return com.roblox.client.i.c.a().d();
    }

    static void d(Context context) {
        g.b("ReminderNotificationHelper", "clearing preferences");
        SharedPreferences.Editor editorEdit = m.a(context).a().edit();
        editorEdit.remove("TimeSinceLastSignedIn");
        editorEdit.remove("LastSignedUpUsername");
        editorEdit.remove("LastSignedUpTime");
        editorEdit.apply();
        context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, (Class<?>) BootCompletedBroadcastReceiver.class), 2, 1);
    }

    private static void c(Context context, long j) {
        SharedPreferences.Editor editorEdit = m.a(context).a().edit();
        editorEdit.putLong("AlarmTriggerTime", j);
        editorEdit.apply();
    }

    private static long c(m mVar) {
        return mVar.a().getLong("AlarmTriggerTime", -1L);
    }

    private static long d(m mVar) {
        return mVar.a().getLong("LastSignedUpTime", -1L);
    }

    private static String e(m mVar) {
        return mVar.a().getString("LastSignedUpUsername", "");
    }

    private static long f(m mVar) {
        return mVar.a().getLong("TimeSinceLastSignedIn", -1L);
    }

    private static Intent i(Context context) {
        Intent intentA = ActivitySplash.a(context, e.REMINDER_NOTIFICATION);
        intentA.setFlags(268468224);
        return intentA;
    }
}
