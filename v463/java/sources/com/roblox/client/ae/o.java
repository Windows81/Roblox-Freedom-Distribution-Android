package com.roblox.client.ae;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.roblox.client.startup.ActivitySplash;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f5649a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f5650b;

    public static void a(Context context, long j) {
        Intent intentA = ActivitySplash.a(context, com.roblox.client.startup.e.APP_RESTART);
        intentA.setFlags(268468224);
        ((AlarmManager) context.getSystemService("alarm")).set(1, System.currentTimeMillis() + j, PendingIntent.getActivity(context, 10108, intentA, 268435456));
    }

    public static void a() {
        Runtime.getRuntime().exit(1);
    }

    private static boolean b(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (Build.VERSION.SDK_INT > 20) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            boolean z = false;
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.importance == 100) {
                    String[] strArr = runningAppProcessInfo.pkgList;
                    int length = strArr.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        if (strArr[i].equals(context.getPackageName())) {
                            z = true;
                            break;
                        }
                        i++;
                    }
                }
            }
            return z;
        }
        return com.roblox.client.r.J();
    }

    public static String a(Context context) {
        return b(context) ? "foreground" : "background";
    }
}
