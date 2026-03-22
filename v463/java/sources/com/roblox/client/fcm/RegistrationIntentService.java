package com.roblox.client.fcm;

import android.content.Context;
import android.content.Intent;
import androidx.core.app.f;
import com.google.android.gms.f.d;
import com.google.android.gms.f.e;
import com.google.android.gms.f.g;
import com.google.firebase.iid.FirebaseInstanceId;
import com.roblox.client.ae.k;
import com.roblox.client.http.b;
import com.roblox.client.pushnotification.l;
import com.roblox.client.s.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RegistrationIntentService extends f {
    private static final String[] j = {"friends", "chat"};

    static void a(Context context, Intent intent) {
        a(context, intent.getComponent(), 1100, intent);
    }

    @Override // androidx.core.app.f
    protected void a(final Intent intent) {
        c.d().a(this, c.b.APP_INIT_TYPE_SHELL);
        b.a(this);
        if (intent == null) {
            return;
        }
        g<com.google.firebase.iid.a> gVarD = FirebaseInstanceId.a().d();
        gVarD.a(new e<com.google.firebase.iid.a>() { // from class: com.roblox.client.fcm.RegistrationIntentService.1
            @Override // com.google.android.gms.f.e
            public void a(com.google.firebase.iid.a aVar) {
                String strA = aVar.a();
                k.b("rbx.push", "RegistrationIntentService.onHandleIntent() Token: " + strA);
                l.a().a(new com.roblox.client.pushnotification.b.l(strA, RegistrationIntentService.this, intent.getBooleanExtra("AuthorizePushNotificationsForUser", false)));
            }
        });
        gVarD.a(new d() { // from class: com.roblox.client.fcm.RegistrationIntentService.2
            @Override // com.google.android.gms.f.d
            public void a(Exception exc) {
                exc.printStackTrace();
                org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.l("PushNotificationRegistrationFailed"));
            }
        });
    }
}
