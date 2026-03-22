package com.google.android.gms.internal.measurement;

import android.os.Handler;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class bg {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile Handler f4073b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ae f4074a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f4075c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile long f4076d;

    bg(ae aeVar) {
        com.google.android.gms.common.internal.aa.a(aeVar);
        this.f4074a = aeVar;
        this.f4075c = new bh(this);
    }

    static /* synthetic */ long a(bg bgVar, long j) {
        bgVar.f4076d = 0L;
        return 0L;
    }

    private final Handler e() {
        Handler handler;
        if (f4073b != null) {
            return f4073b;
        }
        synchronized (bg.class) {
            if (f4073b == null) {
                f4073b = new Handler(this.f4074a.a().getMainLooper());
            }
            handler = f4073b;
        }
        return handler;
    }

    public abstract void a();

    public final void a(long j) {
        d();
        if (j >= 0) {
            this.f4076d = this.f4074a.c().a();
            if (e().postDelayed(this.f4075c, j)) {
                return;
            }
            this.f4074a.e().e("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    public final long b() {
        if (this.f4076d == 0) {
            return 0L;
        }
        return Math.abs(this.f4074a.c().a() - this.f4076d);
    }

    public final void b(long j) {
        if (c()) {
            if (j < 0) {
                d();
                return;
            }
            long jAbs = j - Math.abs(this.f4074a.c().a() - this.f4076d);
            long j2 = jAbs >= 0 ? jAbs : 0L;
            e().removeCallbacks(this.f4075c);
            if (e().postDelayed(this.f4075c, j2)) {
                return;
            }
            this.f4074a.e().e("Failed to adjust delayed post. time", Long.valueOf(j2));
        }
    }

    public final boolean c() {
        return this.f4076d != 0;
    }

    public final void d() {
        this.f4076d = 0L;
        e().removeCallbacks(this.f4075c);
    }
}
