package com.google.android.gms.internal.measurement;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
abstract class at {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile Handler f5878b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f5879a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f5880c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile long f5881d;

    at(r rVar) {
        com.google.android.gms.common.internal.w.a(rVar);
        this.f5879a = rVar;
        this.f5880c = new au(this);
    }

    static /* synthetic */ long a(at atVar, long j) {
        atVar.f5881d = 0L;
        return 0L;
    }

    private final Handler e() {
        Handler handler;
        if (f5878b != null) {
            return f5878b;
        }
        synchronized (at.class) {
            if (f5878b == null) {
                f5878b = new Handler(this.f5879a.a().getMainLooper());
            }
            handler = f5878b;
        }
        return handler;
    }

    public abstract void a();

    public final void a(long j) {
        d();
        if (j >= 0) {
            this.f5881d = this.f5879a.c().a();
            if (e().postDelayed(this.f5880c, j)) {
                return;
            }
            this.f5879a.e().e("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    public final long b() {
        if (this.f5881d == 0) {
            return 0L;
        }
        return Math.abs(this.f5879a.c().a() - this.f5881d);
    }

    public final void b(long j) {
        if (c()) {
            if (j < 0) {
                d();
                return;
            }
            long jAbs = j - Math.abs(this.f5879a.c().a() - this.f5881d);
            long j2 = jAbs >= 0 ? jAbs : 0L;
            e().removeCallbacks(this.f5880c);
            if (e().postDelayed(this.f5880c, j2)) {
                return;
            }
            this.f5879a.e().e("Failed to adjust delayed post. time", Long.valueOf(j2));
        }
    }

    public final boolean c() {
        return this.f5881d != 0;
    }

    public final void d() {
        this.f5881d = 0L;
        e().removeCallbacks(this.f5880c);
    }
}
