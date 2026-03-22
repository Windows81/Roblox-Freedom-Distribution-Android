package com.google.android.gms.gcm;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.util.MissingFormatArgumentException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static c f3619a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f3620b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f3621c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicInteger f3622d = new AtomicInteger((int) SystemClock.elapsedRealtime());

    private c(Context context) {
        this.f3620b = context.getApplicationContext();
    }

    private final Bundle a() {
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = this.f3620b.getPackageManager().getApplicationInfo(this.f3620b.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e) {
        }
        return (applicationInfo == null || applicationInfo.metaData == null) ? Bundle.EMPTY : applicationInfo.metaData;
    }

    static synchronized c a(Context context) {
        if (f3619a == null) {
            f3619a = new c(context);
        }
        return f3619a;
    }

    static String a(Bundle bundle, String str) {
        String string = bundle.getString(str);
        return string == null ? bundle.getString(str.replace("gcm.n.", "gcm.notification.")) : string;
    }

    private final String b(Bundle bundle, String str) {
        String strA = a(bundle, str);
        if (!TextUtils.isEmpty(strA)) {
            return strA;
        }
        String strValueOf = String.valueOf(str);
        String strValueOf2 = String.valueOf("_loc_key");
        String strA2 = a(bundle, strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
        if (TextUtils.isEmpty(strA2)) {
            return null;
        }
        Resources resources = this.f3620b.getResources();
        int identifier = resources.getIdentifier(strA2, "string", this.f3620b.getPackageName());
        if (identifier == 0) {
            String strValueOf3 = String.valueOf(str);
            String strValueOf4 = String.valueOf("_loc_key");
            String strSubstring = (strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3)).substring(6);
            Log.w("GcmNotification", new StringBuilder(String.valueOf(strSubstring).length() + 49 + String.valueOf(strA2).length()).append(strSubstring).append(" resource not found: ").append(strA2).append(" Default value will be used.").toString());
            return null;
        }
        String strValueOf5 = String.valueOf(str);
        String strValueOf6 = String.valueOf("_loc_args");
        String strA3 = a(bundle, strValueOf6.length() != 0 ? strValueOf5.concat(strValueOf6) : new String(strValueOf5));
        if (TextUtils.isEmpty(strA3)) {
            return resources.getString(identifier);
        }
        try {
            JSONArray jSONArray = new JSONArray(strA3);
            Object[] objArr = new String[jSONArray.length()];
            for (int i = 0; i < objArr.length; i++) {
                objArr[i] = jSONArray.opt(i);
            }
            return resources.getString(identifier, objArr);
        } catch (MissingFormatArgumentException e) {
            Log.w("GcmNotification", new StringBuilder(String.valueOf(strA2).length() + 58 + String.valueOf(strA3).length()).append("Missing format argument for ").append(strA2).append(": ").append(strA3).append(" Default value will be used.").toString(), e);
            return null;
        } catch (JSONException e2) {
            String strValueOf7 = String.valueOf(str);
            String strValueOf8 = String.valueOf("_loc_args");
            String strSubstring2 = (strValueOf8.length() != 0 ? strValueOf7.concat(strValueOf8) : new String(strValueOf7)).substring(6);
            Log.w("GcmNotification", new StringBuilder(String.valueOf(strSubstring2).length() + 41 + String.valueOf(strA3).length()).append("Malformed ").append(strSubstring2).append(": ").append(strA3).append("  Default value will be used.").toString());
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final boolean a(android.os.Bundle r14) {
        /*
            Method dump skipped, instruction units count: 783
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.gcm.c.a(android.os.Bundle):boolean");
    }
}
