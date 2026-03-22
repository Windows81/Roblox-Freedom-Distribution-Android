package com.google.android.gms.common.util;

import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Boolean f3873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Boolean f3874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Boolean f3875c;

    public static boolean a() {
        return com.google.android.gms.common.l.f3834c ? com.google.android.gms.common.l.f3835d : "user".equals(Build.TYPE);
    }

    public static boolean a(Context context) {
        if (f3873a == null) {
            f3873a = Boolean.valueOf(m.f() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        return f3873a.booleanValue();
    }

    public static boolean b(Context context) {
        return (!m.h() || c(context)) && a(context);
    }

    public static boolean c(Context context) {
        if (f3874b == null) {
            f3874b = Boolean.valueOf(m.g() && context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f3874b.booleanValue();
    }

    public static boolean d(Context context) {
        if (f3875c == null) {
            f3875c = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
        }
        return f3875c.booleanValue();
    }
}
