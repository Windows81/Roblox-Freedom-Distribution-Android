package com.google.android.gms.internal.measurement;

import android.os.Handler;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class df {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile Handler f4188b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final fz f4189a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f4190c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile long f4191d;

    df(fz fzVar) {
        com.google.android.gms.common.internal.aa.a(fzVar);
        this.f4189a = fzVar;
        this.f4190c = new dg(this, fzVar);
    }

    static /* synthetic */ long a(df dfVar, long j) {
        dfVar.f4191d = 0L;
        return 0L;
    }

    private final Handler d() {
        Handler handler;
        if (f4188b != null) {
            return f4188b;
        }
        synchronized (df.class) {
            if (f4188b == null) {
                f4188b = new Handler(this.f4189a.k().getMainLooper());
            }
            handler = f4188b;
        }
        return handler;
    }

    public abstract void a();

    public final void a(long j) {
        c();
        if (j >= 0) {
            this.f4191d = this.f4189a.j().a();
            if (d().postDelayed(this.f4190c, j)) {
                return;
            }
            this.f4189a.q().v().a("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    public final boolean b() {
        return this.f4191d != 0;
    }

    final void c() {
        this.f4191d = 0L;
        d().removeCallbacks(this.f4190c);
    }
}
