package com.google.android.gms.common.internal;

import android.R;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.a.a;
import com.google.android.gms.common.m;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("sCache")
    private static final android.support.v4.g.m<String, String> f3501a = new android.support.v4.g.m<>();

    public static String a(Context context) {
        String packageName = context.getPackageName();
        try {
            return com.google.android.gms.common.c.c.b(context).b(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String str = context.getApplicationInfo().name;
            return !TextUtils.isEmpty(str) ? str : packageName;
        }
    }

    public static String a(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
            case 6:
            case 18:
                break;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                break;
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                break;
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                break;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                break;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                break;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                break;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                Log.e("GoogleApiAvailability", new StringBuilder(33).append("Unexpected error code ").append(i).toString());
                break;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                break;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                break;
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                break;
        }
        return null;
    }

    private static String a(Context context, String str) {
        synchronized (f3501a) {
            String str2 = f3501a.get(str);
            if (str2 != null) {
                return str2;
            }
            Resources resourcesA = com.google.android.gms.common.j.a(context);
            if (resourcesA == null) {
                return null;
            }
            int identifier = resourcesA.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                String strValueOf = String.valueOf(str);
                Log.w("GoogleApiAvailability", strValueOf.length() != 0 ? "Missing resource: ".concat(strValueOf) : new String("Missing resource: "));
                return null;
            }
            String string = resourcesA.getString(identifier);
            if (!TextUtils.isEmpty(string)) {
                f3501a.put(str, string);
                return string;
            }
            String strValueOf2 = String.valueOf(str);
            Log.w("GoogleApiAvailability", strValueOf2.length() != 0 ? "Got empty resource: ".concat(strValueOf2) : new String("Got empty resource: "));
            return null;
        }
    }

    private static String a(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String strA = a(context, str);
        if (strA == null) {
            strA = resources.getString(m.a.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, strA, str2);
    }

    public static String b(Context context) {
        return context.getResources().getString(a.b.common_google_play_services_notification_channel_name);
    }

    public static String b(Context context, int i) {
        String strA = i == 6 ? a(context, "common_google_play_services_resolution_required_title") : a(context, i);
        return strA == null ? context.getResources().getString(a.b.common_google_play_services_notification_ticker) : strA;
    }

    public static String c(Context context, int i) {
        Resources resources = context.getResources();
        String strA = a(context);
        switch (i) {
            case 1:
                return resources.getString(a.b.common_google_play_services_install_text, strA);
            case 2:
                return com.google.android.gms.common.util.h.b(context) ? resources.getString(a.b.common_google_play_services_wear_update_text) : resources.getString(a.b.common_google_play_services_update_text, strA);
            case 3:
                return resources.getString(a.b.common_google_play_services_enable_text, strA);
            case 4:
            case 6:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                return resources.getString(m.a.common_google_play_services_unknown_issue, strA);
            case 5:
                return a(context, "common_google_play_services_invalid_account_text", strA);
            case 7:
                return a(context, "common_google_play_services_network_error_text", strA);
            case 9:
                return resources.getString(a.b.common_google_play_services_unsupported_text, strA);
            case 16:
                return a(context, "common_google_play_services_api_unavailable_text", strA);
            case 17:
                return a(context, "common_google_play_services_sign_in_failed_text", strA);
            case 18:
                return resources.getString(a.b.common_google_play_services_updating_text, strA);
            case 20:
                return a(context, "common_google_play_services_restricted_profile_text", strA);
        }
    }

    public static String d(Context context, int i) {
        return i == 6 ? a(context, "common_google_play_services_resolution_required_text", a(context)) : c(context, i);
    }

    public static String e(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(a.b.common_google_play_services_install_button);
            case 2:
                return resources.getString(a.b.common_google_play_services_update_button);
            case 3:
                return resources.getString(a.b.common_google_play_services_enable_button);
            default:
                return resources.getString(R.string.ok);
        }
    }
}
