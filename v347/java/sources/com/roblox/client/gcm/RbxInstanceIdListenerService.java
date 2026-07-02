package com.roblox.client.gcm;

import android.content.Intent;
import android.util.Log;
import com.google.android.gms.iid.b;
import com.roblox.client.pushnotification.b.k;
import com.roblox.client.pushnotification.l;

/* JADX INFO: loaded from: classes.dex */
public class RbxInstanceIdListenerService extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f7017b = RbxInstanceIdListenerService.class.getCanonicalName();

    @Override // com.google.android.gms.iid.b
    public void a() {
        super.a();
        Log.i(f7017b, "Token refresh triggered.");
        if (l.a().d(this) == k.GOOGLE_CLOUD_MESSAGING) {
            RegistrationIntentService.a(this, new Intent(this, (Class<?>) RegistrationIntentService.class));
        }
    }
}
