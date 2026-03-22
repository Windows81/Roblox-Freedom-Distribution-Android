package com.roblox.client.fcm;

import android.content.Context;
import android.content.Intent;
import com.roblox.client.ae.l;
import com.roblox.client.pushnotification.b.k;
import com.roblox.client.pushnotification.m;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements m {
    @Override // com.roblox.client.pushnotification.m
    public String b() {
        return "GcmToken";
    }

    @Override // com.roblox.client.pushnotification.m
    public String c() {
        return "GcmPlatform";
    }

    @Override // com.roblox.client.pushnotification.m
    public k a() {
        return k.FIREBASE_CLOUD_MESSAGING;
    }

    public boolean a(Context context) {
        return l.a(context);
    }

    @Override // com.roblox.client.pushnotification.m
    public void a(Context context, boolean z) {
        a(context, z, a(context));
    }

    void a(Context context, boolean z, boolean z2) {
        if (z2) {
            Intent intent = new Intent(context, (Class<?>) RegistrationIntentService.class);
            intent.putExtra("AuthorizePushNotificationsForUser", z);
            RegistrationIntentService.a(context, intent);
        }
    }
}
