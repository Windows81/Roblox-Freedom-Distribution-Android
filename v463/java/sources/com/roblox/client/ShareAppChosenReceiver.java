package com.roblox.client;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ShareAppChosenReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            Object obj = extras.get("android.intent.extra.CHOSEN_COMPONENT");
            if (obj instanceof ComponentName) {
                com.roblox.client.z.b.b(((ComponentName) obj).getPackageName());
            }
        }
    }
}
