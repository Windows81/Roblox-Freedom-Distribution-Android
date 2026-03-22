package com.roblox.client.gcm;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.u;
import com.roblox.client.e.t;
import com.roblox.client.h;
import com.roblox.client.http.b;
import com.roblox.client.i.c;
import com.roblox.client.pushnotification.l;
import com.roblox.client.util.g;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class RegistrationIntentService extends u {
    private static final String[] j = {"friends", "chat"};

    static void a(Context context, Intent intent) {
        a(context, intent.getComponent(), 1100, intent);
    }

    @Override // android.support.v4.app.u
    protected void a(Intent intent) {
        c.a().a(this, c.b.APP_INIT_TYPE_SHELL);
        b.a(this);
        if (intent != null) {
            try {
                String strA = com.google.android.gms.iid.a.c(this).a(getString(h.a.gcm_defaultSenderId), "GCM", null);
                g.b("rbx.push", "RegistrationIntentService.onHandleIntent() Token: " + strA);
                l.a().a(new com.roblox.client.pushnotification.b.l(strA, this, intent.getBooleanExtra("AuthorizePushNotificationsForUser", false)));
            } catch (IOException e) {
                e.printStackTrace();
                org.greenrobot.eventbus.c.a().c(new t("PushNotificationRegistrationFailed"));
            }
        }
    }
}
