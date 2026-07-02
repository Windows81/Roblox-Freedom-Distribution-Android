package com.google.android.gms.internal.ads;

import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ln {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f5266a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("mLock")
    private long f5267b = Long.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f5268c = new Object();

    public ln(long j) {
        this.f5266a = j;
    }

    public final boolean a() {
        boolean z;
        synchronized (this.f5268c) {
            long jB = com.google.android.gms.ads.internal.aw.l().b();
            if (this.f5267b + this.f5266a > jB) {
                z = false;
            } else {
                this.f5267b = jB;
                z = true;
            }
        }
        return z;
    }
}
