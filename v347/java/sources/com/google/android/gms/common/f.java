package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f3430b = k.f3525b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final f f3429a = new f();

    f() {
    }

    public static f b() {
        return f3429a;
    }

    private static String b(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(f3430b);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                sb.append(com.google.android.gms.common.c.c.b(context).b(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return sb.toString();
    }

    public int a(Context context) {
        return b(context, f3430b);
    }

    public PendingIntent a(Context context, int i, int i2) {
        return a(context, i, i2, null);
    }

    public PendingIntent a(Context context, int i, int i2, String str) {
        Intent intentB = b(context, i, str);
        if (intentB == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, intentB, 134217728);
    }

    public boolean a(int i) {
        return k.b(i);
    }

    public boolean a(Context context, String str) {
        return k.a(context, str);
    }

    public int b(Context context) {
        return k.f(context);
    }

    public int b(Context context, int i) {
        int iA = k.a(context, i);
        if (k.c(context, iA)) {
            return 18;
        }
        return iA;
    }

    public Intent b(Context context, int i, String str) {
        switch (i) {
            case 1:
            case 2:
                return (context == null || !com.google.android.gms.common.util.h.b(context)) ? com.google.android.gms.common.internal.l.a("com.google.android.gms", b(context, str)) : com.google.android.gms.common.internal.l.a();
            case 3:
                return com.google.android.gms.common.internal.l.a("com.google.android.gms");
            default:
                return null;
        }
    }

    public String b(int i) {
        return k.a(i);
    }
}
