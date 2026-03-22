package com.roblox.client.locale;

import android.telephony.TelephonyManager;
import com.roblox.client.RobloxApplication;
import java.text.NumberFormat;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b {
    public static String a(int i) {
        return NumberFormat.getInstance().format(i);
    }

    public static String a() {
        TelephonyManager telephonyManager = (TelephonyManager) RobloxApplication.b().getSystemService("phone");
        if (telephonyManager != null) {
            return telephonyManager.getSimCountryIso();
        }
        return a.a().d().getCountry();
    }
}
