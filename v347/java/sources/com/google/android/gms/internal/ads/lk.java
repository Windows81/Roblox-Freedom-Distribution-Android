package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class lk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HandlerThread f5258a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f5259b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5260c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f5261d = new Object();

    public final Looper a() {
        Looper looper;
        synchronized (this.f5261d) {
            if (this.f5260c != 0) {
                com.google.android.gms.common.internal.w.a(this.f5258a, "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.f5258a == null) {
                jd.a("Starting the looper thread.");
                this.f5258a = new HandlerThread("LooperProvider");
                this.f5258a.start();
                this.f5259b = new Handler(this.f5258a.getLooper());
                jd.a("Looper thread started.");
            } else {
                jd.a("Resuming the looper thread");
                this.f5261d.notifyAll();
            }
            this.f5260c++;
            looper = this.f5258a.getLooper();
        }
        return looper;
    }

    public final Handler b() {
        return this.f5259b;
    }
}
