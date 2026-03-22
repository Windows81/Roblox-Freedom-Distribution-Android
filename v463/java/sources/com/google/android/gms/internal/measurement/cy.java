package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class cy extends fx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private da f4174a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Boolean f4175b;

    cy(fc fcVar) {
        super(fcVar);
        this.f4174a = cz.f4176a;
    }

    public static long v() {
        return dn.E.b().longValue();
    }

    public static long w() {
        return dn.f4213e.b().longValue();
    }

    public static boolean y() {
        return dn.f4209a.b().booleanValue();
    }

    final String A() {
        String strW = f().w();
        Cdo<String> cdo = dn.J;
        return strW == null ? cdo.b() : cdo.a(this.f4174a.a(strW, cdo.a()));
    }

    public final int a(String str) {
        return b(str, dn.p);
    }

    public final long a(String str, Cdo<Long> cdo) {
        if (str != null) {
            String strA = this.f4174a.a(str, cdo.a());
            if (!TextUtils.isEmpty(strA)) {
                try {
                    return cdo.a(Long.valueOf(Long.parseLong(strA))).longValue();
                } catch (NumberFormatException unused) {
                }
            }
        }
        return cdo.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    final void a(da daVar) {
        this.f4174a = daVar;
    }

    public final int b(String str, Cdo<Integer> cdo) {
        if (str != null) {
            String strA = this.f4174a.a(str, cdo.a());
            if (!TextUtils.isEmpty(strA)) {
                try {
                    return cdo.a(Integer.valueOf(Integer.parseInt(strA))).intValue();
                } catch (NumberFormatException unused) {
                }
            }
        }
        return cdo.b().intValue();
    }

    final Boolean b(String str) {
        com.google.android.gms.common.internal.aa.a(str);
        try {
            if (k().getPackageManager() == null) {
                q().v().a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfoA = com.google.android.gms.common.d.c.b(k()).a(k().getPackageName(), 128);
            if (applicationInfoA == null) {
                q().v().a("Failed to load metadata: ApplicationInfo is null");
                return null;
            }
            if (applicationInfoA.metaData == null) {
                q().v().a("Failed to load metadata: Metadata bundle is null");
                return null;
            }
            if (applicationInfoA.metaData.containsKey(str)) {
                return Boolean.valueOf(applicationInfoA.metaData.getBoolean(str));
            }
            return null;
        } catch (PackageManager.NameNotFoundException e2) {
            q().v().a("Failed to load metadata: Package name not found", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    public final double c(String str, Cdo<Double> cdo) {
        if (str != null) {
            String strA = this.f4174a.a(str, cdo.a());
            if (!TextUtils.isEmpty(strA)) {
                try {
                    return cdo.a(Double.valueOf(Double.parseDouble(strA))).doubleValue();
                } catch (NumberFormatException unused) {
                }
            }
        }
        return cdo.b().doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    public final boolean c(String str) {
        return "1".equals(this.f4174a.a(str, "gaia_collection_enabled"));
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cp d() {
        return super.d();
    }

    public final boolean d(String str) {
        return "1".equals(this.f4174a.a(str, "measurement.event_sampling_enabled"));
    }

    /* JADX WARN: Removed duplicated region for block: B:3:0x0002  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean d(java.lang.String r3, com.google.android.gms.internal.measurement.Cdo<java.lang.Boolean> r4) {
        /*
            r2 = this;
            if (r3 != 0) goto Ld
        L2:
            java.lang.Object r3 = r4.b()
        L6:
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            return r3
        Ld:
            com.google.android.gms.internal.measurement.da r0 = r2.f4174a
            java.lang.String r1 = r4.a()
            java.lang.String r3 = r0.a(r3, r1)
            boolean r0 = android.text.TextUtils.isEmpty(r3)
            if (r0 == 0) goto L1e
            goto L2
        L1e:
            boolean r3 = java.lang.Boolean.parseBoolean(r3)
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
            java.lang.Object r3 = r4.a(r3)
            goto L6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.cy.d(java.lang.String, com.google.android.gms.internal.measurement.do):boolean");
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gb e() {
        return super.e();
    }

    final boolean e(String str) {
        return d(str, dn.N);
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ds f() {
        return super.f();
    }

    final boolean f(String str) {
        return d(str, dn.P);
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dh g() {
        return super.g();
    }

    final boolean g(String str) {
        return d(str, dn.Q);
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gz h() {
        return super.h();
    }

    final boolean h(String str) {
        return d(str, dn.R);
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gw i() {
        return super.i();
    }

    final boolean i(String str) {
        return d(str, dn.S);
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ com.google.android.gms.common.util.d j() {
        return super.j();
    }

    final boolean j(String str) {
        return d(str, dn.U);
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

    public final boolean t() {
        if (this.f4175b == null) {
            synchronized (this) {
                if (this.f4175b == null) {
                    ApplicationInfo applicationInfo = k().getApplicationInfo();
                    String strA = com.google.android.gms.common.util.n.a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.f4175b = Boolean.valueOf(str != null && str.equals(strA));
                    }
                    if (this.f4175b == null) {
                        this.f4175b = Boolean.TRUE;
                        q().v().a("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f4175b.booleanValue();
    }

    public final boolean u() {
        Boolean boolB = b("firebase_analytics_collection_deactivated");
        return boolB != null && boolB.booleanValue();
    }

    public final String x() {
        dz dzVarV;
        String str;
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, "debug.firebase.analytics.app", "");
        } catch (ClassNotFoundException e2) {
            e = e2;
            dzVarV = q().v();
            str = "Could not find SystemProperties class";
            dzVarV.a(str, e);
            return "";
        } catch (IllegalAccessException e3) {
            e = e3;
            dzVarV = q().v();
            str = "Could not access SystemProperties.get()";
            dzVarV.a(str, e);
            return "";
        } catch (NoSuchMethodException e4) {
            e = e4;
            dzVarV = q().v();
            str = "Could not find SystemProperties.get() method";
            dzVarV.a(str, e);
            return "";
        } catch (InvocationTargetException e5) {
            e = e5;
            dzVarV = q().v();
            str = "SystemProperties.get() threw an exception";
            dzVarV.a(str, e);
            return "";
        }
    }

    final boolean z() {
        return d(f().w(), dn.I);
    }
}
