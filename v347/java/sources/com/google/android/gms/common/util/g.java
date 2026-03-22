package com.google.android.gms.common.util;

import android.os.SystemClock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class g implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final g f3555a = new g();

    private g() {
    }

    public static d d() {
        return f3555a;
    }

    @Override // com.google.android.gms.common.util.d
    public long a() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.util.d
    public long b() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.common.util.d
    public long c() {
        return System.nanoTime();
    }
}
