package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class ayf extends apg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4619a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f4620b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final awu f4621c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.android.gms.ads.internal.m f4622d;
    private final axw e;

    public ayf(Context context, String str, bbu bbuVar, zzang zzangVar, com.google.android.gms.ads.internal.bt btVar) {
        this(str, new awu(context, bbuVar, zzangVar, btVar));
    }

    private ayf(String str, awu awuVar) {
        this.f4619a = str;
        this.f4621c = awuVar;
        this.e = new axw();
        com.google.android.gms.ads.internal.aw.r().a(awuVar);
    }

    private final void c() {
        if (this.f4622d != null) {
            return;
        }
        this.f4622d = this.f4621c.a(this.f4619a);
        this.e.a(this.f4622d);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final String C() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final apo D() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final aou E() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void H() throws RemoteException {
        if (this.f4622d == null) {
            jd.e("Interstitial ad must be loaded before showInterstitial().");
        } else {
            this.f4622d.c(this.f4620b);
            this.f4622d.H();
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final String a() throws RemoteException {
        if (this.f4622d != null) {
            return this.f4622d.a();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(af afVar, String str) throws RemoteException {
        jd.e("setPlayStorePurchaseParams is deprecated and should not be called.");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(aor aorVar) throws RemoteException {
        this.e.e = aorVar;
        if (this.f4622d != null) {
            this.e.a(this.f4622d);
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(aou aouVar) throws RemoteException {
        this.e.f4589a = aouVar;
        if (this.f4622d != null) {
            this.e.a(this.f4622d);
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(apk apkVar) throws RemoteException {
        this.e.f4590b = apkVar;
        if (this.f4622d != null) {
            this.e.a(this.f4622d);
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(apo apoVar) throws RemoteException {
        this.e.f4591c = apoVar;
        if (this.f4622d != null) {
            this.e.a(this.f4622d);
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(apu apuVar) throws RemoteException {
        c();
        if (this.f4622d != null) {
            this.f4622d.a(apuVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(asi asiVar) throws RemoteException {
        this.e.f4592d = asiVar;
        if (this.f4622d != null) {
            this.e.a(this.f4622d);
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(gh ghVar) {
        this.e.f = ghVar;
        if (this.f4622d != null) {
            this.e.a(this.f4622d);
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(y yVar) throws RemoteException {
        jd.e("setInAppPurchaseListener is deprecated and should not be called.");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(zzjn zzjnVar) throws RemoteException {
        if (this.f4622d != null) {
            this.f4622d.a(zzjnVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(zzlu zzluVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(zzmu zzmuVar) {
        throw new IllegalStateException("getVideoController not implemented for interstitials");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void b(boolean z) throws RemoteException {
        c();
        if (this.f4622d != null) {
            this.f4622d.b(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final boolean b(zzjj zzjjVar) throws RemoteException {
        if (!axz.a(zzjjVar).contains("gw")) {
            c();
        }
        if (axz.a(zzjjVar).contains("_skipMediation")) {
            c();
        }
        if (zzjjVar.j != null) {
            c();
        }
        if (this.f4622d != null) {
            return this.f4622d.b(zzjjVar);
        }
        axz axzVarR = com.google.android.gms.ads.internal.aw.r();
        if (axz.a(zzjjVar).contains("_ad")) {
            axzVarR.b(zzjjVar, this.f4619a);
        }
        ayc aycVarA = axzVarR.a(zzjjVar, this.f4619a);
        if (aycVarA == null) {
            c();
            aye.a().e();
            return this.f4622d.b(zzjjVar);
        }
        if (aycVarA.e) {
            aye.a().d();
        } else {
            aycVarA.a();
            aye.a().e();
        }
        this.f4622d = aycVarA.f4607a;
        aycVarA.f4609c.a(this.e);
        this.e.a(this.f4622d);
        return aycVarA.f;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void c(boolean z) {
        this.f4620b = z;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void i() throws RemoteException {
        if (this.f4622d != null) {
            this.f4622d.i();
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final com.google.android.gms.b.a j() throws RemoteException {
        if (this.f4622d != null) {
            return this.f4622d.j();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final zzjn k() throws RemoteException {
        if (this.f4622d != null) {
            return this.f4622d.k();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final boolean l() throws RemoteException {
        return this.f4622d != null && this.f4622d.l();
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void m() throws RemoteException {
        if (this.f4622d != null) {
            this.f4622d.m();
        } else {
            jd.e("Interstitial ad must be loaded before pingManualTrackingUrl().");
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void n() throws RemoteException {
        if (this.f4622d != null) {
            this.f4622d.n();
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void o() throws RemoteException {
        if (this.f4622d != null) {
            this.f4622d.o();
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final Bundle p() throws RemoteException {
        return this.f4622d != null ? this.f4622d.p() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final String p_() throws RemoteException {
        if (this.f4622d != null) {
            return this.f4622d.p_();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void q() throws RemoteException {
        if (this.f4622d != null) {
            this.f4622d.q();
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final boolean r() throws RemoteException {
        return this.f4622d != null && this.f4622d.r();
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final aqc s() {
        throw new IllegalStateException("getVideoController not implemented for interstitials");
    }
}
