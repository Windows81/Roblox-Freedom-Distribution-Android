package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class v extends ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aq f4700a;

    public v(ae aeVar, ag agVar) {
        super(aeVar);
        com.google.android.gms.common.internal.aa.a(agVar);
        this.f4700a = new aq(aeVar, agVar);
    }

    public final long a(ah ahVar) {
        y();
        com.google.android.gms.common.internal.aa.a(ahVar);
        com.google.android.gms.analytics.s.d();
        long jA = this.f4700a.a(ahVar, true);
        if (jA == 0) {
            this.f4700a.a(ahVar);
        }
        return jA;
    }

    @Override // com.google.android.gms.internal.measurement.ac
    protected final void a() {
        this.f4700a.z();
    }

    public final void a(bk bkVar) {
        y();
        m().a(new z(this, bkVar));
    }

    public final void a(br brVar) {
        com.google.android.gms.common.internal.aa.a(brVar);
        y();
        b("Hit delivery requested", brVar);
        m().a(new y(this, brVar));
    }

    public final void a(String str, Runnable runnable) {
        com.google.android.gms.common.internal.aa.a(str, (Object) "campaign param can't be empty");
        m().a(new x(this, str, runnable));
    }

    public final void b() {
        this.f4700a.b();
    }

    public final void c() {
        y();
        Context contextJ = j();
        if (!cd.a(contextJ) || !ce.a(contextJ)) {
            a((bk) null);
            return;
        }
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(contextJ, "com.google.android.gms.analytics.AnalyticsService"));
        contextJ.startService(intent);
    }

    public final boolean d() {
        y();
        try {
            m().a(new aa(this)).get(4L, TimeUnit.SECONDS);
            return true;
        } catch (InterruptedException e2) {
            d("syncDispatchLocalHits interrupted", e2);
            return false;
        } catch (ExecutionException e3) {
            e("syncDispatchLocalHits failed", e3);
            return false;
        } catch (TimeoutException e4) {
            d("syncDispatchLocalHits timed out", e4);
            return false;
        }
    }

    public final void e() {
        y();
        com.google.android.gms.analytics.s.d();
        aq aqVar = this.f4700a;
        com.google.android.gms.analytics.s.d();
        aqVar.y();
        aqVar.b("Service disconnected");
    }

    final void f() {
        com.google.android.gms.analytics.s.d();
        this.f4700a.e();
    }

    final void g() {
        com.google.android.gms.analytics.s.d();
        this.f4700a.d();
    }
}
