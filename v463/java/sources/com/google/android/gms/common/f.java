package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f3704b = l.f3833b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final f f3703a = new f();

    f() {
    }

    public static f b() {
        return f3703a;
    }

    private static String b(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(f3704b);
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
                sb.append(com.google.android.gms.common.d.c.b(context).b(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return sb.toString();
    }

    public int a(Context context) {
        return b(context, f3704b);
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
        return l.b(i);
    }

    public boolean a(Context context, String str) {
        return l.a(context, str);
    }

    public int b(Context context) {
        return l.g(context);
    }

    public int b(Context context, int i) {
        int iA = l.a(context, i);
        if (l.d(context, iA)) {
            return 18;
        }
        return iA;
    }

    @Deprecated
    public Intent b(int i) {
        return b(null, i, null);
    }

    public Intent b(Context context, int i, String str) {
        if (i == 1 || i == 2) {
            return (context == null || !com.google.android.gms.common.util.g.b(context)) ? com.google.android.gms.common.internal.m.a("com.google.android.gms", b(context, str)) : com.google.android.gms.common.internal.m.a();
        }
        if (i != 3) {
            return null;
        }
        return com.google.android.gms.common.internal.m.a("com.google.android.gms");
    }

    public String c(int i) {
        return l.a(i);
    }

    public boolean c(Context context, int i) {
        return l.d(context, i);
    }

    public void d(Context context) {
        l.d(context);
    }

    public void d(Context context, int i) throws i, j {
        l.b(context, i);
    }
}
