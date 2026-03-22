package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class nk implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f5350a = new je(Looper.getMainLooper());

    nk() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            this.f5350a.post(runnable);
            return;
        }
        try {
            runnable.run();
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.aw.e();
            jm.a(com.google.android.gms.ads.internal.aw.i().m(), th);
            throw th;
        }
    }
}
