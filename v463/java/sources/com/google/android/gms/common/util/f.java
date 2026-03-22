package com.google.android.gms.common.util;

import android.os.SystemClock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final f f3872a = new f();

    private f() {
    }

    public static d d() {
        return f3872a;
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
