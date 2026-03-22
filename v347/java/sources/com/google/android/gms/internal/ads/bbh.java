package com.google.android.gms.internal.ads;

import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class bbh extends bcb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f4753a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("mLock")
    private bbm f4754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private bbf f4755c;

    @Override // com.google.android.gms.internal.ads.bca
    public final void a() {
        synchronized (this.f4753a) {
            if (this.f4755c != null) {
                this.f4755c.T();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void a(int i) {
        synchronized (this.f4753a) {
            if (this.f4754b != null) {
                this.f4754b.a(i == 3 ? 1 : 2);
                this.f4754b = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void a(auy auyVar, String str) {
        synchronized (this.f4753a) {
            if (this.f4755c != null) {
                this.f4755c.a(auyVar, str);
            }
        }
    }

    public final void a(bbf bbfVar) {
        synchronized (this.f4753a) {
            this.f4755c = bbfVar;
        }
    }

    public final void a(bbm bbmVar) {
        synchronized (this.f4753a) {
            this.f4754b = bbmVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void a(bcd bcdVar) {
        synchronized (this.f4753a) {
            if (this.f4754b != null) {
                this.f4754b.a(0, bcdVar);
                this.f4754b = null;
            } else {
                if (this.f4755c != null) {
                    this.f4755c.aa();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void a(String str, String str2) {
        synchronized (this.f4753a) {
            if (this.f4755c != null) {
                this.f4755c.b(str, str2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void b() {
        synchronized (this.f4753a) {
            if (this.f4755c != null) {
                this.f4755c.X();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void c() {
        synchronized (this.f4753a) {
            if (this.f4755c != null) {
                this.f4755c.Y();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void d() {
        synchronized (this.f4753a) {
            if (this.f4755c != null) {
                this.f4755c.Z();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void e() {
        synchronized (this.f4753a) {
            if (this.f4754b != null) {
                this.f4754b.a(0);
                this.f4754b = null;
            } else {
                if (this.f4755c != null) {
                    this.f4755c.aa();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void f() {
        synchronized (this.f4753a) {
            if (this.f4755c != null) {
                this.f4755c.U();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bca
    public final void g() {
        synchronized (this.f4753a) {
            if (this.f4755c != null) {
                this.f4755c.V();
            }
        }
    }
}
