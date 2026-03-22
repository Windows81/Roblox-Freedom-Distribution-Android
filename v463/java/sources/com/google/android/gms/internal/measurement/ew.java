package com.google.android.gms.internal.measurement;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.AppMeasurement;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ew extends ih implements da {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f4297b = 65535;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f4298c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, Map<String, String>> f4299d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<String, Map<String, Boolean>> f4300e;
    private final Map<String, Map<String, Boolean>> f;
    private final Map<String, ja> g;
    private final Map<String, Map<String, Integer>> h;
    private final Map<String, String> i;

    ew(ii iiVar) {
        super(iiVar);
        this.f4299d = new androidx.c.a();
        this.f4300e = new androidx.c.a();
        this.f = new androidx.c.a();
        this.g = new androidx.c.a();
        this.i = new androidx.c.a();
        this.h = new androidx.c.a();
    }

    private final ja a(String str, byte[] bArr) {
        if (bArr == null) {
            return new ja();
        }
        c cVarA = c.a(bArr, 0, bArr.length);
        ja jaVar = new ja();
        try {
            jaVar.a(cVarA);
            q().C().a("Parsed config. version, gmp_app_id", jaVar.f4596c, jaVar.f4597d);
            return jaVar;
        } catch (IOException e2) {
            q().y().a("Unable to merge remote config. appId", dx.a(str), e2);
            return new ja();
        }
    }

    private static Map<String, String> a(ja jaVar) {
        androidx.c.a aVar = new androidx.c.a();
        if (jaVar != null && jaVar.f4598e != null) {
            for (jb jbVar : jaVar.f4598e) {
                if (jbVar != null) {
                    aVar.put(jbVar.f4600c, jbVar.f4601d);
                }
            }
        }
        return aVar;
    }

    private final void a(String str, ja jaVar) {
        androidx.c.a aVar = new androidx.c.a();
        androidx.c.a aVar2 = new androidx.c.a();
        androidx.c.a aVar3 = new androidx.c.a();
        if (jaVar != null && jaVar.f != null) {
            for (iz izVar : jaVar.f) {
                if (TextUtils.isEmpty(izVar.f4590c)) {
                    q().y().a("EventConfig contained null event name");
                } else {
                    String strA = AppMeasurement.a.a(izVar.f4590c);
                    if (!TextUtils.isEmpty(strA)) {
                        izVar.f4590c = strA;
                    }
                    aVar.put(izVar.f4590c, izVar.f4591d);
                    aVar2.put(izVar.f4590c, izVar.f4592e);
                    if (izVar.f != null) {
                        if (izVar.f.intValue() < f4298c || izVar.f.intValue() > f4297b) {
                            q().y().a("Invalid sampling rate. Event name, sample rate", izVar.f4590c, izVar.f);
                        } else {
                            aVar3.put(izVar.f4590c, izVar.f);
                        }
                    }
                }
            }
        }
        this.f4300e.put(str, aVar);
        this.f.put(str, aVar2);
        this.h.put(str, aVar3);
    }

    private final void g(String str) {
        N();
        c();
        com.google.android.gms.common.internal.aa.a(str);
        if (this.g.get(str) == null) {
            byte[] bArrD = c_().d(str);
            if (bArrD != null) {
                ja jaVarA = a(str, bArrD);
                this.f4299d.put(str, a(jaVarA));
                a(str, jaVarA);
                this.g.put(str, jaVarA);
                this.i.put(str, null);
                return;
            }
            this.f4299d.put(str, null);
            this.f4300e.put(str, null);
            this.f.put(str, null);
            this.g.put(str, null);
            this.i.put(str, null);
            this.h.put(str, null);
        }
    }

    protected final ja a(String str) {
        N();
        c();
        com.google.android.gms.common.internal.aa.a(str);
        g(str);
        return this.g.get(str);
    }

    @Override // com.google.android.gms.internal.measurement.da
    public final String a(String str, String str2) {
        c();
        g(str);
        Map<String, String> map = this.f4299d.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    protected final boolean a(String str, byte[] bArr, String str2) {
        byte[] bArr2;
        N();
        c();
        com.google.android.gms.common.internal.aa.a(str);
        ja jaVarA = a(str, bArr);
        if (jaVarA == null) {
            return false;
        }
        a(str, jaVarA);
        this.g.put(str, jaVarA);
        this.i.put(str, str2);
        this.f4299d.put(str, a(jaVarA));
        cv cvVarD_ = d_();
        it[] itVarArr = jaVarA.g;
        com.google.android.gms.common.internal.aa.a(itVarArr);
        for (it itVar : itVarArr) {
            for (iu iuVar : itVar.f4574e) {
                String strA = AppMeasurement.a.a(iuVar.f4576d);
                if (strA != null) {
                    iuVar.f4576d = strA;
                }
                for (iv ivVar : iuVar.f4577e) {
                    String strA2 = AppMeasurement.d.a(ivVar.f);
                    if (strA2 != null) {
                        ivVar.f = strA2;
                    }
                }
            }
            for (ix ixVar : itVar.f4573d) {
                String strA3 = AppMeasurement.e.a(ixVar.f4585d);
                if (strA3 != null) {
                    ixVar.f4585d = strA3;
                }
            }
        }
        cvVarD_.c_().a(str, itVarArr);
        try {
            jaVarA.g = null;
            int iD = jaVarA.d();
            bArr2 = new byte[iD];
            jaVarA.a(d.a(bArr2, 0, iD));
        } catch (IOException e2) {
            q().y().a("Unable to serialize reduced-size config. Storing full config instead. appId", dx.a(str), e2);
            bArr2 = bArr;
        }
        db dbVarC_ = c_();
        com.google.android.gms.common.internal.aa.a(str);
        dbVarC_.c();
        dbVarC_.N();
        new ContentValues().put("remote_config", bArr2);
        try {
            if (dbVarC_.x().update("apps", r0, "app_id = ?", new String[]{str}) == 0) {
                dbVarC_.q().v().a("Failed to update remote config (got 0). appId", dx.a(str));
            }
        } catch (SQLiteException e3) {
            dbVarC_.q().v().a("Error storing remote config. appId", dx.a(str), e3);
        }
        return true;
    }

    protected final String b(String str) {
        c();
        return this.i.get(str);
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    final boolean b(String str, String str2) {
        Boolean bool;
        c();
        g(str);
        if (e(str) && iq.h(str2)) {
            return true;
        }
        if (f(str) && iq.a(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f4300e.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    protected final void c(String str) {
        c();
        this.i.put(str, null);
    }

    final boolean c(String str, String str2) {
        Boolean bool;
        c();
        g(str);
        if ("ecommerce_purchase".equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.ig
    public final /* bridge */ /* synthetic */ db c_() {
        return super.c_();
    }

    final int d(String str, String str2) {
        Integer num;
        c();
        g(str);
        Map<String, Integer> map = this.h.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cp d() {
        return super.d();
    }

    final void d(String str) {
        c();
        this.g.remove(str);
    }

    @Override // com.google.android.gms.internal.measurement.ig
    public final /* bridge */ /* synthetic */ cv d_() {
        return super.d_();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gb e() {
        return super.e();
    }

    final boolean e(String str) {
        return "1".equals(a(str, "measurement.upload.blacklist_internal"));
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ds f() {
        return super.f();
    }

    final boolean f(String str) {
        return "1".equals(a(str, "measurement.upload.blacklist_public"));
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

    @Override // com.google.android.gms.internal.measurement.ih
    protected final boolean t() {
        return false;
    }
}
