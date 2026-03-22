package com.google.android.gms.ads.internal;

import android.os.Handler;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f3017a;

    public ao(Handler handler) {
        this.f3017a = handler;
    }

    public final void a(Runnable runnable) {
        this.f3017a.removeCallbacks(runnable);
    }

    public final boolean a(Runnable runnable, long j) {
        return this.f3017a.postDelayed(runnable, j);
    }
}
