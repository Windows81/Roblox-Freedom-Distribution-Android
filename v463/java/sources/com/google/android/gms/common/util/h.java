package com.google.android.gms.common.util;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f3877b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final IntentFilter f3876a = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static float f3878c = Float.NaN;

    public static int a(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent intentRegisterReceiver = context.getApplicationContext().registerReceiver(null, f3876a);
        int i = ((intentRegisterReceiver == null ? 0 : intentRegisterReceiver.getIntExtra("plugged", 0)) & 7) != 0 ? 1 : 0;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return -1;
        }
        return ((a(powerManager) ? 1 : 0) << 1) | i;
    }

    public static boolean a(PowerManager powerManager) {
        return m.f() ? powerManager.isInteractive() : powerManager.isScreenOn();
    }

    public static synchronized float b(Context context) {
        if (SystemClock.elapsedRealtime() - f3877b < 60000 && !Float.isNaN(f3878c)) {
            return f3878c;
        }
        if (context.getApplicationContext().registerReceiver(null, f3876a) != null) {
            f3878c = r6.getIntExtra("level", -1) / r6.getIntExtra("scale", -1);
        }
        f3877b = SystemClock.elapsedRealtime();
        return f3878c;
    }
}
