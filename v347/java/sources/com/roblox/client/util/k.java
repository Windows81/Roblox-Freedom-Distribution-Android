package com.roblox.client.util;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Debug;
import android.os.Process;
import com.roblox.client.startup.ActivitySplash;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f7927a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f7928b = 0;

    public static int a(Context context) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - f7928b < 5000) {
            return f7927a;
        }
        f7928b = jCurrentTimeMillis;
        Debug.MemoryInfo[] processMemoryInfo = ((ActivityManager) context.getSystemService("activity")).getProcessMemoryInfo(new int[]{Process.myPid()});
        if (processMemoryInfo.length == 1) {
            f7927a = processMemoryInfo[0].getTotalPss();
        } else {
            g.d("ProcessUtils", "Unexpected result of getProcessMemoryInfo(). Return 0 as memory usage!");
        }
        return f7927a;
    }

    public static void a(Context context, long j) {
        Intent intentA = ActivitySplash.a(context, com.roblox.client.startup.e.APP_RESTART);
        intentA.setFlags(268468224);
        ((AlarmManager) context.getSystemService("alarm")).set(1, System.currentTimeMillis() + j, PendingIntent.getActivity(context, 10108, intentA, 268435456));
    }

    public static void a() {
        Runtime.getRuntime().exit(1);
    }

    public static boolean b(Context context) {
        boolean z;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (Build.VERSION.SDK_INT <= 20) {
            return activityManager.getRunningTasks(1).get(0).topActivity.getPackageName().equals(context.getPackageName());
        }
        boolean z2 = false;
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
            if (runningAppProcessInfo.importance == 100) {
                String[] strArr = runningAppProcessInfo.pkgList;
                for (String str : strArr) {
                    if (str.equals(context.getPackageName())) {
                        z = true;
                        break;
                    }
                }
                z = z2;
            } else {
                z = z2;
            }
            z2 = z;
        }
        return z2;
    }

    public static String c(Context context) {
        return b(context) ? "foreground" : "background";
    }
}
