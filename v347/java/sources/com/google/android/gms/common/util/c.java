package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {
    public static boolean a() {
        return false;
    }

    public static boolean a(Context context, String str) {
        "com.google.android.gms".equals(str);
        try {
            return (com.google.android.gms.common.c.c.b(context).a(str, 0).flags & 2097152) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
}
