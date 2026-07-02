package com.roblox.client.gcm;

import android.os.Bundle;
import com.roblox.client.b;
import com.roblox.client.pushnotification.r;
import com.roblox.client.util.g;

/* JADX INFO: loaded from: classes.dex */
public class RbxGcmListenerService extends com.google.android.gms.gcm.a {
    @Override // com.google.android.gms.gcm.a
    public void a(String str, Bundle bundle) {
        super.a(str, bundle);
        b.b(this);
        String string = bundle.getString("message");
        g.b("rbx.push", "RGLS.onMessageReceived() From: " + str);
        g.b("rbx.push", "RGLS.onMessageReceived() Message: " + string);
        new r().a(this, string);
    }
}
