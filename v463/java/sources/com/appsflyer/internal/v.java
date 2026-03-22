package com.appsflyer.internal;

import android.content.ContentResolver;
import android.os.Build;
import android.provider.Settings;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.w;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class v {
    v() {
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    public static w m198(ContentResolver contentResolver) {
        String string;
        if (contentResolver == null || AppsFlyerProperties.getInstance().getString("amazon_aid") != null || !"Amazon".equals(Build.MANUFACTURER)) {
            return null;
        }
        int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking", 2);
        if (i == 0) {
            String string2 = Settings.Secure.getString(contentResolver, "advertising_id");
            w.e eVar = w.e.AMAZON;
            return new w(string2, false);
        }
        if (i == 2) {
            return null;
        }
        try {
            string = Settings.Secure.getString(contentResolver, "advertising_id");
        } catch (Throwable th) {
            AFLogger.afErrorLog("Couldn't fetch Amazon Advertising ID (Ad-Tracking is limited!)", th);
            string = "";
        }
        w.e eVar2 = w.e.AMAZON;
        return new w(string, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0047 A[Catch: all -> 0x004e, TRY_LEAVE, TryCatch #4 {all -> 0x004e, blocks: (B:17:0x0041, B:19:0x0047), top: B:66:0x0041 }] */
    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m199(android.content.Context r13, java.util.Map<java.lang.String, java.lang.Object> r14) {
        /*
            Method dump skipped, instruction units count: 343
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.v.m199(android.content.Context, java.util.Map):void");
    }

    static class a extends IllegalStateException {
        a(String str) {
            super(str);
        }
    }
}
