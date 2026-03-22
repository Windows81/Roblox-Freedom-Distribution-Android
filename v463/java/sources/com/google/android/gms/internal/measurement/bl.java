package com.google.android.gms.internal.measurement;

import android.os.Build;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class bl {
    public static int a() {
        try {
            return Integer.parseInt(Build.VERSION.SDK);
        } catch (NumberFormatException unused) {
            bv.a("Invalid version number", Build.VERSION.SDK);
            return 0;
        }
    }
}
