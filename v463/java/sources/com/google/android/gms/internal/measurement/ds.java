package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.firebase.iid.FirebaseInstanceId;
import java.math.BigInteger;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ds extends fy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4216a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4218c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4219d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f4220e;
    private long f;
    private long g;
    private int h;
    private String i;

    ds(fc fcVar) {
        super(fcVar);
    }

    private final String A() {
        c();
        if (s().h(this.f4216a) && !this.q.x()) {
            return null;
        }
        try {
            return FirebaseInstanceId.a().c();
        } catch (IllegalStateException unused) {
            q().y().a("Failed to retrieve Firebase Instance Id");
            return null;
        }
    }

    final zzdz a(String str) {
        c();
        String strW = w();
        String strX = x();
        F();
        String str2 = this.f4217b;
        long jY = y();
        F();
        String str3 = this.f4219d;
        F();
        c();
        if (this.f == 0) {
            this.f = this.q.m().b(k(), k().getPackageName());
        }
        long j = this.f;
        boolean zX = this.q.x();
        boolean z = true;
        boolean z2 = !r().p;
        String strA = A();
        F();
        long jY2 = this.q.y();
        int iZ = z();
        Boolean boolB = s().b("google_analytics_adid_collection_enabled");
        boolean zBooleanValue = Boolean.valueOf(boolB == null || boolB.booleanValue()).booleanValue();
        Boolean boolB2 = s().b("google_analytics_ssaid_collection_enabled");
        if (boolB2 != null && !boolB2.booleanValue()) {
            z = false;
        }
        return new zzdz(strW, strX, str2, jY, str3, 12451L, j, str, zX, z2, strA, 0L, jY2, iZ, zBooleanValue, Boolean.valueOf(z).booleanValue(), r().A());
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void a() {
        super.a();
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

    /* JADX WARN: Can't wrap try/catch for region: R(16:0|2|(1:4)(18:70|6|(1:10)(2:11|(1:13))|72|14|(4:16|(1:18)(1:20)|68|21)|26|(1:31)(1:30)|(1:(1:34)(1:35))|(4:37|(1:39)(1:(1:(1:49)(1:48))(1:44))|40|50)(1:50)|51|74|52|(1:54)(1:55)|56|(1:58)|62|(2:64|65)(2:66|67))|5|26|(2:28|31)(0)|(0)|(0)(0)|51|74|52|(0)(0)|56|(0)|62|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x015d, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x015e, code lost:
    
        q().v().a("getGoogleAppId or isMeasurementEnabled failed with exception. appId", com.google.android.gms.internal.measurement.dx.a(r0), r1);
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x014b A[Catch: IllegalStateException -> 0x015d, TRY_LEAVE, TryCatch #3 {IllegalStateException -> 0x015d, blocks: (B:52:0x013b, B:56:0x0147, B:58:0x014b), top: B:74:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0180  */
    @Override // com.google.android.gms.internal.measurement.fy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final void e_() {
        /*
            Method dump skipped, instruction units count: 387
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.ds.e_():void");
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
        return true;
    }

    final String v() {
        byte[] bArr = new byte[16];
        n().w().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    final String w() {
        F();
        return this.f4216a;
    }

    final String x() {
        F();
        return this.i;
    }

    final int y() {
        F();
        return this.f4218c;
    }

    final int z() {
        F();
        return this.h;
    }
}
