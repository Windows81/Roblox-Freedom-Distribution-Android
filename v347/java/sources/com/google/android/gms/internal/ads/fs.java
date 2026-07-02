package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class fs extends gd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f5033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzang f5034c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("mLock")
    private final ft f5035d;

    public fs(Context context, com.google.android.gms.ads.internal.bt btVar, bbu bbuVar, zzang zzangVar) {
        this(context, zzangVar, new ft(context, btVar, zzjn.a(), bbuVar, zzangVar));
    }

    private fs(Context context, zzang zzangVar, ft ftVar) {
        this.f5033b = new Object();
        this.f5032a = context;
        this.f5034c = zzangVar;
        this.f5035d = ftVar;
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void a() {
        synchronized (this.f5033b) {
            this.f5035d.J();
        }
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void a(com.google.android.gms.b.a aVar) {
        synchronized (this.f5033b) {
            this.f5035d.n();
        }
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void a(apk apkVar) {
        if (((Boolean) aoo.f().a(aro.aF)).booleanValue()) {
            synchronized (this.f5033b) {
                this.f5035d.a(apkVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void a(fz fzVar) {
        synchronized (this.f5033b) {
            this.f5035d.a(fzVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void a(gh ghVar) {
        synchronized (this.f5033b) {
            this.f5035d.a(ghVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void a(zzahk zzahkVar) {
        synchronized (this.f5033b) {
            this.f5035d.a(zzahkVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void a(String str) {
        synchronized (this.f5033b) {
            this.f5035d.a(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void a(boolean z) {
        synchronized (this.f5033b) {
            this.f5035d.c(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final Bundle b() {
        Bundle bundleP;
        if (!((Boolean) aoo.f().a(aro.aF)).booleanValue()) {
            return new Bundle();
        }
        synchronized (this.f5033b) {
            bundleP = this.f5035d.p();
        }
        return bundleP;
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void b(com.google.android.gms.b.a aVar) {
        Context context;
        synchronized (this.f5033b) {
            if (aVar == null) {
                context = null;
            } else {
                try {
                    context = (Context) com.google.android.gms.b.b.a(aVar);
                } catch (Exception e) {
                    jd.c("Unable to extract updated context.", e);
                }
            }
            if (context != null) {
                this.f5035d.a(context);
                this.f5035d.o();
            } else {
                this.f5035d.o();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void c(com.google.android.gms.b.a aVar) {
        synchronized (this.f5033b) {
            this.f5035d.i();
        }
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final boolean c() {
        boolean zK;
        synchronized (this.f5033b) {
            zK = this.f5035d.K();
        }
        return zK;
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void d() {
        a((com.google.android.gms.b.a) null);
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void e() {
        b(null);
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final void f() {
        c(null);
    }

    @Override // com.google.android.gms.internal.ads.gb
    public final String g() {
        String strA;
        synchronized (this.f5033b) {
            strA = this.f5035d.a();
        }
        return strA;
    }
}
