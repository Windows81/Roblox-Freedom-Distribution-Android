package com.google.android.gms.internal.measurement;

import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class ay {
    public static int a() {
        try {
            return Integer.parseInt(Build.VERSION.SDK);
        } catch (NumberFormatException e) {
            bi.a("Invalid version number", Build.VERSION.SDK);
            return 0;
        }
    }
}
