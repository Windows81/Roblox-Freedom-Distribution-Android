package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class gw extends hf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile gu f5063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile gx f5064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile gv f5065c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile hc f5066d;

    public gw(gv gvVar) {
        this.f5065c = gvVar;
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void a(Bundle bundle) {
        if (this.f5066d != null) {
            this.f5066d.a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void a(com.google.android.gms.b.a aVar) {
        if (this.f5063a != null) {
            this.f5063a.g();
        }
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void a(com.google.android.gms.b.a aVar, int i) {
        if (this.f5063a != null) {
            this.f5063a.a(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void a(com.google.android.gms.b.a aVar, zzaig zzaigVar) {
        if (this.f5065c != null) {
            this.f5065c.a(zzaigVar);
        }
    }

    public final void a(gu guVar) {
        this.f5063a = guVar;
    }

    public final void a(gx gxVar) {
        this.f5064b = gxVar;
    }

    public final void a(hc hcVar) {
        this.f5066d = hcVar;
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void b(com.google.android.gms.b.a aVar) {
        if (this.f5064b != null) {
            this.f5064b.a(com.google.android.gms.b.b.a(aVar).getClass().getName());
        }
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void b(com.google.android.gms.b.a aVar, int i) {
        if (this.f5064b != null) {
            this.f5064b.a(com.google.android.gms.b.b.a(aVar).getClass().getName(), i);
        }
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void c(com.google.android.gms.b.a aVar) {
        if (this.f5065c != null) {
            this.f5065c.k_();
        }
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void d(com.google.android.gms.b.a aVar) {
        if (this.f5065c != null) {
            this.f5065c.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void e(com.google.android.gms.b.a aVar) {
        if (this.f5065c != null) {
            this.f5065c.c();
        }
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void f(com.google.android.gms.b.a aVar) {
        if (this.f5065c != null) {
            this.f5065c.l_();
        }
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void g(com.google.android.gms.b.a aVar) {
        if (this.f5065c != null) {
            this.f5065c.m_();
        }
    }

    @Override // com.google.android.gms.internal.ads.he
    public final void h(com.google.android.gms.b.a aVar) {
        if (this.f5065c != null) {
            this.f5065c.f();
        }
    }
}
