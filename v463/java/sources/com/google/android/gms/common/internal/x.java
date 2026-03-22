package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Object f3823a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f3824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f3825c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f3826d;

    public static String a(Context context) {
        c(context);
        return f3825c;
    }

    public static int b(Context context) {
        c(context);
        return f3826d;
    }

    private static void c(Context context) {
        synchronized (f3823a) {
            if (f3824b) {
                return;
            }
            f3824b = true;
            try {
                Bundle bundle = com.google.android.gms.common.d.c.b(context).a(context.getPackageName(), 128).metaData;
                if (bundle == null) {
                    return;
                }
                f3825c = bundle.getString("com.google.app.id");
                f3826d = bundle.getInt("com.google.android.gms.version");
            } catch (PackageManager.NameNotFoundException e2) {
                Log.wtf("MetadataValueReader", "This should never happen.", e2);
            }
        }
    }
}
