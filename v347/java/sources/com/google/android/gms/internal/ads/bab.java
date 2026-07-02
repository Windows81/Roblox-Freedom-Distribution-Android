package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class bab extends nu<ayy> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private kr<ayy> f4706b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f4705a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4707c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4708d = 0;

    public bab(kr<ayy> krVar) {
        this.f4706b = krVar;
    }

    private final void f() {
        synchronized (this.f4705a) {
            com.google.android.gms.common.internal.w.a(this.f4708d >= 0);
            if (this.f4707c && this.f4708d == 0) {
                jd.a("No reference is left (including root). Cleaning up engine.");
                a(new bae(this), new ns());
            } else {
                jd.a("There are still references to the engine. Not destroying.");
            }
        }
    }

    public final azx c() {
        azx azxVar = new azx(this);
        synchronized (this.f4705a) {
            a(new bac(this, azxVar), new bad(this, azxVar));
            com.google.android.gms.common.internal.w.a(this.f4708d >= 0);
            this.f4708d++;
        }
        return azxVar;
    }

    protected final void d() {
        synchronized (this.f4705a) {
            com.google.android.gms.common.internal.w.a(this.f4708d > 0);
            jd.a("Releasing 1 reference for JS Engine");
            this.f4708d--;
            f();
        }
    }

    public final void e() {
        synchronized (this.f4705a) {
            com.google.android.gms.common.internal.w.a(this.f4708d >= 0);
            jd.a("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.f4707c = true;
            f();
        }
    }
}
