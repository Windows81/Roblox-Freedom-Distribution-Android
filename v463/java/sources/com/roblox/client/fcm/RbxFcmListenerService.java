package com.roblox.client.fcm;

import android.content.Intent;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.roblox.client.ae.k;
import com.roblox.client.b;
import com.roblox.client.pushnotification.l;
import com.roblox.client.pushnotification.r;
import com.roblox.client.s.c;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RbxFcmListenerService extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        super.onNewToken(str);
        k.b("rbx.push", "Token refresh triggered.");
        if (l.a().d(this) == com.roblox.client.pushnotification.b.k.FIREBASE_CLOUD_MESSAGING) {
            RegistrationIntentService.a(this, new Intent(this, (Class<?>) RegistrationIntentService.class));
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        super.onMessageReceived(remoteMessage);
        c.d().a(getApplicationContext(), c.b.APP_INIT_TYPE_SHELL);
        Map<String, String> mapA = remoteMessage.a();
        b.b(this);
        String str = mapA.get("version");
        k.b("rbx.push", "RGLS.onMessageReceived() NotificationVersion: " + str);
        com.roblox.client.locale.b.a().b(this);
        if (str != null) {
            new com.roblox.client.pushnotification.v2.b().a(this, mapA);
            return;
        }
        String str2 = mapA.get("message");
        k.b("rbx.push", "RGLS.onMessageReceived() Message: " + str2);
        new r().a(this, str2);
    }
}
