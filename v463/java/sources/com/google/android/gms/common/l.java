package com.google.android.gms.common;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.common.n;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f3832a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    public static final int f3833b = 12451000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f3834c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f3835d = false;
    private static boolean f = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final AtomicBoolean f3836e = new AtomicBoolean();
    private static final AtomicBoolean g = new AtomicBoolean();

    @Deprecated
    public static int a(Context context, int i) {
        try {
            context.getResources().getString(n.a.common_google_play_services_unknown_issue);
        } catch (Throwable unused) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !g.get()) {
            int iB = com.google.android.gms.common.internal.x.b(context);
            if (iB == 0) {
                throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            }
            if (iB != f3833b) {
                int i2 = f3833b;
                StringBuilder sb = new StringBuilder(320);
                sb.append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ");
                sb.append(i2);
                sb.append(" but found ");
                sb.append(iB);
                sb.append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
                throw new IllegalStateException(sb.toString());
            }
        }
        return a(context, (com.google.android.gms.common.util.g.b(context) || com.google.android.gms.common.util.g.d(context)) ? false : true, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int a(android.content.Context r9, boolean r10, int r11) {
        /*
            java.lang.String r0 = "com.google.android.gms"
            r1 = 1
            r2 = 0
            if (r11 < 0) goto L8
            r3 = 1
            goto L9
        L8:
            r3 = 0
        L9:
            com.google.android.gms.common.internal.aa.b(r3)
            android.content.pm.PackageManager r3 = r9.getPackageManager()
            r4 = 0
            r5 = 9
            java.lang.String r6 = "GooglePlayServicesUtil"
            if (r10 == 0) goto L26
            java.lang.String r4 = "com.android.vending"
            r7 = 8256(0x2040, float:1.1569E-41)
            android.content.pm.PackageInfo r4 = r3.getPackageInfo(r4, r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L20
            goto L26
        L20:
            java.lang.String r9 = "Google Play Store is missing."
        L22:
            android.util.Log.w(r6, r9)
            return r5
        L26:
            r7 = 64
            android.content.pm.PackageInfo r7 = r3.getPackageInfo(r0, r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L97
            com.google.android.gms.common.m r9 = com.google.android.gms.common.m.a(r9)
            boolean r8 = r9.a(r7, r1)
            if (r8 != 0) goto L39
            java.lang.String r9 = "Google Play services signature invalid."
            goto L22
        L39:
            if (r10 == 0) goto L52
            boolean r9 = r9.a(r4, r1)
            if (r9 == 0) goto L4f
            android.content.pm.Signature[] r9 = r4.signatures
            r9 = r9[r2]
            android.content.pm.Signature[] r10 = r7.signatures
            r10 = r10[r2]
            boolean r9 = r9.equals(r10)
            if (r9 != 0) goto L52
        L4f:
            java.lang.String r9 = "Google Play Store signature invalid."
            goto L22
        L52:
            int r9 = r7.versionCode
            int r9 = com.google.android.gms.common.util.i.a(r9)
            int r10 = com.google.android.gms.common.util.i.a(r11)
            if (r9 >= r10) goto L80
            int r9 = r7.versionCode
            r10 = 77
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r10)
            java.lang.String r10 = "Google Play services out of date.  Requires "
            r0.append(r10)
            r0.append(r11)
            java.lang.String r10 = " but found "
            r0.append(r10)
            r0.append(r9)
            java.lang.String r9 = r0.toString()
            android.util.Log.w(r6, r9)
            r9 = 2
            return r9
        L80:
            android.content.pm.ApplicationInfo r9 = r7.applicationInfo
            if (r9 != 0) goto L90
            android.content.pm.ApplicationInfo r9 = r3.getApplicationInfo(r0, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L89
            goto L90
        L89:
            r9 = move-exception
            java.lang.String r10 = "Google Play services missing when getting application info."
            android.util.Log.wtf(r6, r10, r9)
            return r1
        L90:
            boolean r9 = r9.enabled
            if (r9 != 0) goto L96
            r9 = 3
            return r9
        L96:
            return r2
        L97:
            java.lang.String r9 = "Google Play services is missing."
            android.util.Log.w(r6, r9)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.l.a(android.content.Context, boolean, int):int");
    }

    @Deprecated
    public static String a(int i) {
        return ConnectionResult.a(i);
    }

    @Deprecated
    public static boolean a() {
        return com.google.android.gms.common.util.g.a();
    }

    @Deprecated
    public static boolean a(Context context, int i, String str) {
        return com.google.android.gms.common.util.q.a(context, i, str);
    }

    static boolean a(Context context, String str) {
        ApplicationInfo applicationInfo;
        boolean zEquals = str.equals("com.google.android.gms");
        if (com.google.android.gms.common.util.m.g()) {
            try {
                Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
                while (it.hasNext()) {
                    if (str.equals(it.next().getAppPackageName())) {
                        return true;
                    }
                }
            } catch (Exception unused) {
                return false;
            }
        }
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        return zEquals ? applicationInfo.enabled : applicationInfo.enabled && !h(context);
    }

    @Deprecated
    public static void b(Context context, int i) throws i, j {
        int iB = f.b().b(context, i);
        if (iB != 0) {
            Intent intentB = f.b().b(context, iB, "e");
            StringBuilder sb = new StringBuilder(57);
            sb.append("GooglePlayServices not available due to error ");
            sb.append(iB);
            Log.e("GooglePlayServicesUtil", sb.toString());
            if (intentB != null) {
                throw new j(iB, "Google Play Services not available", intentB);
            }
            throw new i(iB);
        }
    }

    @Deprecated
    public static boolean b(int i) {
        return i == 1 || i == 2 || i == 3 || i == 9;
    }

    public static boolean b(Context context) {
        if (!f) {
            try {
                try {
                    PackageInfo packageInfoB = com.google.android.gms.common.d.c.b(context).b("com.google.android.gms", 64);
                    m mVarA = m.a(context);
                    if (packageInfoB == null || mVarA.a(packageInfoB, false) || !mVarA.a(packageInfoB, true)) {
                        f3832a = false;
                    } else {
                        f3832a = true;
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e2);
                }
            } finally {
                f = true;
            }
        }
        return f3832a;
    }

    public static boolean c(Context context) {
        return b(context) || !a();
    }

    @Deprecated
    public static boolean c(Context context, int i) {
        return com.google.android.gms.common.util.q.a(context, i);
    }

    @Deprecated
    public static void d(Context context) {
        if (f3836e.getAndSet(true)) {
            return;
        }
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager != null) {
                notificationManager.cancel(10436);
            }
        } catch (SecurityException unused) {
        }
    }

    @Deprecated
    public static boolean d(Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i == 1) {
            return a(context, "com.google.android.gms");
        }
        return false;
    }

    public static Resources e(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static Context f(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @Deprecated
    public static int g(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    public static boolean h(Context context) {
        Bundle applicationRestrictions;
        return com.google.android.gms.common.util.m.d() && (applicationRestrictions = ((UserManager) context.getSystemService("user")).getApplicationRestrictions(context.getPackageName())) != null && "true".equals(applicationRestrictions.getString("restricted_profile"));
    }
}
