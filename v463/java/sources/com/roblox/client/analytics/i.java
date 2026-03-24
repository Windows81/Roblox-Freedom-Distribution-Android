package com.roblox.client.analytics;

import android.os.AsyncTask;
import com.roblox.engine.jni.NativeReportingInterface;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f5697a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f5698b = false;

    public static void a() {
        if (!com.roblox.client.b.bN() || f5698b) {
            return;
        }
        f5697a = true;
        NativeReportingInterface.initStopwatch();
    }

    public static void a(String str) {
        if (c()) {
            NativeReportingInterface.addStopwatchCheckpoint(str);
        }
    }

    public static void b() {
        if (c()) {
            f5698b = true;
            AsyncTask.execute(new Runnable() { // from class: com.roblox.client.analytics.i.1
                @Override // java.lang.Runnable
                public void run() {
                    NativeReportingInterface.reportStopwatchAllStats();
                }
            });
        }
    }

    private static boolean c() {
        return f5697a && !f5698b;
    }
}
