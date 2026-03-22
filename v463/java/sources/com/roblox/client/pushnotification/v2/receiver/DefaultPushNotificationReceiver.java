package com.roblox.client.pushnotification.v2.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.roblox.client.ae.k;
import com.roblox.client.ae.o;
import com.roblox.client.b;
import com.roblox.client.http.p;
import com.roblox.client.l;
import com.roblox.client.q;
import com.roblox.client.s.c;
import com.roblox.client.s.h;
import com.roblox.client.startup.ActivitySplash;
import com.roblox.client.startup.e;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class DefaultPushNotificationReceiver extends BroadcastReceiver {
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

    private void a(final Context context, final Intent intent) {
        if (h.a().d()) {
            k.b("rbx.push", "loadTheApp: (v2) ...(logged in) launch Main.");
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.roblox.client.pushnotification.v2.receiver.DefaultPushNotificationReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    Intent intentA = DefaultPushNotificationReceiver.this.a(l.a().b(context), intent);
                    intentA.setFlags(268435456);
                    Bundle extras = intentA.getExtras();
                    if (extras != null) {
                        com.roblox.client.pushnotification.l.a().a(extras);
                    }
                    context.startActivity(intentA);
                }
            }, q.k == 0 ? 1000 : 0);
            return;
        }
        k.b("rbx.push", "loadTheApp: (v2) ...(not logged in) launch Splash.");
        Intent intentA = a(ActivitySplash.a(context, e.LOADED_FROM_PUSH_NOTIFICATION), intent);
        Bundle extras = intentA.getExtras();
        if (extras != null) {
            com.roblox.client.pushnotification.l.a().a(extras);
        }
        intentA.setFlags(268468224);
        context.startActivity(intentA);
    }

    private void a(Intent intent, Context context) {
        new p().a(context, intent.getStringExtra("EXTRA_NOTIFICATION_ID"));
    }

    private void a(String str, Context context, Intent intent, boolean z, String str2) {
        com.roblox.client.p.a(str, new com.roblox.client.pushnotification.q().a(context, "GcmPlatform"), str2, intent.getStringExtra("EXTRA_NOTIFICATION_ID"), o.a(context), z);
    }

    private void b(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("EXTRA_NOTIFICATION_TYPE");
        k.a("rbx.push", "cleared notifications of type: " + stringExtra);
        a("dismissed", context, intent, false, stringExtra);
    }

    private void c(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("EXTRA_NOTIFICATION_TYPE");
        a(context, intent);
        a(intent, context);
        a("clicked", context, intent, true, stringExtra);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Intent a(Intent intent, Intent intent2) {
        intent.putExtra("EXTRA_NOTIFICATION_TYPE", "DefaultNotification");
        intent.putExtra("EXTRA_NOTIFICATION_CUSTOM_DATA", intent2.getStringExtra("EXTRA_NOTIFICATION_CUSTOM_DATA"));
        return intent;
    }
}
