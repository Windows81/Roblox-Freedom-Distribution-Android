package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.os.RemoteException;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class v extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x f6020a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private bf f6021b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final at f6022c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final bw f6023d;

    protected v(r rVar) {
        super(rVar);
        this.f6023d = new bw(rVar.c());
        this.f6020a = new x(this);
        this.f6022c = new w(this, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(ComponentName componentName) {
        com.google.android.gms.analytics.s.d();
        if (this.f6021b != null) {
            this.f6021b = null;
            a("Disconnected from device AnalyticsService", componentName);
            o().e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(bf bfVar) {
        com.google.android.gms.analytics.s.d();
        this.f6021b = bfVar;
        e();
        o().f();
    }

    private final void e() {
        this.f6023d.a();
        this.f6022c.a(az.A.a().longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        com.google.android.gms.analytics.s.d();
        if (b()) {
            b("Inactivity, disconnecting from device AnalyticsService");
            d();
        }
    }

    @Override // com.google.android.gms.internal.measurement.p
    protected final void a() {
    }

    public final boolean a(be beVar) {
        com.google.android.gms.common.internal.w.a(beVar);
        com.google.android.gms.analytics.s.d();
        y();
        bf bfVar = this.f6021b;
        if (bfVar == null) {
            return false;
        }
        try {
            bfVar.a(beVar.b(), beVar.d(), beVar.f() ? ar.h() : ar.i(), Collections.emptyList());
            e();
            return true;
        } catch (RemoteException e) {
            b("Failed to send hits to AnalyticsService");
            return false;
        }
    }

    public final boolean b() {
        com.google.android.gms.analytics.s.d();
        y();
        return this.f6021b != null;
    }

    public final boolean c() {
        com.google.android.gms.analytics.s.d();
        y();
        if (this.f6021b != null) {
            return true;
        }
        bf bfVarA = this.f6020a.a();
        if (bfVarA == null) {
            return false;
        }
        this.f6021b = bfVarA;
        e();
        return true;
    }

    public final void d() {
        com.google.android.gms.analytics.s.d();
        y();
        try {
            com.google.android.gms.common.stats.a.a().a(j(), this.f6020a);
        } catch (IllegalArgumentException e) {
        } catch (IllegalStateException e2) {
        }
        if (this.f6021b != null) {
            this.f6021b = null;
            o().e();
        }
    }
}
