package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.Intent;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class af {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Intent f5201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BroadcastReceiver.PendingResult f5202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5203c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ScheduledFuture<?> f5204d;

    af(Intent intent, BroadcastReceiver.PendingResult pendingResult, ScheduledExecutorService scheduledExecutorService) {
        this.f5201a = intent;
        this.f5202b = pendingResult;
        this.f5204d = scheduledExecutorService.schedule(new ag(this, intent), 9500L, TimeUnit.MILLISECONDS);
    }

    final synchronized void a() {
        if (!this.f5203c) {
            this.f5202b.finish();
            this.f5204d.cancel(false);
            this.f5203c = true;
        }
    }
}
