package com.google.android.gms.common.c;

import android.content.Context;
import com.google.android.gms.common.util.n;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f3419a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Boolean f3420b;

    public static synchronized boolean a(Context context) {
        boolean zBooleanValue;
        Context applicationContext = context.getApplicationContext();
        if (f3419a == null || f3420b == null || f3419a != applicationContext) {
            f3420b = null;
            if (n.l()) {
                f3420b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
            } else {
                try {
                    context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                    f3420b = true;
                } catch (ClassNotFoundException e) {
                    f3420b = false;
                }
            }
            f3419a = applicationContext;
            zBooleanValue = f3420b.booleanValue();
        } else {
            zBooleanValue = f3420b.booleanValue();
        }
        return zBooleanValue;
    }
}
