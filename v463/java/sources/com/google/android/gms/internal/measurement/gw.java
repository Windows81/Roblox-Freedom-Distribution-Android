package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class gw extends fy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected gv f4441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile gv f4442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private gv f4443c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f4444d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Activity, gv> f4445e;
    private gv f;
    private String g;

    public gw(fc fcVar) {
        super(fcVar);
        this.f4445e = new androidx.c.a();
    }

    private static String a(String str) {
        String[] strArrSplit = str.split("\\.");
        String str2 = strArrSplit.length > 0 ? strArrSplit[strArrSplit.length - 1] : "";
        return str2.length() > 100 ? str2.substring(0, 100) : str2;
    }

    private final void a(Activity activity, gv gvVar, boolean z) {
        gv gvVar2 = this.f4442b == null ? this.f4443c : this.f4442b;
        if (gvVar.f4438b == null) {
            gvVar = new gv(gvVar.f4437a, a(activity.getClass().getCanonicalName()), gvVar.f4439c);
        }
        this.f4443c = this.f4442b;
        this.f4444d = j().b();
        this.f4442b = gvVar;
        p().a(new gx(this, z, gvVar2, gvVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(gv gvVar) {
        d().a(j().b());
        if (o().a(gvVar.f4440d)) {
            gvVar.f4440d = false;
        }
    }

    public static void a(gv gvVar, Bundle bundle, boolean z) {
        if (bundle != null && gvVar != null && (!bundle.containsKey("_sc") || z)) {
            if (gvVar.f4437a != null) {
                bundle.putString("_sn", gvVar.f4437a);
            } else {
                bundle.remove("_sn");
            }
            bundle.putString("_sc", gvVar.f4438b);
            bundle.putLong("_si", gvVar.f4439c);
            return;
        }
        if (bundle != null && gvVar == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    private final gv d(Activity activity) {
        com.google.android.gms.common.internal.aa.a(activity);
        gv gvVar = this.f4445e.get(activity);
        if (gvVar != null) {
            return gvVar;
        }
        gv gvVar2 = new gv(null, a(activity.getClass().getCanonicalName()), n().v());
        this.f4445e.put(activity, gvVar2);
        return gvVar2;
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    public final void a(Activity activity) {
        a(activity, d(activity), false);
        cp cpVarD = d();
        cpVarD.p().a(new cs(cpVarD, cpVarD.j().b()));
    }

    public final void a(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (bundle == null || (bundle2 = bundle.getBundle("com.google.firebase.analytics.screen_service")) == null) {
            return;
        }
        this.f4445e.put(activity, new gv(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    public final void a(Activity activity, String str, String str2) {
        p();
        if (!ex.v()) {
            q().y().a("setCurrentScreen must be called from the main thread");
            return;
        }
        if (this.f4442b == null) {
            q().y().a("setCurrentScreen cannot be called while no activity active");
            return;
        }
        if (this.f4445e.get(activity) == null) {
            q().y().a("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = a(activity.getClass().getCanonicalName());
        }
        boolean zEquals = this.f4442b.f4438b.equals(str2);
        boolean zB = iq.b(this.f4442b.f4437a, str);
        if (zEquals && zB) {
            q().z().a("setCurrentScreen cannot be called with the same class and name");
            return;
        }
        if (str != null && (str.length() <= 0 || str.length() > 100)) {
            q().y().a("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            return;
        }
        if (str2 != null && (str2.length() <= 0 || str2.length() > 100)) {
            q().y().a("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            return;
        }
        q().C().a("Setting current screen to name, class", str == null ? "null" : str, str2);
        gv gvVar = new gv(str, str2, n().v());
        this.f4445e.put(activity, gvVar);
        a(activity, gvVar, true);
    }

    public final void a(String str, gv gvVar) {
        c();
        synchronized (this) {
            if (this.g == null || this.g.equals(str) || gvVar != null) {
                this.g = str;
                this.f = gvVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    public final void b(Activity activity) {
        gv gvVarD = d(activity);
        this.f4443c = this.f4442b;
        this.f4444d = j().b();
        this.f4442b = null;
        p().a(new gy(this, gvVarD));
    }

    public final void b(Activity activity, Bundle bundle) {
        gv gvVar;
        if (bundle == null || (gvVar = this.f4445e.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", gvVar.f4439c);
        bundle2.putString("name", gvVar.f4437a);
        bundle2.putString("referrer_name", gvVar.f4438b);
        bundle.putBundle("com.google.firebase.analytics.screen_service", bundle2);
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    public final void c(Activity activity) {
        this.f4445e.remove(activity);
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

    public final gv v() {
        F();
        c();
        return this.f4441a;
    }

    public final gv w() {
        return this.f4442b;
    }
}
