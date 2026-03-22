package com.google.android.gms.common.d;

import android.content.Context;
import com.google.android.gms.common.util.m;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f3692a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Boolean f3693b;

    public static synchronized boolean a(Context context) {
        boolean zValueOf;
        Context applicationContext = context.getApplicationContext();
        if (f3692a != null && f3693b != null && f3692a == applicationContext) {
            return f3693b.booleanValue();
        }
        f3693b = null;
        if (!m.i()) {
            try {
                context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                f3693b = true;
            } catch (ClassNotFoundException unused) {
                zValueOf = false;
                f3693b = zValueOf;
            }
            f3692a = applicationContext;
            return f3693b.booleanValue();
        }
        zValueOf = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
        f3693b = zValueOf;
        f3692a = applicationContext;
        return f3693b.booleanValue();
    }
}
