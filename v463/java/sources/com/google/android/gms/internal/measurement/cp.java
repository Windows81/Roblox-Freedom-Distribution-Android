package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class cp extends fx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, Long> f4158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, Integer> f4159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f4160c;

    public cp(fc fcVar) {
        super(fcVar);
        this.f4159b = new androidx.c.a();
        this.f4158a = new androidx.c.a();
    }

    private final void a(long j, gv gvVar) {
        if (gvVar == null) {
            q().C().a("Not logging ad exposure. No active activity");
            return;
        }
        if (j < 1000) {
            q().C().a("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("_xt", j);
        gw.a(gvVar, bundle, true);
        e().a("am", "_xa", bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, long j) {
        c();
        com.google.android.gms.common.internal.aa.a(str);
        if (this.f4159b.isEmpty()) {
            this.f4160c = j;
        }
        Integer num = this.f4159b.get(str);
        if (num != null) {
            this.f4159b.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (this.f4159b.size() >= 100) {
            q().y().a("Too many ads visible");
        } else {
            this.f4159b.put(str, 1);
            this.f4158a.put(str, Long.valueOf(j));
        }
    }

    private final void a(String str, long j, gv gvVar) {
        if (gvVar == null) {
            q().C().a("Not logging ad unit exposure. No active activity");
            return;
        }
        if (j < 1000) {
            q().C().a("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str);
        bundle.putLong("_xt", j);
        gw.a(gvVar, bundle, true);
        e().a("am", "_xu", bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(long j) {
        Iterator<String> it = this.f4158a.keySet().iterator();
        while (it.hasNext()) {
            this.f4158a.put(it.next(), Long.valueOf(j));
        }
        if (this.f4158a.isEmpty()) {
            return;
        }
        this.f4160c = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(String str, long j) {
        c();
        com.google.android.gms.common.internal.aa.a(str);
        Integer num = this.f4159b.get(str);
        if (num == null) {
            q().v().a("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        gv gvVarV = i().v();
        int iIntValue = num.intValue() - 1;
        if (iIntValue != 0) {
            this.f4159b.put(str, Integer.valueOf(iIntValue));
            return;
        }
        this.f4159b.remove(str);
        Long l = this.f4158a.get(str);
        if (l == null) {
            q().v().a("First ad unit exposure time was never set");
        } else {
            long jLongValue = j - l.longValue();
            this.f4158a.remove(str);
            a(str, jLongValue, gvVarV);
        }
        if (this.f4159b.isEmpty()) {
            long j2 = this.f4160c;
            if (j2 == 0) {
                q().v().a("First ad exposure time was never set");
            } else {
                a(j - j2, gvVarV);
                this.f4160c = 0L;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    public final void a(long j) {
        gv gvVarV = i().v();
        for (String str : this.f4158a.keySet()) {
            a(str, j - this.f4158a.get(str).longValue(), gvVarV);
        }
        if (!this.f4158a.isEmpty()) {
            a(j - this.f4160c, gvVarV);
        }
        b(j);
    }

    public final void a(String str) {
        if (str == null || str.length() == 0) {
            q().v().a("Ad unit id must be a non-empty string");
        } else {
            p().a(new cq(this, str, j().b()));
        }
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    public final void b(String str) {
        if (str == null || str.length() == 0) {
            q().v().a("Ad unit id must be a non-empty string");
        } else {
            p().a(new cr(this, str, j().b()));
        }
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
}
