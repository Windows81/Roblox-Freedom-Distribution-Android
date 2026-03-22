package com.google.android.gms.internal.measurement;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class fc extends ii implements fz {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile fc f4316d;
    private int A;
    private int B;
    private final long C;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f4317e;
    private final cy f;
    private final ei g;
    private final dx h;
    private final ex i;
    private final hy j;
    private final AppMeasurement k;
    private final FirebaseAnalytics l;
    private final iq m;
    private final dv n;
    private final com.google.android.gms.common.util.d o;
    private final gw p;
    private final gb q;
    private final cp r;
    private dt s;
    private gz t;
    private dh u;
    private ds v;
    private eo w;
    private boolean x = false;
    private Boolean y;
    private long z;

    private fc(ga gaVar) {
        dz dzVarY;
        String str;
        com.google.android.gms.common.internal.aa.a(gaVar);
        a(this);
        Context context = gaVar.f4382a;
        this.f4317e = context;
        jy.a(context);
        this.f4547c = -1L;
        com.google.android.gms.common.util.d dVarD = com.google.android.gms.common.util.f.d();
        this.o = dVarD;
        this.C = dVarD.a();
        this.f = new cy(this);
        ei eiVar = new ei(this);
        eiVar.G();
        this.g = eiVar;
        dx dxVar = new dx(this);
        dxVar.G();
        this.h = dxVar;
        iq iqVar = new iq(this);
        iqVar.G();
        this.m = iqVar;
        dv dvVar = new dv(this);
        dvVar.G();
        this.n = dvVar;
        this.r = new cp(this);
        gw gwVar = new gw(this);
        gwVar.G();
        this.p = gwVar;
        gb gbVar = new gb(this);
        gbVar.G();
        this.q = gbVar;
        this.k = new AppMeasurement(this);
        this.l = new FirebaseAnalytics(this);
        hy hyVar = new hy(this);
        hyVar.G();
        this.j = hyVar;
        ex exVar = new ex(this);
        exVar.G();
        this.i = exVar;
        if (this.f4317e.getApplicationContext() instanceof Application) {
            gb gbVarH = h();
            if (gbVarH.k().getApplicationContext() instanceof Application) {
                Application application = (Application) gbVarH.k().getApplicationContext();
                if (gbVarH.f4383a == null) {
                    gbVarH.f4383a = new gu(gbVarH, null);
                }
                application.unregisterActivityLifecycleCallbacks(gbVarH.f4383a);
                application.registerActivityLifecycleCallbacks(gbVarH.f4383a);
                dzVarY = gbVarH.q().C();
                str = "Registered activity lifecycle callback";
            }
            eb ebVar = new eb(this);
            ebVar.O();
            this.f4546b = ebVar;
            ew ewVar = new ew(this);
            ewVar.O();
            this.f4545a = ewVar;
            this.i.a(new fd(this, gaVar));
        }
        dzVarY = q().y();
        str = "Application context is not an Application";
        dzVarY.a(str);
        eb ebVar2 = new eb(this);
        ebVar2.O();
        this.f4546b = ebVar2;
        ew ewVar2 = new ew(this);
        ewVar2.O();
        this.f4545a = ewVar2;
        this.i.a(new fd(this, gaVar));
    }

    private final void K() {
        if (!this.x) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
    }

    public static fc a(Context context) {
        com.google.android.gms.common.internal.aa.a(context);
        com.google.android.gms.common.internal.aa.a(context.getApplicationContext());
        if (f4316d == null) {
            synchronized (fc.class) {
                if (f4316d == null) {
                    f4316d = new fc(new ga(context));
                }
            }
        }
        return f4316d;
    }

    private static void a(fx fxVar) {
        if (fxVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private static void b(fy fyVar) {
        if (fyVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (fyVar.E()) {
            return;
        }
        String strValueOf = String.valueOf(fyVar.getClass());
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 27);
        sb.append("Component not initialized: ");
        sb.append(strValueOf);
        throw new IllegalStateException(sb.toString());
    }

    static void z() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    final void A() {
        this.B++;
    }

    protected final boolean B() {
        K();
        w();
        Boolean bool = this.y;
        if (bool == null || this.z == 0 || (bool != null && !bool.booleanValue() && Math.abs(j().b() - this.z) > 1000)) {
            this.z = j().b();
            boolean z = false;
            if (m().g("android.permission.INTERNET") && m().g("android.permission.ACCESS_NETWORK_STATE") && (com.google.android.gms.common.d.c.b(k()).a() || (es.a(k()) && ht.a(k(), false)))) {
                z = true;
            }
            Boolean boolValueOf = Boolean.valueOf(z);
            this.y = boolValueOf;
            if (boolValueOf.booleanValue()) {
                this.y = Boolean.valueOf(m().e(u().x()));
            }
        }
        return this.y.booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.ii
    protected final void a() {
        w();
        if (c().f4261c.a() == 0) {
            c().f4261c.a(j().a());
        }
        if (Long.valueOf(c().h.a()).longValue() == 0) {
            q().C().a("Persisting first open", Long.valueOf(this.C));
            c().h.a(this.C);
        }
        if (B()) {
            if (!TextUtils.isEmpty(u().x())) {
                String strV = c().v();
                if (strV == null) {
                    c().c(u().x());
                } else if (!strV.equals(u().x())) {
                    q().A().a("Rechecking which service to use due to a GMP App Id change");
                    c().y();
                    this.t.B();
                    this.t.z();
                    c().c(u().x());
                    c().h.a(this.C);
                    c().j.a(null);
                }
            }
            h().a(c().j.a());
            if (!TextUtils.isEmpty(u().x())) {
                boolean zX = x();
                if (!c().B() && !b().u()) {
                    c().d(!zX);
                }
                if (!b().i(u().w()) || zX) {
                    h().D();
                }
                s().a(new AtomicReference<>());
            }
        } else if (x()) {
            if (!m().g("android.permission.INTERNET")) {
                q().v().a("App is missing INTERNET permission");
            }
            if (!m().g("android.permission.ACCESS_NETWORK_STATE")) {
                q().v().a("App is missing ACCESS_NETWORK_STATE permission");
            }
            if (!com.google.android.gms.common.d.c.b(k()).a()) {
                if (!es.a(k())) {
                    q().v().a("AppMeasurementReceiver not registered/enabled");
                }
                if (!ht.a(k(), false)) {
                    q().v().a("AppMeasurementService not registered/enabled");
                }
            }
            q().v().a("Uploading is not possible. App measurement disabled");
        }
        super.a();
    }

    final void a(fy fyVar) {
        this.A++;
    }

    final void a(ga gaVar) {
        String strConcat;
        dz dzVarA;
        w();
        dh dhVar = new dh(this);
        dhVar.G();
        this.u = dhVar;
        ds dsVar = new ds(this);
        dsVar.G();
        this.v = dsVar;
        dt dtVar = new dt(this);
        dtVar.G();
        this.s = dtVar;
        gz gzVar = new gz(this);
        gzVar.G();
        this.t = gzVar;
        this.m.H();
        this.g.H();
        this.w = new eo(this);
        this.v.H();
        q().A().a("App measurement is starting up, version", 12451L);
        q().A().a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String strW = dsVar.w();
        if (m().i(strW)) {
            dzVarA = q().A();
            strConcat = "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.";
        } else {
            dz dzVarA2 = q().A();
            String strValueOf = String.valueOf(strW);
            strConcat = strValueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(strValueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ");
            dzVarA = dzVarA2;
        }
        dzVarA.a(strConcat);
        q().B().a("Debug-level message logging enabled");
        if (this.A != this.B) {
            q().v().a("Not all components initialized", Integer.valueOf(this.A), Integer.valueOf(this.B));
        }
        super.a((in) gaVar);
        this.x = true;
    }

    @Override // com.google.android.gms.internal.measurement.ii
    public final cy b() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.measurement.ii
    public final ei c() {
        a((fx) this.g);
        return this.g;
    }

    public final dx d() {
        dx dxVar = this.h;
        if (dxVar == null || !dxVar.E()) {
            return null;
        }
        return this.h;
    }

    public final hy e() {
        b(this.j);
        return this.j;
    }

    public final eo f() {
        return this.w;
    }

    final ex g() {
        return this.i;
    }

    public final gb h() {
        b(this.q);
        return this.q;
    }

    public final AppMeasurement i() {
        return this.k;
    }

    @Override // com.google.android.gms.internal.measurement.ii, com.google.android.gms.internal.measurement.cw
    public final com.google.android.gms.common.util.d j() {
        return this.o;
    }

    @Override // com.google.android.gms.internal.measurement.ii, com.google.android.gms.internal.measurement.cw
    public final Context k() {
        return this.f4317e;
    }

    public final FirebaseAnalytics l() {
        return this.l;
    }

    @Override // com.google.android.gms.internal.measurement.ii
    public final iq m() {
        a((fx) this.m);
        return this.m;
    }

    @Override // com.google.android.gms.internal.measurement.ii
    public final dv n() {
        a((fx) this.n);
        return this.n;
    }

    public final dt o() {
        b(this.s);
        return this.s;
    }

    @Override // com.google.android.gms.internal.measurement.ii, com.google.android.gms.internal.measurement.cw
    public final ex p() {
        b(this.i);
        return this.i;
    }

    @Override // com.google.android.gms.internal.measurement.ii, com.google.android.gms.internal.measurement.cw
    public final dx q() {
        b(this.h);
        return this.h;
    }

    public final gw r() {
        b(this.p);
        return this.p;
    }

    public final gz s() {
        b(this.t);
        return this.t;
    }

    @Override // com.google.android.gms.internal.measurement.ii
    public final dh t() {
        b(this.u);
        return this.u;
    }

    public final ds u() {
        b(this.v);
        return this.v;
    }

    public final cp v() {
        a(this.r);
        return this.r;
    }

    @Override // com.google.android.gms.internal.measurement.ii
    public final void w() {
        p().c();
    }

    public final boolean x() {
        w();
        K();
        boolean zBooleanValue = false;
        if (b().u()) {
            return false;
        }
        Boolean boolB = b().b("firebase_analytics_collection_enabled");
        if (boolB != null) {
            zBooleanValue = boolB.booleanValue();
        } else if (!com.google.android.gms.common.api.internal.f.b()) {
            zBooleanValue = true;
        }
        return c().c(zBooleanValue);
    }

    final long y() {
        Long lValueOf = Long.valueOf(c().h.a());
        return lValueOf.longValue() == 0 ? this.C : Math.min(this.C, lValueOf.longValue());
    }
}
