package com.roblox.client.gcm;

import android.content.Context;
import android.content.Intent;
import com.roblox.client.pushnotification.b.k;
import com.roblox.client.pushnotification.m;
import com.roblox.client.util.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a implements m {
    @Override // com.roblox.client.pushnotification.m
    public k a() {
        return k.GOOGLE_CLOUD_MESSAGING;
    }

    public boolean a(Context context) {
        return h.a(context);
    }

    @Override // com.roblox.client.pushnotification.m
    public void a(Context context, boolean z) {
        a(context, z, a(context));
    }

    @Override // com.roblox.client.pushnotification.m
    public String b() {
        return "GcmToken";
    }

    @Override // com.roblox.client.pushnotification.m
    public String c() {
        return "GcmPlatform";
    }

    void a(Context context, boolean z, boolean z2) {
        if (z2) {
            Intent intent = new Intent(context, (Class<?>) RegistrationIntentService.class);
            intent.putExtra("AuthorizePushNotificationsForUser", z);
            RegistrationIntentService.a(context, intent);
        }
    }
}
