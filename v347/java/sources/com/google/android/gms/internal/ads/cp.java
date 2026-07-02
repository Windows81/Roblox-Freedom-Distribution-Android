package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.amk;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class cp extends iy implements dc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("mCancelLock")
    kf f4906a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final co f4907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final dl f4908c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f4909d = new Object();
    private final Context e;
    private final ami f;
    private final amn g;
    private zzaef h;
    private Runnable i;
    private zzaej j;
    private bbe k;

    public cp(Context context, dl dlVar, co coVar, amn amnVar) {
        this.f4907b = coVar;
        this.e = context;
        this.f4908c = dlVar;
        this.g = amnVar;
        this.f = new ami(this.g);
        this.f.a(new amj(this) { // from class: com.google.android.gms.internal.ads.cq

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final cp f4910a;

            {
                this.f4910a = this;
            }

            @Override // com.google.android.gms.internal.ads.amj
            public final void a(amz amzVar) {
                this.f4910a.b(amzVar);
            }
        });
        final ank ankVar = new ank();
        ankVar.f4278a = Integer.valueOf(this.f4908c.j.f5785b);
        ankVar.f4279b = Integer.valueOf(this.f4908c.j.f5786c);
        ankVar.f4280c = Integer.valueOf(this.f4908c.j.f5787d ? 0 : 2);
        this.f.a(new amj(ankVar) { // from class: com.google.android.gms.internal.ads.cr

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final ank f4911a;

            {
                this.f4911a = ankVar;
            }

            @Override // com.google.android.gms.internal.ads.amj
            public final void a(amz amzVar) {
                amzVar.f4246c.f4237b = this.f4911a;
            }
        });
        if (this.f4908c.f != null) {
            this.f.a(new amj(this) { // from class: com.google.android.gms.internal.ads.cs

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final cp f4912a;

                {
                    this.f4912a = this;
                }

                @Override // com.google.android.gms.internal.ads.amj
                public final void a(amz amzVar) {
                    this.f4912a.a(amzVar);
                }
            });
        }
        zzjn zzjnVar = this.f4908c.f4941c;
        if (zzjnVar.f5806d && "interstitial_mb".equals(zzjnVar.f5803a)) {
            this.f.a(ct.f4913a);
        } else if (zzjnVar.f5806d && "reward_mb".equals(zzjnVar.f5803a)) {
            this.f.a(cu.f4914a);
        } else if (zzjnVar.h || zzjnVar.f5806d) {
            this.f.a(cw.f4916a);
        } else {
            this.f.a(cv.f4915a);
        }
        this.f.a(amk.a.b.AD_REQUEST);
    }

    private final zzjn a(zzaef zzaefVar) throws cz {
        if (((this.h == null || this.h.V == null || this.h.V.size() <= 1) ? false : true) && this.k != null && !this.k.t) {
            return null;
        }
        if (this.j.y) {
            for (zzjn zzjnVar : zzaefVar.f5761d.g) {
                if (zzjnVar.i) {
                    return new zzjn(zzjnVar, zzaefVar.f5761d.g);
                }
            }
        }
        if (this.j.l == null) {
            throw new cz("The ad response must specify one of the supported ad sizes.", 0);
        }
        String[] strArrSplit = this.j.l.split("x");
        if (strArrSplit.length != 2) {
            String strValueOf = String.valueOf(this.j.l);
            throw new cz(strValueOf.length() != 0 ? "Invalid ad size format from the ad response: ".concat(strValueOf) : new String("Invalid ad size format from the ad response: "), 0);
        }
        try {
            int i = Integer.parseInt(strArrSplit[0]);
            int i2 = Integer.parseInt(strArrSplit[1]);
            for (zzjn zzjnVar2 : zzaefVar.f5761d.g) {
                float f = this.e.getResources().getDisplayMetrics().density;
                int i3 = zzjnVar2.e == -1 ? (int) (zzjnVar2.f / f) : zzjnVar2.e;
                int i4 = zzjnVar2.f5804b == -2 ? (int) (zzjnVar2.f5805c / f) : zzjnVar2.f5804b;
                if (i == i3 && i2 == i4 && !zzjnVar2.i) {
                    return new zzjn(zzjnVar2, zzaefVar.f5761d.g);
                }
            }
            String strValueOf2 = String.valueOf(this.j.l);
            throw new cz(strValueOf2.length() != 0 ? "The ad size from the ad response was not one of the requested sizes: ".concat(strValueOf2) : new String("The ad size from the ad response was not one of the requested sizes: "), 0);
        } catch (NumberFormatException e) {
            String strValueOf3 = String.valueOf(this.j.l);
            throw new cz(strValueOf3.length() != 0 ? "Invalid ad size number from the ad response: ".concat(strValueOf3) : new String("Invalid ad size number from the ad response: "), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(int i, String str) {
        if (i == 3 || i == -1) {
            jd.d(str);
        } else {
            jd.e(str);
        }
        if (this.j == null) {
            this.j = new zzaej(i);
        } else {
            this.j = new zzaej(i, this.j.j);
        }
        this.f4907b.a(new ij(this.h != null ? this.h : new zzaef(this.f4908c, -1L, null, null, null), this.j, this.k, null, i, -1L, this.j.m, null, this.f, null));
    }

    final kf a(zzang zzangVar, nq<zzaef> nqVar) {
        Context context = this.e;
        if (new db(context).a(zzangVar)) {
            jd.b("Fetching ad response from local ad request service.");
            di diVar = new di(context, nqVar, this);
            diVar.c();
            return diVar;
        }
        jd.b("Fetching ad response from remote ad request service.");
        aoo.a();
        if (ly.c(context)) {
            return new dj(context, zzangVar, nqVar, this);
        }
        jd.e("Failed to connect to remote ad request service.");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void a() {
        String string;
        jd.b("AdLoaderBackgroundTask started.");
        this.i = new cx(this);
        jm.f5184a.postDelayed(this.i, ((Long) aoo.f().a(aro.bA)).longValue());
        long jB = com.google.android.gms.ads.internal.aw.l().b();
        if (((Boolean) aoo.f().a(aro.by)).booleanValue() && this.f4908c.f4940b.f5801c != null && (string = this.f4908c.f4940b.f5801c.getString("_ad")) != null) {
            this.h = new zzaef(this.f4908c, jB, null, null, null);
            a(et.a(this.e, this.h, string));
            return;
        }
        nu nuVar = new nu();
        jk.a(new cy(this, nuVar));
        String strH = com.google.android.gms.ads.internal.aw.B().h(this.e);
        String strI = com.google.android.gms.ads.internal.aw.B().i(this.e);
        String strJ = com.google.android.gms.ads.internal.aw.B().j(this.e);
        com.google.android.gms.ads.internal.aw.B().f(this.e, strJ);
        this.h = new zzaef(this.f4908c, jB, strH, strI, strJ);
        nuVar.a(this.h);
    }

    final /* synthetic */ void a(amz amzVar) {
        amzVar.f4246c.f4236a = this.f4908c.f.packageName;
    }

    @Override // com.google.android.gms.internal.ads.dc
    public final void a(zzaej zzaejVar) {
        JSONObject jSONObject;
        Bundle bundle;
        Boolean bool = null;
        jd.b("Received ad response.");
        this.j = zzaejVar;
        long jB = com.google.android.gms.ads.internal.aw.l().b();
        synchronized (this.f4909d) {
            this.f4906a = null;
        }
        com.google.android.gms.ads.internal.aw.i().l().d(this.j.F);
        if (((Boolean) aoo.f().a(aro.aT)).booleanValue()) {
            if (this.j.N) {
                com.google.android.gms.ads.internal.aw.i().l().c(this.h.e);
            } else {
                com.google.android.gms.ads.internal.aw.i().l().d(this.h.e);
            }
        }
        try {
            if (this.j.f5765d != -2 && this.j.f5765d != -3) {
                throw new cz(new StringBuilder(66).append("There was a problem getting an ad response. ErrorCode: ").append(this.j.f5765d).toString(), this.j.f5765d);
            }
            if (this.j.f5765d != -3) {
                if (TextUtils.isEmpty(this.j.f5763b)) {
                    throw new cz("No fill from ad server.", 3);
                }
                com.google.android.gms.ads.internal.aw.i().l().a(this.j.t);
                if (this.j.g) {
                    try {
                        this.k = new bbe(this.j.f5763b);
                        com.google.android.gms.ads.internal.aw.i().a(this.k.h);
                    } catch (JSONException e) {
                        jd.b("Could not parse mediation config.", e);
                        String strValueOf = String.valueOf(this.j.f5763b);
                        throw new cz(strValueOf.length() != 0 ? "Could not parse mediation config: ".concat(strValueOf) : new String("Could not parse mediation config: "), 0);
                    }
                } else {
                    com.google.android.gms.ads.internal.aw.i().a(this.j.I);
                }
                if (!TextUtils.isEmpty(this.j.G)) {
                    if (((Boolean) aoo.f().a(aro.cC)).booleanValue()) {
                        jd.b("Received cookie from server. Setting webview cookie in CookieManager.");
                        CookieManager cookieManagerC = com.google.android.gms.ads.internal.aw.g().c(this.e);
                        if (cookieManagerC != null) {
                            cookieManagerC.setCookie("googleads.g.doubleclick.net", this.j.G);
                        }
                    }
                }
            }
            zzjn zzjnVarA = this.h.f5761d.g != null ? a(this.h) : null;
            com.google.android.gms.ads.internal.aw.i().l().b(this.j.u);
            com.google.android.gms.ads.internal.aw.i().l().c(this.j.M);
            if (TextUtils.isEmpty(this.j.q)) {
                jSONObject = null;
            } else {
                try {
                    jSONObject = new JSONObject(this.j.q);
                } catch (Exception e2) {
                    jd.b("Error parsing the JSON for Active View.", e2);
                    jSONObject = null;
                }
            }
            if (this.j.P == 2) {
                zzjj zzjjVar = this.h.f5760c;
                Bundle bundle2 = zzjjVar.m != null ? zzjjVar.m : new Bundle();
                if (bundle2.getBundle(AdMobAdapter.class.getName()) != null) {
                    bundle = bundle2.getBundle(AdMobAdapter.class.getName());
                } else {
                    Bundle bundle3 = new Bundle();
                    bundle2.putBundle(AdMobAdapter.class.getName(), bundle3);
                    bundle = bundle3;
                }
                bundle.putBoolean("render_test_label", true);
                bool = true;
            }
            if (this.j.P == 1) {
                bool = false;
            }
            this.f4907b.a(new ij(this.h, this.j, this.k, zzjnVarA, -2, jB, this.j.m, jSONObject, this.f, this.j.P == 0 ? Boolean.valueOf(lq.a(this.h.f5760c)) : bool));
            jm.f5184a.removeCallbacks(this.i);
        } catch (cz e3) {
            a(e3.a(), e3.getMessage());
            jm.f5184a.removeCallbacks(this.i);
        }
    }

    final /* synthetic */ void b(amz amzVar) {
        amzVar.f4244a = this.f4908c.v;
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void b_() {
        synchronized (this.f4909d) {
            if (this.f4906a != null) {
                this.f4906a.b();
            }
        }
    }
}
