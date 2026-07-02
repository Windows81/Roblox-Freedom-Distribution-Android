package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import android.view.View;
import com.google.ads.AdRequest;
import com.google.android.gms.internal.ads.ajk;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aqc;
import com.google.android.gms.internal.ads.aqf;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.asb;
import com.google.android.gms.internal.ads.asi;
import com.google.android.gms.internal.ads.ast;
import com.google.android.gms.internal.ads.asv;
import com.google.android.gms.internal.ads.asx;
import com.google.android.gms.internal.ads.ata;
import com.google.android.gms.internal.ads.atc;
import com.google.android.gms.internal.ads.atd;
import com.google.android.gms.internal.ads.ate;
import com.google.android.gms.internal.ads.atg;
import com.google.android.gms.internal.ads.ath;
import com.google.android.gms.internal.ads.atj;
import com.google.android.gms.internal.ads.auy;
import com.google.android.gms.internal.ads.avj;
import com.google.android.gms.internal.ads.avm;
import com.google.android.gms.internal.ads.bbe;
import com.google.android.gms.internal.ads.bbu;
import com.google.android.gms.internal.ads.bbx;
import com.google.android.gms.internal.ads.bcg;
import com.google.android.gms.internal.ads.bck;
import com.google.android.gms.internal.ads.bcn;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.ii;
import com.google.android.gms.internal.ads.ij;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jk;
import com.google.android.gms.internal.ads.jm;
import com.google.android.gms.internal.ads.mj;
import com.google.android.gms.internal.ads.nd;
import com.google.android.gms.internal.ads.no;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.qo;
import com.google.android.gms.internal.ads.zzang;
import com.google.android.gms.internal.ads.zzjj;
import com.google.android.gms.internal.ads.zzjn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class ad extends ba implements atg {
    private final Object k;
    private boolean l;
    private no<ath> m;
    private qd n;
    private qd o;
    private boolean p;
    private int q;

    @GuardedBy("mLock")
    private com.google.android.gms.internal.ads.bq r;
    private final String s;

    public ad(Context context, bt btVar, zzjn zzjnVar, String str, bbu bbuVar, zzang zzangVar) {
        this(context, btVar, zzjnVar, str, bbuVar, zzangVar, false);
    }

    public ad(Context context, bt btVar, zzjn zzjnVar, String str, bbu bbuVar, zzang zzangVar, boolean z) {
        super(context, zzjnVar, str, bbuVar, zzangVar, btVar);
        this.k = new Object();
        this.m = new no<>();
        this.q = 1;
        this.s = UUID.randomUUID().toString();
        this.l = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(ax axVar, ax axVar2) {
        if (axVar2.r == null) {
            axVar2.r = axVar.r;
        }
        if (axVar2.s == null) {
            axVar2.s = axVar.s;
        }
        if (axVar2.u == null) {
            axVar2.u = axVar.u;
        }
        if (axVar2.v == null) {
            axVar2.v = axVar.v;
        }
        if (axVar2.x == null) {
            axVar2.x = axVar.x;
        }
        if (axVar2.w == null) {
            axVar2.w = axVar.w;
        }
        if (axVar2.F == null) {
            axVar2.F = axVar.F;
        }
        if (axVar2.l == null) {
            axVar2.l = axVar.l;
        }
        if (axVar2.G == null) {
            axVar2.G = axVar.G;
        }
        if (axVar2.m == null) {
            axVar2.m = axVar.m;
        }
        if (axVar2.n == null) {
            axVar2.n = axVar.n;
        }
        if (axVar2.i == null) {
            axVar2.i = axVar.i;
        }
        if (axVar2.j == null) {
            axVar2.j = axVar.j;
        }
        if (axVar2.k == null) {
            axVar2.k = axVar.k;
        }
    }

    private final void a(ast astVar) {
        jm.f5184a.post(new ah(this, astVar));
    }

    private final void a(asv asvVar) {
        jm.f5184a.post(new aj(this, asvVar));
    }

    private final void a(ata ataVar) {
        jm.f5184a.post(new ai(this, ataVar));
    }

    private final boolean ac() {
        return this.e.j != null && this.e.j.N;
    }

    private final bbe ad() {
        if (this.e.j == null || !this.e.j.n) {
            return null;
        }
        return this.e.j.r;
    }

    private final void ae() {
        com.google.android.gms.internal.ads.bq bqVarI = I();
        if (bqVarI != null) {
            bqVarI.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ata b(ath athVar) {
        ata ataVar = null;
        Object objA = null;
        if (athVar instanceof asv) {
            asv asvVar = (asv) athVar;
            ataVar = new ata(asvVar.a(), asvVar.b(), asvVar.e(), asvVar.f(), asvVar.g(), asvVar.h(), -1.0d, null, null, asvVar.m(), asvVar.i(), asvVar.o(), asvVar.c(), asvVar.d(), asvVar.n());
            objA = asvVar.j() != null ? com.google.android.gms.b.b.a(asvVar.j()) : null;
        } else if (athVar instanceof ast) {
            ast astVar = (ast) athVar;
            ataVar = new ata(astVar.a(), astVar.b(), astVar.c(), astVar.d(), astVar.e(), null, astVar.f(), astVar.g(), astVar.h(), astVar.m(), astVar.i(), astVar.o(), astVar.p(), astVar.q(), astVar.n());
            objA = astVar.j() != null ? com.google.android.gms.b.b.a(astVar.j()) : null;
        }
        if (objA instanceof atj) {
            ataVar.a((atj) objA);
        }
        return ataVar;
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final String C() {
        return this.e.f3035b;
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.internal.ads.apf
    public final void H() {
        throw new IllegalStateException("Interstitial is NOT supported by NativeAdManager.");
    }

    public final com.google.android.gms.internal.ads.bq I() {
        com.google.android.gms.internal.ads.bq bqVar;
        synchronized (this.k) {
            bqVar = this.r;
        }
        return bqVar;
    }

    protected final Future<ath> J() {
        return this.m;
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final void K() {
        if (ac() && this.h != null) {
            qd qdVar = null;
            if (this.o != null) {
                qdVar = this.o;
            } else if (this.n != null) {
                qdVar = this.n;
            }
            if (qdVar != null) {
                qdVar.a("onSdkImpression", new HashMap());
            }
        }
    }

    public final void L() {
        if (this.e.j == null || this.n == null) {
            this.p = true;
            jd.e("Request to enable ActiveView before adState is available.");
        } else {
            aw.i().g().a(this.e.i, this.e.j, this.n.getView(), this.n);
            this.p = false;
        }
    }

    public final void M() {
        this.p = false;
        if (this.e.j == null || this.n == null) {
            jd.e("Request to enable ActiveView before adState is available.");
        } else {
            aw.i().g().a(this.e.j);
        }
    }

    public final android.support.v4.g.m<String, avm> N() {
        com.google.android.gms.common.internal.w.b("getOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        return this.e.v;
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final void O() {
        if (this.n != null) {
            this.n.destroy();
            this.n = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final void P() {
        super.F();
        if (this.o != null) {
            this.o.destroy();
            this.o = null;
        }
    }

    public final void Q() {
        if (this.n == null || this.n.b() == null || this.e.w == null || this.e.w.f == null) {
            return;
        }
        this.n.b().a(this.e.w.f);
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final boolean R() {
        if (ad() != null) {
            return ad().p;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final boolean S() {
        if (ad() != null) {
            return ad().q;
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.internal.ads.bbf
    public final void T() {
        if (this.e.j == null || !"com.google.ads.mediation.admob.AdMobAdapter".equals(this.e.j.q)) {
            super.T();
        } else {
            y();
        }
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.internal.ads.bbf
    public final void U() {
        if (this.e.j == null || !"com.google.ads.mediation.admob.AdMobAdapter".equals(this.e.j.q)) {
            super.U();
        } else {
            x();
        }
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.internal.ads.bbf
    public final void V() {
        aqf aqfVarH;
        ii iiVar = this.e.j;
        if (iiVar.p == null) {
            super.V();
            return;
        }
        try {
            bbx bbxVar = iiVar.p;
            aqc aqcVarC = null;
            bcg bcgVarH = bbxVar.h();
            if (bcgVarH != null) {
                aqcVarC = bcgVarH.m();
            } else {
                bck bckVarI = bbxVar.i();
                if (bckVarI != null) {
                    aqcVarC = bckVarI.l();
                } else {
                    auy auyVarN = bbxVar.n();
                    if (auyVarN != null) {
                        aqcVarC = auyVarN.c();
                    }
                }
            }
            if (aqcVarC == null || (aqfVarH = aqcVarC.h()) == null) {
                return;
            }
            aqfVarH.d();
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.internal.a
    protected final void a(int i) {
        a(i, false);
    }

    @Override // com.google.android.gms.ads.internal.a
    protected final void a(int i, boolean z) {
        ae();
        super.a(i, z);
    }

    protected final void a(com.google.android.gms.b.a aVar) {
        Object objA = aVar != null ? com.google.android.gms.b.b.a(aVar) : null;
        if (objA instanceof ate) {
            ((ate) objA).d();
        }
        super.b(this.e.j, false);
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final void a(asi asiVar) {
        throw new IllegalStateException("CustomRendering is NOT supported by NativeAdManager.");
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final void a(atc atcVar) {
        if (this.n != null) {
            this.n.a(atcVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final void a(ate ateVar) {
        if (this.e.j.k != null) {
            aw.i().g().a(this.e.i, this.e.j, new ajk(ateVar), (qd) null);
        }
    }

    @Override // com.google.android.gms.ads.internal.a
    public final void a(ij ijVar, asb asbVar) {
        if (ijVar.f5120d != null) {
            this.e.i = ijVar.f5120d;
        }
        if (ijVar.e != -2) {
            jm.f5184a.post(new ae(this, ijVar));
            return;
        }
        int i = ijVar.f5117a.Y;
        if (i == 1) {
            this.e.I = 0;
            ax axVar = this.e;
            aw.d();
            axVar.h = com.google.android.gms.internal.ads.ao.a(this.e.f3036c, this, ijVar, this.e.f3037d, null, this.j, this, asbVar);
            String strValueOf = String.valueOf(this.e.h.getClass().getName());
            jd.b(strValueOf.length() != 0 ? "AdRenderer: ".concat(strValueOf) : new String("AdRenderer: "));
            return;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            JSONArray jSONArray2 = new JSONObject(ijVar.f5118b.f5763b).getJSONArray("slots");
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                JSONArray jSONArray3 = jSONArray2.getJSONObject(i2).getJSONArray("ads");
                for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                    jSONArray.put(jSONArray3.get(i3));
                }
            }
            ae();
            ArrayList arrayList = new ArrayList();
            for (int i4 = 0; i4 < i; i4++) {
                arrayList.add(jk.a(new af(this, i4, jSONArray, i, ijVar)));
            }
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                try {
                    jm.f5184a.post(new ag(this, (ath) ((nd) arrayList.get(i5)).get(((Long) aoo.f().a(aro.bB)).longValue(), TimeUnit.MILLISECONDS), i5, arrayList));
                } catch (InterruptedException e) {
                    mj.c("", e);
                    Thread.currentThread().interrupt();
                } catch (CancellationException e2) {
                    e = e2;
                    mj.c("", e);
                } catch (ExecutionException e3) {
                    e = e3;
                    mj.c("", e);
                } catch (TimeoutException e4) {
                    e = e4;
                    mj.c("", e);
                }
            }
        } catch (JSONException e5) {
            jd.c("Malformed native ad response", e5);
            a(0);
        }
    }

    public final void a(qd qdVar) {
        this.n = qdVar;
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final void a(com.google.android.gms.internal.ads.y yVar) {
        throw new IllegalStateException("In App Purchase is NOT supported by NativeAdManager.");
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.ads.internal.a
    protected final boolean a(ii iiVar, ii iiVar2) {
        c((List<String>) null);
        if (!this.e.d()) {
            throw new IllegalStateException("Native ad DOES NOT have custom rendering mode.");
        }
        if (iiVar2.n) {
            ae();
            try {
                bcn bcnVarP = iiVar2.p != null ? iiVar2.p.p() : null;
                bcg bcgVarH = iiVar2.p != null ? iiVar2.p.h() : null;
                bck bckVarI = iiVar2.p != null ? iiVar2.p.i() : null;
                auy auyVarN = iiVar2.p != null ? iiVar2.p.n() : null;
                String strC = c(iiVar2);
                if (bcnVarP != null && this.e.t != null) {
                    ata ataVar = new ata(bcnVarP.a(), bcnVarP.b(), bcnVarP.c(), bcnVarP.d() != null ? bcnVarP.d() : null, bcnVarP.e(), bcnVarP.f(), bcnVarP.g(), bcnVarP.h(), bcnVarP.i(), null, bcnVarP.j(), bcnVarP.m() != null ? (View) com.google.android.gms.b.b.a(bcnVarP.m()) : null, bcnVarP.n(), strC, bcnVarP.o());
                    ataVar.a(new atd(this.e.f3036c, this, this.e.f3037d, bcnVarP, ataVar));
                    a(ataVar);
                } else if (bcgVarH != null && this.e.t != null) {
                    ata ataVar2 = new ata(bcgVarH.a(), bcgVarH.b(), bcgVarH.c(), bcgVarH.d() != null ? bcgVarH.d() : null, bcgVarH.e(), null, bcgVarH.f(), bcgVarH.g(), bcgVarH.h(), null, bcgVarH.m(), bcgVarH.p() != null ? (View) com.google.android.gms.b.b.a(bcgVarH.p()) : null, bcgVarH.q(), strC, bcgVarH.l());
                    ataVar2.a(new atd(this.e.f3036c, this, this.e.f3037d, bcgVarH, ataVar2));
                    a(ataVar2);
                } else if (bcgVarH != null && this.e.r != null) {
                    ast astVar = new ast(bcgVarH.a(), bcgVarH.b(), bcgVarH.c(), bcgVarH.d() != null ? bcgVarH.d() : null, bcgVarH.e(), bcgVarH.f(), bcgVarH.g(), bcgVarH.h(), null, bcgVarH.l(), bcgVarH.m(), bcgVarH.p() != null ? (View) com.google.android.gms.b.b.a(bcgVarH.p()) : null, bcgVarH.q(), strC);
                    astVar.a(new atd(this.e.f3036c, this, this.e.f3037d, bcgVarH, astVar));
                    a(astVar);
                } else if (bckVarI != null && this.e.t != null) {
                    ata ataVar3 = new ata(bckVarI.a(), bckVarI.b(), bckVarI.c(), bckVarI.d() != null ? bckVarI.d() : null, bckVarI.e(), bckVarI.f(), -1.0d, null, null, null, bckVarI.l(), bckVarI.n() != null ? (View) com.google.android.gms.b.b.a(bckVarI.n()) : null, bckVarI.o(), strC, bckVarI.j());
                    ataVar3.a(new atd(this.e.f3036c, this, this.e.f3037d, bckVarI, ataVar3));
                    a(ataVar3);
                } else if (bckVarI != null && this.e.s != null) {
                    asv asvVar = new asv(bckVarI.a(), bckVarI.b(), bckVarI.c(), bckVarI.d() != null ? bckVarI.d() : null, bckVarI.e(), bckVarI.f(), null, bckVarI.j(), bckVarI.l(), bckVarI.n() != null ? (View) com.google.android.gms.b.b.a(bckVarI.n()) : null, bckVarI.o(), strC);
                    asvVar.a(new atd(this.e.f3036c, this, this.e.f3037d, bckVarI, asvVar));
                    a(asvVar);
                } else {
                    if (auyVarN == null || this.e.v == null || this.e.v.get(auyVarN.l()) == null) {
                        jd.e("No matching mapper/listener for retrieved native ad template.");
                        a(0);
                        return false;
                    }
                    jm.f5184a.post(new al(this, auyVarN));
                }
            } catch (RemoteException e) {
                jd.d("#007 Could not call remote method.", e);
            }
        } else {
            ath athVar = iiVar2.C;
            if (this.l) {
                this.m.b(athVar);
            } else if ((athVar instanceof asv) && this.e.t != null) {
                a(b(iiVar2.C));
            } else if ((athVar instanceof asv) && this.e.s != null) {
                a((asv) iiVar2.C);
            } else if ((athVar instanceof ast) && this.e.t != null) {
                a(b(iiVar2.C));
            } else if ((athVar instanceof ast) && this.e.r != null) {
                a((ast) iiVar2.C);
            } else {
                if (!(athVar instanceof asx) || this.e.v == null || this.e.v.get(((asx) athVar).l()) == null) {
                    jd.e("No matching listener for retrieved native ad template.");
                    a(0);
                    return false;
                }
                jm.f5184a.post(new ak(this, ((asx) athVar).l(), iiVar2));
            }
        }
        return super.a(iiVar, iiVar2);
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.ads.internal.a
    public final boolean a(zzjj zzjjVar, asb asbVar) {
        try {
            j_();
            return super.a(zzjjVar, asbVar, this.q);
        } catch (Exception e) {
            if (mj.a(4)) {
                Log.i(AdRequest.LOGTAG, "Error initializing webview.", e);
            }
            return false;
        }
    }

    @Override // com.google.android.gms.ads.internal.ba
    protected final boolean a(zzjj zzjjVar, ii iiVar, boolean z) {
        return this.f2984d.e();
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final avj b(String str) {
        com.google.android.gms.common.internal.w.b("getOnCustomClickListener must be called on the main UI thread.");
        if (this.e.u == null) {
            return null;
        }
        return this.e.u.get(str);
    }

    public final void b(int i) {
        com.google.android.gms.common.internal.w.b("setMaxNumberOfAds must be called on the main UI thread.");
        this.q = i;
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final void b(View view) {
        if (this.h != null) {
            aw.u().a(this.h, view);
        }
    }

    public final void b(qd qdVar) {
        this.o = qdVar;
    }

    public final void c(List<String> list) {
        com.google.android.gms.common.internal.w.b("setNativeTemplates must be called on the main UI thread.");
        this.e.F = list;
    }

    @Override // com.google.android.gms.ads.internal.a
    protected final void d(boolean z) {
        qd qdVar;
        String str = null;
        super.d(z);
        if (this.p) {
            if (((Boolean) aoo.f().a(aro.cg)).booleanValue()) {
                L();
            }
        }
        if (ac()) {
            if (this.o == null && this.n == null) {
                return;
            }
            if (this.o != null) {
                qdVar = this.o;
            } else if (this.n != null) {
                str = "javascript";
                qdVar = this.n;
            } else {
                qdVar = null;
            }
            if (qdVar.getWebView() == null || !aw.u().a(this.e.f3036c)) {
                return;
            }
            this.h = aw.u().a(new StringBuilder(23).append(this.e.e.f5785b).append(".").append(this.e.e.f5786c).toString(), qdVar.getWebView(), "", "javascript", str);
            if (this.h != null) {
                aw.u().a(this.h);
            }
        }
    }

    public final String i_() {
        return this.s;
    }

    final void j_() throws qo {
        synchronized (this.k) {
            jd.a("Initializing webview native ads utills");
            this.r = new com.google.android.gms.internal.ads.bu(this.e.f3036c, this, this.s, this.e.f3037d, this.e.e);
        }
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final void n() {
        throw new IllegalStateException("Native Ad DOES NOT support pause().");
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final void o() {
        throw new IllegalStateException("Native Ad DOES NOT support resume().");
    }

    @Override // com.google.android.gms.ads.internal.a
    protected final void w() {
        d(false);
    }
}
