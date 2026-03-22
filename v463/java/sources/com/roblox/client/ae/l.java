package com.roblox.client.ae;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.preference.PreferenceManager;
import com.appsflyer.internal.referrer.Payload;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class l {
    public static boolean a() {
        return false;
    }

    public static boolean b() {
        return false;
    }

    public static boolean c() {
        return true;
    }

    private static List<ResolveInfo> b(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 65536);
    }

    public static boolean a(Context context, Intent intent) {
        List<ResolveInfo> listB = b(context, intent);
        return listB != null && listB.size() > 0;
    }

    public static boolean a(Context context) {
        return com.roblox.client.ae.b.a.a(context);
    }

    public static boolean b(Context context) {
        try {
            context.getPackageManager().getApplicationInfo("com.android.vending", 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static String d() {
        boolean zA = a();
        String str = Payload.SOURCE_GOOGLE;
        if (zA) {
            str = "amazon";
        } else if (!c() && b()) {
            str = "tencent";
        }
        return t.d(str);
    }

    public static void a(Activity activity, String str) {
        StringBuilder sb;
        String str2;
        StringBuilder sb2;
        String str3;
        if (a()) {
            sb = new StringBuilder();
            str2 = "amzn://apps/android?p=";
        } else {
            sb = new StringBuilder();
            str2 = "market://details?id=";
        }
        sb.append(str2);
        sb.append(str);
        try {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(sb.toString())));
        } catch (ActivityNotFoundException unused) {
            if (a()) {
                sb2 = new StringBuilder();
                str3 = "http://www.amazon.com/gp/mas/dl/android?p=";
            } else {
                sb2 = new StringBuilder();
                str3 = "http://play.google.com/store/apps/details?id=";
            }
            sb2.append(str3);
            sb2.append(str);
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(sb2.toString())));
        }
    }

    public static boolean c(Context context) {
        if (context == null) {
            return false;
        }
        String strE = e(context);
        String string = PreferenceManager.getDefaultSharedPreferences(context).getString("STORED_APP_VERSION", "");
        k.a("rbx.locale", "CurrentAppVersion: " + strE + ", LastStoredAppVersion: " + string);
        return (string == null || string.equals(strE)) ? false : true;
    }

    public static void d(Context context) {
        if (context != null) {
            PreferenceManager.getDefaultSharedPreferences(context).edit().putString("STORED_APP_VERSION", e(context)).apply();
        }
    }

    public static String e(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
