package com.roblox.client.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.preference.PreferenceManager;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class h {
    private static List<ResolveInfo> b(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 65536);
    }

    public static boolean a(Context context, Intent intent) {
        List<ResolveInfo> listB = b(context, intent);
        return listB != null && listB.size() > 0;
    }

    public static boolean a(Context context) {
        return com.google.android.gms.common.e.a().a(context) == 0;
    }

    public static boolean b(Context context) {
        try {
            context.getPackageManager().getApplicationInfo("com.android.vending", 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static boolean a() {
        return "google".equals("amazon");
    }

    public static void a(Activity activity, String str) {
        try {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(a() ? "amzn://apps/android?p=" + str : "market://details?id=" + str)));
        } catch (ActivityNotFoundException e) {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(a() ? "http://www.amazon.com/gp/mas/dl/android?p=" + str : "http://play.google.com/store/apps/details?id=" + str)));
        }
    }

    public static boolean b() {
        return Build.MANUFACTURER.toUpperCase().contains("SAMSUNG") && Build.VERSION.SDK_INT == 24;
    }

    public static boolean c(Context context) {
        if (context == null) {
            return false;
        }
        String strE = e(context);
        String string = PreferenceManager.getDefaultSharedPreferences(context).getString("STORED_APP_VERSION", "");
        g.a("rbx.locale", "CurrentAppVersion: " + strE + ", LastStoredAppVersion: " + string);
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
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
}
