package com.roblox.client.pushnotification.notificationreceivers;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.roblox.client.ae.k;
import com.roblox.client.b;
import com.roblox.client.http.p;
import com.roblox.client.l;
import com.roblox.client.pushnotification.o;
import com.roblox.client.pushnotification.q;
import com.roblox.client.s.c;
import com.roblox.client.s.h;
import com.roblox.client.startup.ActivitySplash;
import com.roblox.client.startup.e;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a extends BroadcastReceiver {
    protected abstract Intent a(Context context, Intent intent, Intent intent2);

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        c.d().a(context, c.b.APP_INIT_TYPE_SHELL);
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
        Intent intentA;
        if (h.a().d()) {
            k.b("rbx.push", "loadTheApp: ...(logged in) launch Main.");
            intentA = a(context, l.a().b(context), intent);
            intentA.setFlags(268435456);
        } else {
            k.b("rbx.push", "loadTheApp: ...(not logged in) launch Splash.");
            intentA = a(context, ActivitySplash.a(context, e.LOADED_FROM_PUSH_NOTIFICATION), intent);
            intentA.setFlags(268468224);
        }
        Bundle extras = intentA.getExtras();
        if (extras != null) {
            com.roblox.client.pushnotification.l.a().a(extras);
        }
        context.startActivity(intentA);
    }

    public void a(String str) {
        o.a().a(str).b();
    }

    protected void a(Intent intent, Context context) {
        if (!intent.getBooleanExtra("EXTRA_STACKED_NOTIFICATION", false)) {
            k.a("rbx.push", "marking single notifcation as read with id: " + intent.getStringExtra("EXTRA_NOTIFICATION_ID"));
            a(context, intent.getStringExtra("EXTRA_NOTIFICATION_ID"));
            return;
        }
        k.a("rbx.push", "marking stacked notifications as read with last id: " + intent.getStringExtra("EXTRA_NOTIFICATION_ID"));
        a(intent.getStringExtra("EXTRA_NOTIFICATION_TYPE"), intent.getStringExtra("EXTRA_CATEGORY"), intent.getStringExtra("EXTRA_NOTIFICATION_ID"));
    }

    protected void a(Context context, String str) {
        new p().a(context, str);
    }

    protected void a(String str, String str2, String str3) {
        new com.roblox.client.http.o().a(str, str2, str3);
    }

    protected void a(String str, Context context, Intent intent, boolean z, String str2) {
        com.roblox.client.p.a(str, new q().a(context, "GcmPlatform"), str2, intent.getStringExtra("EXTRA_NOTIFICATION_ID"), com.roblox.client.ae.o.a(context), z);
    }

    protected void a(String str, Context context, Intent intent, String str2, String str3, boolean z, String str4) {
        com.roblox.client.p.a(str, new q().a(context, "GcmPlatform"), str4, intent.getStringExtra("EXTRA_NOTIFICATION_ID"), str2, str3, z);
    }

    protected void a(Context context) {
        context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    }

    protected void a(Context context, int i) {
        ((NotificationManager) context.getSystemService("notification")).cancel(i);
    }

    protected void b(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("EXTRA_NOTIFICATION_TYPE");
        k.a("rbx.push", "cleared notifications of type: " + stringExtra);
        a(stringExtra);
        a("dismissed", context, intent, false, stringExtra);
    }

    protected void c(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("EXTRA_NOTIFICATION_TYPE");
        k.a("rbx.push", "notification of type " + stringExtra + " clicked");
        a(context, intent);
        a(stringExtra);
        a(intent, context);
        a("clicked", context, intent, true, stringExtra);
    }

    protected void a(String str, Context context, Intent intent, String str2) {
        a(str);
        a(context, intent.getStringExtra("EXTRA_NOTIFICATION_ID"));
        a("actionTaken", context, intent, str2, com.roblox.client.ae.o.a(context), true, "FriendRequestReceived");
    }
}
