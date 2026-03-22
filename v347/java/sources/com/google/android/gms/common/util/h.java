package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Boolean f3556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Boolean f3557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Boolean f3558c;

    public static boolean a() {
        return com.google.android.gms.common.k.f3526c ? com.google.android.gms.common.k.f3527d : "user".equals(Build.TYPE);
    }

    @TargetApi(20)
    public static boolean a(Context context) {
        if (f3556a == null) {
            f3556a = Boolean.valueOf(n.h() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        return f3556a.booleanValue();
    }

    @TargetApi(24)
    public static boolean b(Context context) {
        return (!n.k() || c(context)) && a(context);
    }

    @TargetApi(21)
    public static boolean c(Context context) {
        if (f3557b == null) {
            f3557b = Boolean.valueOf(n.i() && context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f3557b.booleanValue();
    }

    public static boolean d(Context context) {
        if (f3558c == null) {
            f3558c = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
        }
        return f3558c.booleanValue();
    }
}
