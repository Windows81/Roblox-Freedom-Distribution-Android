package com.roblox.client.pushnotification.notificationreceivers;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.roblox.client.ActivityNativeMain;
import com.roblox.client.b;
import com.roblox.client.http.p;
import com.roblox.client.http.q;
import com.roblox.client.i;
import com.roblox.client.i.c;
import com.roblox.client.i.h;
import com.roblox.client.pushnotification.o;
import com.roblox.client.startup.ActivitySplash;
import com.roblox.client.startup.e;
import com.roblox.client.util.g;
import com.roblox.client.util.k;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends BroadcastReceiver {
    protected abstract Intent a(Context context, Intent intent, Intent intent2);

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        c.a().a(context, c.b.APP_INIT_TYPE_SHELL);
        b.b(context);
        com.roblox.client.http.b.a(context);
        if (intent != null) {
            if (intent.getIntExtra("EXTRA_INTENT_ACTION_TYPE_CODE", -1) == 1) {
                b(context, intent);
            } else if (intent.getIntExtra("EXTRA_INTENT_ACTION_TYPE_CODE", -1) == 2) {
                c(context, intent);
            }
        }
    }

    protected void a(Context context, Intent intent) {
        if (h.a().d()) {
            Intent intentA = a(context, ActivityNativeMain.a(context, (com.roblox.client.game.a) null), intent);
            intentA.setFlags(268435456);
            context.startActivity(intentA);
        } else {
            Intent intentA2 = a(context, ActivitySplash.a(context, e.LOADED_FROM_PUSH_NOTIFICATION), intent);
            intentA2.setFlags(268468224);
            context.startActivity(intentA2);
        }
    }

    public void a(String str) {
        o.a().a(str).b();
    }

    protected void a(Intent intent, Context context) {
        if (!intent.getBooleanExtra("EXTRA_STACKED_NOTIFICATION", false)) {
            g.a("rbx.push", "marking single notifcation as read with id: " + intent.getStringExtra("EXTRA_NOTIFICATION_ID"));
            a(context, intent.getStringExtra("EXTRA_NOTIFICATION_ID"));
        } else {
            g.a("rbx.push", "marking stacked notifications as read with last id: " + intent.getStringExtra("EXTRA_NOTIFICATION_ID"));
            a(intent.getStringExtra("EXTRA_NOTIFICATION_TYPE"), intent.getStringExtra("EXTRA_CATEGORY"), intent.getStringExtra("EXTRA_NOTIFICATION_ID"));
        }
    }

    protected void a(Context context, String str) {
        new q().a(context, str);
    }

    protected void a(String str, String str2, String str3) {
        new p().a(str, str2, str3);
    }

    protected void a(String str, Context context, Intent intent, boolean z, String str2) {
        i.a(str, new com.roblox.client.pushnotification.q().a(context, "GcmPlatform"), str2, intent.getStringExtra("EXTRA_NOTIFICATION_ID"), k.c(context), z);
    }

    protected void a(String str, Context context, Intent intent, String str2, String str3, boolean z, String str4) {
        i.a(str, new com.roblox.client.pushnotification.q().a(context, "GcmPlatform"), str4, intent.getStringExtra("EXTRA_NOTIFICATION_ID"), str2, str3, z);
    }

    protected void a(Context context) {
        context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    }

    protected void a(Context context, int i) {
        ((NotificationManager) context.getSystemService("notification")).cancel(i);
    }

    protected void b(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("EXTRA_NOTIFICATION_TYPE");
        g.a("rbx.push", "cleared notifications of type: " + stringExtra);
        a(stringExtra);
        a("dismissed", context, intent, false, stringExtra);
    }

    protected void c(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("EXTRA_NOTIFICATION_TYPE");
        g.a("rbx.push", "notification of type " + stringExtra + " clicked");
        a(context, intent);
        a(stringExtra);
        a(intent, context);
        a("clicked", context, intent, true, stringExtra);
    }

    protected void a(String str, Context context, Intent intent, String str2) {
        a(str);
        a(context, intent.getStringExtra("EXTRA_NOTIFICATION_ID"));
        a("actionTaken", context, intent, str2, k.c(context), true, "FriendRequestReceived");
    }
}
