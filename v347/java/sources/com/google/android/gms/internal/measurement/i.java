package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class i extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ad f5994a;

    public i(r rVar, t tVar) {
        super(rVar);
        com.google.android.gms.common.internal.w.a(tVar);
        this.f5994a = new ad(rVar, tVar);
    }

    public final long a(u uVar) {
        y();
        com.google.android.gms.common.internal.w.a(uVar);
        com.google.android.gms.analytics.s.d();
        long jA = this.f5994a.a(uVar, true);
        if (jA == 0) {
            this.f5994a.a(uVar);
        }
        return jA;
    }

    @Override // com.google.android.gms.internal.measurement.p
    protected final void a() {
        this.f5994a.z();
    }

    public final void a(ax axVar) {
        y();
        m().a(new m(this, axVar));
    }

    public final void a(be beVar) {
        com.google.android.gms.common.internal.w.a(beVar);
        y();
        b("Hit delivery requested", beVar);
        m().a(new l(this, beVar));
    }

    public final void a(String str, Runnable runnable) {
        com.google.android.gms.common.internal.w.a(str, (Object) "campaign param can't be empty");
        m().a(new k(this, str, runnable));
    }

    public final void b() {
        this.f5994a.b();
    }

    public final void c() {
        y();
        Context contextJ = j();
        if (!bq.a(contextJ) || !br.a(contextJ)) {
            a((ax) null);
            return;
        }
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(contextJ, "com.google.android.gms.analytics.AnalyticsService"));
        contextJ.startService(intent);
    }

    public final boolean d() {
        y();
        try {
            m().a(new n(this)).get(4L, TimeUnit.SECONDS);
            return true;
        } catch (InterruptedException e) {
            d("syncDispatchLocalHits interrupted", e);
            return false;
        } catch (ExecutionException e2) {
            e("syncDispatchLocalHits failed", e2);
            return false;
        } catch (TimeoutException e3) {
            d("syncDispatchLocalHits timed out", e3);
            return false;
        }
    }

    public final void e() {
        y();
        com.google.android.gms.analytics.s.d();
        ad adVar = this.f5994a;
        com.google.android.gms.analytics.s.d();
        adVar.y();
        adVar.b("Service disconnected");
    }

    final void f() {
        com.google.android.gms.analytics.s.d();
        this.f5994a.e();
    }

    final void g() {
        com.google.android.gms.analytics.s.d();
        this.f5994a.d();
    }
}
