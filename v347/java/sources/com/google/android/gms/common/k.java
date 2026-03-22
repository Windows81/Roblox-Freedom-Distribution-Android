package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.common.m;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    public static final int f3525b = 12451000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f3526c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f3527d = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f3524a = false;
    private static boolean f = false;
    static final AtomicBoolean e = new AtomicBoolean();
    private static final AtomicBoolean g = new AtomicBoolean();

    @Deprecated
    public static int a(Context context, int i) {
        try {
            context.getResources().getString(m.a.common_google_play_services_unknown_issue);
        } catch (Throwable th) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !g.get()) {
            int iA = u.a(context);
            if (iA == 0) {
                throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            }
            if (iA != f3525b) {
                throw new IllegalStateException(new StringBuilder(320).append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ").append(f3525b).append(" but found ").append(iA).append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />").toString());
            }
        }
        return a(context, (com.google.android.gms.common.util.h.b(context) || com.google.android.gms.common.util.h.d(context)) ? false : true, i);
    }

    private static int a(Context context, boolean z, int i) {
        w.b(i >= 0);
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packageInfo = null;
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException e2) {
                Log.w("GooglePlayServicesUtil", "Google Play Store is missing.");
                return 9;
            }
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            l lVarA = l.a(context);
            if (!lVarA.a(packageInfo2, true)) {
                Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                return 9;
            }
            if (z && (!lVarA.a(packageInfo, true) || !packageInfo.signatures[0].equals(packageInfo2.signatures[0]))) {
                Log.w("GooglePlayServicesUtil", "Google Play Store signature invalid.");
                return 9;
            }
            if (com.google.android.gms.common.util.j.a(packageInfo2.versionCode) < com.google.android.gms.common.util.j.a(i)) {
                Log.w("GooglePlayServicesUtil", new StringBuilder(77).append("Google Play services out of date.  Requires ").append(i).append(" but found ").append(packageInfo2.versionCode).toString());
                return 2;
            }
            ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
            if (applicationInfo == null) {
                try {
                    applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                } catch (PackageManager.NameNotFoundException e3) {
                    Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.", e3);
                    return 1;
                }
            }
            return !applicationInfo.enabled ? 3 : 0;
        } catch (PackageManager.NameNotFoundException e4) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 1;
        }
    }

    @Deprecated
    public static String a(int i) {
        return ConnectionResult.a(i);
    }

    @Deprecated
    public static boolean a() {
        return com.google.android.gms.common.util.h.a();
    }

    @TargetApi(21)
    static boolean a(Context context, String str) {
        boolean zEquals = str.equals("com.google.android.gms");
        if (com.google.android.gms.common.util.n.i()) {
            try {
                Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
                while (it.hasNext()) {
                    if (str.equals(it.next().getAppPackageName())) {
                        return true;
                    }
                }
            } catch (Exception e2) {
                return false;
            }
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
            return zEquals ? applicationInfo.enabled : applicationInfo.enabled && !g(context);
        } catch (PackageManager.NameNotFoundException e3) {
            return false;
        }
    }

    @Deprecated
    public static boolean b(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 9:
                return true;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            default:
                return false;
        }
    }

    public static boolean b(Context context) {
        try {
            if (!f) {
                PackageInfo packageInfoB = com.google.android.gms.common.c.c.b(context).b("com.google.android.gms", 64);
                l lVarA = l.a(context);
                if (packageInfoB == null || lVarA.a(packageInfoB, false) || !lVarA.a(packageInfoB, true)) {
                    f3524a = false;
                } else {
                    f3524a = true;
                }
            }
        } catch (PackageManager.NameNotFoundException e2) {
            Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e2);
        } finally {
            f = true;
        }
        return f3524a;
    }

    @Deprecated
    public static boolean b(Context context, int i) {
        return com.google.android.gms.common.util.t.a(context, i);
    }

    public static boolean c(Context context) {
        return b(context) || !a();
    }

    @Deprecated
    public static boolean c(Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i == 1) {
            return a(context, "com.google.android.gms");
        }
        return false;
    }

    public static Resources d(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    public static Context e(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    @Deprecated
    public static int f(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    @TargetApi(18)
    public static boolean g(Context context) {
        Bundle applicationRestrictions;
        return com.google.android.gms.common.util.n.f() && (applicationRestrictions = ((UserManager) context.getSystemService("user")).getApplicationRestrictions(context.getPackageName())) != null && "true".equals(applicationRestrictions.getString("restricted_profile"));
    }
}
