package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class hy extends fy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Handler f4521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f4522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final df f4523c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final df f4524d;

    hy(fc fcVar) {
        super(fcVar);
        this.f4523c = new hz(this, this.q);
        this.f4524d = new ia(this, this.q);
        this.f4522b = j().b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(long j) {
        df dfVar;
        long jA;
        c();
        w();
        this.f4523c.c();
        this.f4524d.c();
        q().C().a("Activity resumed, time", Long.valueOf(j));
        this.f4522b = j;
        if (j().a() - r().l.a() > r().n.a()) {
            r().m.a(true);
            r().o.a(0L);
        }
        if (r().m.a()) {
            dfVar = this.f4523c;
            jA = r().k.a();
        } else {
            dfVar = this.f4524d;
            jA = 3600000;
        }
        dfVar.a(Math.max(0L, jA - r().o.a()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(long j) {
        c();
        w();
        this.f4523c.c();
        this.f4524d.c();
        q().C().a("Activity paused, time", Long.valueOf(j));
        if (this.f4522b != 0) {
            r().o.a(r().o.a() + (j - this.f4522b));
        }
    }

    private final void w() {
        synchronized (this) {
            if (this.f4521a == null) {
                this.f4521a = new Handler(Looper.getMainLooper());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x() {
        c();
        a(false);
        d().a(j().b());
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    public final boolean a(boolean z) {
        c();
        F();
        long jB = j().b();
        r().n.a(j().a());
        long j = jB - this.f4522b;
        if (!z && j < 1000) {
            q().C().a("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j));
            return false;
        }
        r().o.a(j);
        q().C().a("Recording user engagement, ms", Long.valueOf(j));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j);
        gw.a(i().v(), bundle, true);
        e().a("auto", "_e", bundle);
        this.f4522b = jB;
        this.f4524d.c();
        this.f4524d.a(Math.max(0L, 3600000 - r().o.a()));
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cp d() {
        return super.d();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gb e() {
        return super.e();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ds f() {
        return super.f();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dh g() {
        return super.g();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gz h() {
        return super.h();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gw i() {
        return super.i();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ com.google.android.gms.common.util.d j() {
        return super.j();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ Context k() {
        return super.k();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dt l() {
        return super.l();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dv m() {
        return super.m();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ iq n() {
        return super.n();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ hy o() {
        return super.o();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ ex p() {
        return super.p();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ dx q() {
        return super.q();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ei r() {
        return super.r();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cy s() {
        return super.s();
    }

    @Override // com.google.android.gms.internal.measurement.fy
    protected final boolean t() {
        return false;
    }

    final void v() {
        this.f4523c.c();
        this.f4524d.c();
        this.f4522b = 0L;
    }
}
