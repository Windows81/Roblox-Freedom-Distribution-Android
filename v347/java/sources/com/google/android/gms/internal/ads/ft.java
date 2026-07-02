package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import java.util.Arrays;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ft extends com.google.android.gms.ads.internal.ba implements gv {
    private static ft k;
    private boolean l;
    private boolean m;
    private final hx n;
    private final fq o;

    public ft(Context context, com.google.android.gms.ads.internal.bt btVar, zzjn zzjnVar, bbu bbuVar, zzang zzangVar) {
        super(context, zzjnVar, null, bbuVar, zzangVar, btVar);
        k = this;
        this.n = new hx(context, null);
        this.o = new fq(this.e, this.j, this, this, this);
    }

    public static ft I() {
        return k;
    }

    private static ij b(ij ijVar) {
        jd.a("Creating mediation ad response for non-mediated rewarded ad.");
        try {
            JSONObject jSONObjectA = et.a(ijVar.f5118b);
            jSONObjectA.remove("impression_urls");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ijVar.f5117a.e);
            return new ij(ijVar.f5117a, ijVar.f5118b, new bbe(Arrays.asList(new bbd(jSONObjectA.toString(), null, Arrays.asList("com.google.ads.mediation.admob.AdMobAdapter"), null, null, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), jSONObject.toString(), null, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, null, null, null, Collections.emptyList(), null, -1L)), ((Long) aoo.f().a(aro.bB)).longValue(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), false, "", -1L, 0, 1, null, 0, -1, -1L, false), ijVar.f5120d, ijVar.e, ijVar.f, ijVar.g, ijVar.h, ijVar.i, null);
        } catch (JSONException e) {
            jd.b("Unable to generate ad state for non-mediated rewarded video.", e);
            return new ij(ijVar.f5117a, ijVar.f5118b, null, ijVar.f5120d, 0, ijVar.f, ijVar.g, ijVar.h, ijVar.i, null);
        }
    }

    public final void J() {
        com.google.android.gms.common.internal.w.b("showAd must be called on the main UI thread.");
        if (K()) {
            this.o.a(this.m);
        } else {
            jd.e("The reward video has not loaded.");
        }
    }

    public final boolean K() {
        com.google.android.gms.common.internal.w.b("isLoaded must be called on the main UI thread.");
        return this.e.g == null && this.e.h == null && this.e.j != null;
    }

    public final void a(Context context) {
        this.o.a(context);
    }

    @Override // com.google.android.gms.ads.internal.a
    public final void a(ij ijVar, asb asbVar) {
        if (ijVar.e != -2) {
            jm.f5184a.post(new fv(this, ijVar));
            return;
        }
        this.e.k = ijVar;
        if (ijVar.f5119c == null) {
            this.e.k = b(ijVar);
        }
        this.o.c();
    }

    public final void a(zzahk zzahkVar) {
        com.google.android.gms.common.internal.w.b("loadAd must be called on the main UI thread.");
        if (TextUtils.isEmpty(zzahkVar.f5777b)) {
            jd.e("Invalid ad unit id. Aborting.");
            jm.f5184a.post(new fu(this));
            return;
        }
        this.l = false;
        this.e.f3035b = zzahkVar.f5777b;
        this.n.a(zzahkVar.f5777b);
        super.b(zzahkVar.f5776a);
    }

    @Override // com.google.android.gms.internal.ads.gv
    public final void a(zzaig zzaigVar) {
        zzaig zzaigVarA = this.o.a(zzaigVar);
        if (com.google.android.gms.ads.internal.aw.B().e(this.e.f3036c) && zzaigVarA != null) {
            com.google.android.gms.ads.internal.aw.B().a(this.e.f3036c, com.google.android.gms.ads.internal.aw.B().j(this.e.f3036c), this.e.f3035b, zzaigVarA.f5778a, zzaigVarA.f5779b);
        }
        b(zzaigVarA);
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.ads.internal.a
    public final boolean a(ii iiVar, ii iiVar2) {
        b(iiVar2, false);
        return fq.a(iiVar, iiVar2);
    }

    @Override // com.google.android.gms.ads.internal.ba
    protected final boolean a(zzjj zzjjVar, ii iiVar, boolean z) {
        return false;
    }

    public final hd b(String str) {
        return this.o.a(str);
    }

    @Override // com.google.android.gms.internal.ads.gv
    public final void b() {
        this.o.g();
        z();
    }

    @Override // com.google.android.gms.internal.ads.gv
    public final void c() {
        if (com.google.android.gms.ads.internal.aw.B().e(this.e.f3036c)) {
            this.n.a(false);
        }
        t();
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final void c(boolean z) {
        com.google.android.gms.common.internal.w.b("setImmersiveMode must be called on the main UI thread.");
        this.m = z;
    }

    @Override // com.google.android.gms.internal.ads.gv
    public final void f() {
        this.o.h();
        A();
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final void i() {
        this.o.f();
        super.i();
    }

    @Override // com.google.android.gms.internal.ads.gv
    public final void k_() {
        if (com.google.android.gms.ads.internal.aw.B().e(this.e.f3036c)) {
            this.n.a(true);
        }
        a(this.e.j, false);
        v();
    }

    @Override // com.google.android.gms.internal.ads.gv
    public final void l_() {
        onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.gv
    public final void m_() {
        u();
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final void n() {
        this.o.d();
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final void o() {
        this.o.e();
    }

    @Override // com.google.android.gms.ads.internal.a
    protected final void t() {
        this.e.j = null;
        super.t();
    }
}
