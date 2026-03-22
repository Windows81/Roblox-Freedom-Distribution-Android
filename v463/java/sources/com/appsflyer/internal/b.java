package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class b {

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private IntentFilter f221 = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    public static final class e {

        /* JADX INFO: renamed from: ı, reason: contains not printable characters */
        public static final b f224 = new b();
    }

    b() {
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    public final d m156(Context context) {
        String str = null;
        float f = 0.0f;
        try {
            Intent intentRegisterReceiver = context.registerReceiver(null, this.f221);
            if (intentRegisterReceiver != null) {
                if (2 == intentRegisterReceiver.getIntExtra("status", -1)) {
                    int intExtra = intentRegisterReceiver.getIntExtra("plugged", -1);
                    str = intExtra != 1 ? intExtra != 2 ? intExtra != 4 ? "other" : "wireless" : "usb" : "ac";
                } else {
                    str = "no";
                }
                int intExtra2 = intentRegisterReceiver.getIntExtra("level", -1);
                int intExtra3 = intentRegisterReceiver.getIntExtra("scale", -1);
                if (-1 != intExtra2 && -1 != intExtra3) {
                    f = (intExtra2 * 100.0f) / intExtra3;
                }
            }
        } catch (Throwable unused) {
        }
        return new d(f, str);
    }

    public static final class d {

        /* JADX INFO: renamed from: ı, reason: contains not printable characters */
        public final float f222;

        /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
        public final String f223;

        d(float f, String str) {
            this.f222 = f;
            this.f223 = str;
        }
    }
}
