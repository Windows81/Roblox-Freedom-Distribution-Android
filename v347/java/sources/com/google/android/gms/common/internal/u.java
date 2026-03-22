package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Object f3517a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("sLock")
    private static boolean f3518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f3519c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f3520d;

    public static int a(Context context) {
        b(context);
        return f3520d;
    }

    private static void b(Context context) {
        synchronized (f3517a) {
            if (f3518b) {
                return;
            }
            f3518b = true;
            try {
                Bundle bundle = com.google.android.gms.common.c.c.b(context).a(context.getPackageName(), 128).metaData;
                if (bundle == null) {
                    return;
                }
                f3519c = bundle.getString("com.google.app.id");
                f3520d = bundle.getInt("com.google.android.gms.version");
            } catch (PackageManager.NameNotFoundException e) {
                Log.wtf("MetadataValueReader", "This should never happen.", e);
            }
        }
    }
}
