package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.os.RemoteException;
import java.util.Collections;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ai extends ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ak f4023a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private bs f4024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final bg f4025c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cj f4026d;

    protected ai(ae aeVar) {
        super(aeVar);
        this.f4026d = new cj(aeVar.c());
        this.f4023a = new ak(this);
        this.f4025c = new aj(this, aeVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(ComponentName componentName) {
        com.google.android.gms.analytics.s.d();
        if (this.f4024b != null) {
            this.f4024b = null;
            a("Disconnected from device AnalyticsService", componentName);
            o().e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(bs bsVar) {
        com.google.android.gms.analytics.s.d();
        this.f4024b = bsVar;
        e();
        o().f();
    }

    private final void e() {
        this.f4026d.a();
        this.f4025c.a(bm.A.a().longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        com.google.android.gms.analytics.s.d();
        if (b()) {
            b("Inactivity, disconnecting from device AnalyticsService");
            d();
        }
    }

    @Override // com.google.android.gms.internal.measurement.ac
    protected final void a() {
    }

    public final boolean a(br brVar) {
        com.google.android.gms.common.internal.aa.a(brVar);
        com.google.android.gms.analytics.s.d();
        y();
        bs bsVar = this.f4024b;
        if (bsVar == null) {
            return false;
        }
        try {
            bsVar.a(brVar.b(), brVar.d(), brVar.f() ? be.h() : be.i(), Collections.emptyList());
            e();
            return true;
        } catch (RemoteException unused) {
            b("Failed to send hits to AnalyticsService");
            return false;
        }
    }

    public final boolean b() {
        com.google.android.gms.analytics.s.d();
        y();
        return this.f4024b != null;
    }

    public final boolean c() {
        com.google.android.gms.analytics.s.d();
        y();
        if (this.f4024b != null) {
            return true;
        }
        bs bsVarA = this.f4023a.a();
        if (bsVarA == null) {
            return false;
        }
        this.f4024b = bsVarA;
        e();
        return true;
    }

    public final void d() {
        com.google.android.gms.analytics.s.d();
        y();
        try {
            com.google.android.gms.common.stats.a.a().a(j(), this.f4023a);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        if (this.f4024b != null) {
            this.f4024b = null;
            o().e();
        }
    }
}
