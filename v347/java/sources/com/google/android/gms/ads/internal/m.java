package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.Window;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.akf;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.asb;
import com.google.android.gms.internal.ads.bbd;
import com.google.android.gms.internal.ads.bbe;
import com.google.android.gms.internal.ads.bbu;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.et;
import com.google.android.gms.internal.ads.fq;
import com.google.android.gms.internal.ads.ht;
import com.google.android.gms.internal.ads.hx;
import com.google.android.gms.internal.ads.ii;
import com.google.android.gms.internal.ads.ij;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jm;
import com.google.android.gms.internal.ads.js;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.qk;
import com.google.android.gms.internal.ads.qo;
import com.google.android.gms.internal.ads.rl;
import com.google.android.gms.internal.ads.ro;
import com.google.android.gms.internal.ads.rr;
import com.google.android.gms.internal.ads.zzaej;
import com.google.android.gms.internal.ads.zzaig;
import com.google.android.gms.internal.ads.zzang;
import com.google.android.gms.internal.ads.zzjj;
import com.google.android.gms.internal.ads.zzjn;
import java.util.Collections;
import java.util.HashMap;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class m extends bf implements com.google.android.gms.ads.internal.gmsg.ai, com.google.android.gms.ads.internal.gmsg.j {
    private transient boolean k;
    private int l;
    private boolean m;
    private float n;
    private boolean o;
    private hx p;
    private String q;
    private final String r;
    private final fq s;

    public m(Context context, zzjn zzjnVar, String str, bbu bbuVar, zzang zzangVar, bt btVar) {
        super(context, zzjnVar, str, bbuVar, zzangVar, btVar);
        this.l = -1;
        this.k = false;
        boolean z = zzjnVar != null && "reward_mb".equals(zzjnVar.f5803a);
        this.r = z ? "/Rewarded" : "/Interstitial";
        this.s = z ? new fq(this.e, this.j, new o(this), this, this) : null;
    }

    private final void a(Bundle bundle) {
        aw.e().b(this.e.f3036c, this.e.e.f5784a, "gmob-apps", bundle, false);
    }

    private static ij b(ij ijVar) {
        try {
            String string = et.a(ijVar.f5118b).toString();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ijVar.f5117a.e);
            bbd bbdVar = new bbd(string, null, Collections.singletonList("com.google.ads.mediation.admob.AdMobAdapter"), null, null, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), jSONObject.toString(), null, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, null, null, null, Collections.emptyList(), null, -1L);
            zzaej zzaejVar = ijVar.f5118b;
            bbe bbeVar = new bbe(Collections.singletonList(bbdVar), ((Long) aoo.f().a(aro.bB)).longValue(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), zzaejVar.H, zzaejVar.I, "", -1L, 0, 1, null, 0, -1, -1L, false);
            return new ij(ijVar.f5117a, new zzaej(ijVar.f5117a, zzaejVar.f5762a, zzaejVar.f5763b, Collections.emptyList(), Collections.emptyList(), zzaejVar.f, true, zzaejVar.h, Collections.emptyList(), zzaejVar.j, zzaejVar.k, zzaejVar.l, zzaejVar.m, zzaejVar.n, zzaejVar.o, zzaejVar.p, null, zzaejVar.r, zzaejVar.s, zzaejVar.t, zzaejVar.u, zzaejVar.v, zzaejVar.x, zzaejVar.y, zzaejVar.z, null, Collections.emptyList(), Collections.emptyList(), zzaejVar.D, zzaejVar.E, zzaejVar.F, zzaejVar.G, zzaejVar.H, zzaejVar.I, zzaejVar.J, null, zzaejVar.L, zzaejVar.M, zzaejVar.N, zzaejVar.O, 0, zzaejVar.Q, Collections.emptyList(), zzaejVar.S, zzaejVar.T), bbeVar, ijVar.f5120d, ijVar.e, ijVar.f, ijVar.g, null, ijVar.i, null);
        } catch (JSONException e) {
            jd.b("Unable to generate ad state for an interstitial ad with pooling.", e);
            return ijVar;
        }
    }

    private final boolean e(boolean z) {
        return this.s != null && z;
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.internal.ads.apf
    public final void H() {
        Bitmap bitmapH;
        com.google.android.gms.common.internal.w.b("showInterstitial must be called on the main UI thread.");
        if (e(this.e.j != null && this.e.j.n)) {
            this.s.a(this.o);
            return;
        }
        if (aw.B().d(this.e.f3036c)) {
            this.q = aw.B().g(this.e.f3036c);
            String strValueOf = String.valueOf(this.q);
            String strValueOf2 = String.valueOf(this.r);
            this.q = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
        }
        if (this.e.j == null) {
            jd.e("The interstitial has not loaded.");
            return;
        }
        if (((Boolean) aoo.f().a(aro.br)).booleanValue()) {
            String packageName = this.e.f3036c.getApplicationContext() != null ? this.e.f3036c.getApplicationContext().getPackageName() : this.e.f3036c.getPackageName();
            if (!this.k) {
                jd.e("It is not recommended to show an interstitial before onAdLoaded completes.");
                Bundle bundle = new Bundle();
                bundle.putString("appid", packageName);
                bundle.putString("action", "show_interstitial_before_load_finish");
                a(bundle);
            }
            aw.e();
            if (!jm.g(this.e.f3036c)) {
                jd.e("It is not recommended to show an interstitial when app is not in foreground.");
                Bundle bundle2 = new Bundle();
                bundle2.putString("appid", packageName);
                bundle2.putString("action", "show_interstitial_app_not_in_foreground");
                a(bundle2);
            }
        }
        if (this.e.e()) {
            return;
        }
        if (this.e.j.n && this.e.j.p != null) {
            try {
                if (((Boolean) aoo.f().a(aro.aQ)).booleanValue()) {
                    this.e.j.p.a(this.o);
                }
                this.e.j.p.b();
                return;
            } catch (RemoteException e) {
                jd.c("Could not show interstitial.", e);
                J();
                return;
            }
        }
        if (this.e.j.f5114b == null) {
            jd.e("The interstitial failed to load.");
            return;
        }
        if (this.e.j.f5114b.z()) {
            jd.e("The interstitial is already showing.");
            return;
        }
        this.e.j.f5114b.b(true);
        this.e.a(this.e.j.f5114b.getView());
        if (this.e.j.k != null) {
            this.g.a(this.e.i, this.e.j);
        }
        if (com.google.android.gms.common.util.n.b()) {
            final ii iiVar = this.e.j;
            if (iiVar.a()) {
                new akf(this.e.f3036c, iiVar.f5114b.getView()).a(iiVar.f5114b);
            } else {
                iiVar.f5114b.v().a(new ro(this, iiVar) { // from class: com.google.android.gms.ads.internal.n

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    private final m f3148a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    private final ii f3149b;

                    {
                        this.f3148a = this;
                        this.f3149b = iiVar;
                    }

                    @Override // com.google.android.gms.internal.ads.ro
                    public final void a() {
                        m mVar = this.f3148a;
                        ii iiVar2 = this.f3149b;
                        new akf(mVar.e.f3036c, iiVar2.f5114b.getView()).a(iiVar2.f5114b);
                    }
                });
            }
        }
        if (this.e.J) {
            aw.e();
            bitmapH = jm.h(this.e.f3036c);
        } else {
            bitmapH = null;
        }
        this.l = aw.y().a(bitmapH);
        if (((Boolean) aoo.f().a(aro.bR)).booleanValue() && bitmapH != null) {
            new p(this, this.l).h();
            return;
        }
        zzaq zzaqVar = new zzaq(this.e.J, I(), false, 0.0f, -1, this.o, this.e.j.L, this.e.j.O);
        int requestedOrientation = this.e.j.f5114b.getRequestedOrientation();
        if (requestedOrientation == -1) {
            requestedOrientation = this.e.j.h;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = new AdOverlayInfoParcel(this, this, this, this.e.j.f5114b, requestedOrientation, this.e.e, this.e.j.A, zzaqVar);
        aw.c();
        com.google.android.gms.ads.internal.overlay.k.a(this.e.f3036c, adOverlayInfoParcel, true);
    }

    protected final boolean I() {
        if (!(this.e.f3036c instanceof Activity)) {
            return false;
        }
        Window window = ((Activity) this.e.f3036c).getWindow();
        if (window == null || window.getDecorView() == null) {
            return false;
        }
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        window.getDecorView().getGlobalVisibleRect(rect, null);
        window.getDecorView().getWindowVisibleDisplayFrame(rect2);
        return (rect.bottom == 0 || rect2.bottom == 0 || rect.top != rect2.top) ? false : true;
    }

    public final void J() {
        aw.y().b(Integer.valueOf(this.l));
        if (this.e.d()) {
            this.e.b();
            this.e.j = null;
            this.e.J = false;
            this.k = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.o
    public final void K() {
        com.google.android.gms.ads.internal.overlay.c cVarR = this.e.j.f5114b.r();
        if (cVarR != null) {
            cVarR.a();
        }
    }

    @Override // com.google.android.gms.ads.internal.bf
    protected final qd a(ij ijVar, bu buVar, ht htVar) throws qo {
        aw.f();
        qd qdVarA = qk.a(this.e.f3036c, rr.a(this.e.i), this.e.i.f5803a, false, false, this.e.f3037d, this.e.e, this.f2981a, this, this.i, ijVar.i);
        qdVarA.v().a(this, this, null, this, this, ((Boolean) aoo.f().a(aro.ai)).booleanValue(), this, buVar, this, htVar);
        a(qdVarA);
        qdVarA.a(ijVar.f5117a.v);
        qdVarA.a("/reward", new com.google.android.gms.ads.internal.gmsg.i(this));
        return qdVarA;
    }

    @Override // com.google.android.gms.ads.internal.bf, com.google.android.gms.ads.internal.a
    public final void a(ij ijVar, asb asbVar) {
        if (ijVar.e != -2) {
            super.a(ijVar, asbVar);
            return;
        }
        if (e(ijVar.f5119c != null)) {
            this.s.c();
            return;
        }
        if (!((Boolean) aoo.f().a(aro.aT)).booleanValue()) {
            super.a(ijVar, asbVar);
            return;
        }
        boolean z = ijVar.f5118b.g ? false : true;
        if (a(ijVar.f5117a.f5760c) && z) {
            this.e.k = b(ijVar);
        }
        super.a(this.e.k, asbVar);
    }

    @Override // com.google.android.gms.ads.internal.gmsg.j
    public final void a(zzaig zzaigVar) {
        if (e(this.e.j != null && this.e.j.n)) {
            b(this.s.a(zzaigVar));
            return;
        }
        if (this.e.j != null) {
            if (this.e.j.x != null) {
                aw.e();
                jm.a(this.e.f3036c, this.e.e.f5784a, this.e.j.x);
            }
            if (this.e.j.v != null) {
                zzaigVar = this.e.j.v;
            }
        }
        b(zzaigVar);
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ai
    public final void a(boolean z) {
        this.e.J = z;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ai
    public final void a(boolean z, float f) {
        this.m = z;
        this.n = f;
    }

    @Override // com.google.android.gms.ads.internal.bf, com.google.android.gms.ads.internal.ba, com.google.android.gms.ads.internal.a
    public final boolean a(ii iiVar, ii iiVar2) {
        if (e(iiVar2.n)) {
            return fq.a(iiVar, iiVar2);
        }
        if (!super.a(iiVar, iiVar2)) {
            return false;
        }
        if (!this.e.d() && this.e.H != null && iiVar2.k != null) {
            this.g.a(this.e.i, iiVar2, this.e.H);
        }
        b(iiVar2, false);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.ads.internal.a
    public final boolean a(zzjj zzjjVar, asb asbVar) {
        if (this.e.j != null) {
            jd.e("An interstitial is already loading. Aborting.");
            return false;
        }
        if (this.p == null && a(zzjjVar) && aw.B().d(this.e.f3036c) && !TextUtils.isEmpty(this.e.f3035b)) {
            this.p = new hx(this.e.f3036c, this.e.f3035b);
        }
        return super.a(zzjjVar, asbVar);
    }

    @Override // com.google.android.gms.ads.internal.ba
    protected final boolean a(zzjj zzjjVar, ii iiVar, boolean z) {
        if (this.e.d() && iiVar.f5114b != null) {
            aw.g();
            js.a(iiVar.f5114b);
        }
        return this.f2984d.e();
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final void c(boolean z) {
        com.google.android.gms.common.internal.w.b("setImmersiveMode must be called on the main UI thread.");
        this.o = z;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.j
    public final void c_() {
        if (e(this.e.j != null && this.e.j.n)) {
            this.s.g();
            z();
            return;
        }
        if (this.e.j != null && this.e.j.w != null) {
            aw.e();
            jm.a(this.e.f3036c, this.e.e.f5784a, this.e.j.w);
        }
        z();
    }

    @Override // com.google.android.gms.ads.internal.gmsg.j
    public final void d_() {
        if (e(this.e.j != null && this.e.j.n)) {
            this.s.h();
        }
        A();
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.ads.internal.overlay.m
    public final void n_() {
        super.n_();
        this.g.a(this.e.j);
        if (this.p != null) {
            this.p.a(false);
        }
        F();
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.ads.internal.overlay.m
    public final void o_() {
        rl rlVarV;
        ab();
        super.o_();
        if (this.e.j != null && this.e.j.f5114b != null && (rlVarV = this.e.j.f5114b.v()) != null) {
            rlVarV.g();
        }
        if (aw.B().d(this.e.f3036c) && this.e.j != null && this.e.j.f5114b != null) {
            aw.B().c(this.e.j.f5114b.getContext(), this.q);
        }
        if (this.p != null) {
            this.p.a(true);
        }
        if (this.h == null || this.e.j == null || this.e.j.f5114b == null) {
            return;
        }
        this.e.j.f5114b.a("onSdkImpression", new HashMap());
    }

    @Override // com.google.android.gms.ads.internal.a
    protected final void t() {
        J();
        super.t();
    }

    @Override // com.google.android.gms.ads.internal.bf, com.google.android.gms.ads.internal.a
    protected final void w() {
        qd qdVar = this.e.j != null ? this.e.j.f5114b : null;
        ij ijVar = this.e.k;
        if (ijVar != null && ijVar.f5118b != null && ijVar.f5118b.Q && qdVar != null && aw.u().a(this.e.f3036c)) {
            this.h = aw.u().a(new StringBuilder(23).append(this.e.e.f5785b).append(".").append(this.e.e.f5786c).toString(), qdVar.getWebView(), "", "javascript", G());
            if (this.h != null && qdVar.getView() != null) {
                aw.u().a(this.h, qdVar.getView());
                aw.u().a(this.h);
            }
        }
        super.w();
        this.k = true;
    }
}
