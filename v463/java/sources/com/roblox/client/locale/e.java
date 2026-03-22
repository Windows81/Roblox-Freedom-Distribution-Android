package com.roblox.client.locale;

import android.telephony.TelephonyManager;
import com.roblox.client.RobloxApplication;
import java.text.NumberFormat;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {
    public static String a(int i) {
        return NumberFormat.getInstance().format(i);
    }

    public static String a() {
        TelephonyManager telephonyManager = (TelephonyManager) RobloxApplication.b().getSystemService("phone");
        if (telephonyManager != null) {
            return telephonyManager.getSimCountryIso();
        }
        return b.a().c().getCountry();
    }
}
