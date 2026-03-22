package com.google.android.gms.internal.measurement;

import android.os.Looper;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class bh implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bg f4077a;

    bh(bg bgVar) {
        this.f4077a = bgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f4077a.f4074a.g().a(this);
            return;
        }
        boolean zC = this.f4077a.c();
        bg.a(this.f4077a, 0L);
        if (zC) {
            this.f4077a.a();
        }
    }
}
