package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ah {

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private static String f182;

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private static String f183;

    ah() {
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    public static void m133(String str) {
        f182 = str;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            if (i == 0 || i == str.length() - 1) {
                sb.append(str.charAt(i));
            } else {
                sb.append("*");
            }
        }
        f183 = sb.toString();
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    public static void m134(String str) {
        if (f182 == null) {
            m133(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY));
        }
        String str2 = f182;
        if (str2 == null || !str.contains(str2)) {
            return;
        }
        AFLogger.afInfoLog(str.replace(f182, f183));
    }
}
