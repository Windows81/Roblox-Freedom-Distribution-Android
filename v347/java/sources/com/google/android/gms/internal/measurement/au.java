package com.google.android.gms.internal.measurement;

import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
final class au implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ at f5882a;

    au(at atVar) {
        this.f5882a = atVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f5882a.f5879a.g().a(this);
            return;
        }
        boolean zC = this.f5882a.c();
        at.a(this.f5882a, 0L);
        if (zC) {
            this.f5882a.a();
        }
    }
}
