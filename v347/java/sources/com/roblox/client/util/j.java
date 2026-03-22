package com.roblox.client.util;

import android.content.Context;
import android.os.Build;
import android.os.PowerManager;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class j {
    public static boolean a(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        return Build.VERSION.SDK_INT >= 21 ? powerManager.isInteractive() : powerManager.isScreenOn();
    }
}
