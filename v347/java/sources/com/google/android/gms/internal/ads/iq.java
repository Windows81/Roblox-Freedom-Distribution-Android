package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class iq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile int f5138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile long f5139c;

    private iq() {
        this.f5137a = new Object();
        this.f5138b = ir.f5140a;
        this.f5139c = 0L;
    }

    /* synthetic */ iq(ip ipVar) {
        this();
    }

    private final void a(int i, int i2) {
        d();
        long jA = com.google.android.gms.ads.internal.aw.l().a();
        synchronized (this.f5137a) {
            if (this.f5138b != i) {
                return;
            }
            this.f5138b = i2;
            if (this.f5138b == ir.f5142c) {
                this.f5139c = jA;
            }
        }
    }

    private final void d() {
        long jA = com.google.android.gms.ads.internal.aw.l().a();
        synchronized (this.f5137a) {
            if (this.f5138b == ir.f5142c) {
                if (this.f5139c + ((Long) aoo.f().a(aro.di)).longValue() <= jA) {
                    this.f5138b = ir.f5140a;
                }
            }
        }
    }

    public final void a(boolean z) {
        if (z) {
            a(ir.f5140a, ir.f5141b);
        } else {
            a(ir.f5141b, ir.f5140a);
        }
    }

    public final boolean a() {
        d();
        return this.f5138b == ir.f5141b;
    }

    public final boolean b() {
        d();
        return this.f5138b == ir.f5142c;
    }

    public final void c() {
        a(ir.f5141b, ir.f5142c);
    }
}
