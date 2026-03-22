package com.google.android.gms.iid;

import android.content.BroadcastReceiver;
import android.content.Intent;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Intent f3668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BroadcastReceiver.PendingResult f3669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3670c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ScheduledFuture<?> f3671d;

    q(Intent intent, BroadcastReceiver.PendingResult pendingResult, ScheduledExecutorService scheduledExecutorService) {
        this.f3668a = intent;
        this.f3669b = pendingResult;
        this.f3671d = scheduledExecutorService.schedule(new r(this, intent), 9500L, TimeUnit.MILLISECONDS);
    }

    final synchronized void a() {
        if (!this.f3670c) {
            this.f3669b.finish();
            this.f3671d.cancel(false);
            this.f3670c = true;
        }
    }
}
