package com.appsflyer;

import com.appsflyer.internal.af;
import com.appsflyer.internal.c;
import com.google.firebase.messaging.FirebaseMessagingService;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class FirebaseMessagingServiceListener extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        super.onNewToken(str);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (str != null) {
            AFLogger.afInfoLog("Firebase Refreshed Token = ".concat(String.valueOf(str)));
            c.a.C0067c c0067cM172 = c.a.C0067c.m172(AppsFlyerProperties.getInstance().getString("afUninstallToken"));
            c.a.C0067c c0067c = new c.a.C0067c(jCurrentTimeMillis, str);
            if (c0067cM172.m175(c0067c)) {
                af.m126(getApplicationContext(), c0067c.f236);
            }
        }
    }
}
