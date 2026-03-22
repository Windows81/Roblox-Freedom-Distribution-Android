package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f3560b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final IntentFilter f3559a = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static float f3561c = Float.NaN;

    @TargetApi(20)
    public static int a(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent intentRegisterReceiver = context.getApplicationContext().registerReceiver(null, f3559a);
        boolean z = ((intentRegisterReceiver == null ? 0 : intentRegisterReceiver.getIntExtra("plugged", 0)) & 7) != 0;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return -1;
        }
        return ((a(powerManager) ? 1 : 0) << 1) | (z ? 1 : 0);
    }

    @TargetApi(20)
    public static boolean a(PowerManager powerManager) {
        return n.h() ? powerManager.isInteractive() : powerManager.isScreenOn();
    }

    public static synchronized float b(Context context) {
        float f;
        if (SystemClock.elapsedRealtime() - f3560b >= 60000 || Float.isNaN(f3561c)) {
            if (context.getApplicationContext().registerReceiver(null, f3559a) != null) {
                f3561c = r0.getIntExtra("level", -1) / r0.getIntExtra("scale", -1);
            }
            f3560b = SystemClock.elapsedRealtime();
            f = f3561c;
        } else {
            f = f3561c;
        }
        return f;
    }
}
