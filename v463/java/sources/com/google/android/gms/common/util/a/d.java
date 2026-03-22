package com.google.android.gms.common.util.a;

import android.os.Process;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Runnable f3870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3871b;

    public d(Runnable runnable, int i) {
        this.f3870a = runnable;
        this.f3871b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.f3871b);
        this.f3870a.run();
    }
}
