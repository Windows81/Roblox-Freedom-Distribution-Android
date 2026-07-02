package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import com.google.android.gms.internal.ads.alb;
import com.google.android.gms.internal.ads.amk;
import com.google.android.gms.internal.ads.amn;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.asb;
import com.google.android.gms.internal.ads.auy;
import com.google.android.gms.internal.ads.avj;
import com.google.android.gms.internal.ads.aye;
import com.google.android.gms.internal.ads.bbf;
import com.google.android.gms.internal.ads.bbn;
import com.google.android.gms.internal.ads.bbu;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.cp;
import com.google.android.gms.internal.ads.dl;
import com.google.android.gms.internal.ads.ec;
import com.google.android.gms.internal.ads.ii;
import com.google.android.gms.internal.ads.ik;
import com.google.android.gms.internal.ads.im;
import com.google.android.gms.internal.ads.iy;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jk;
import com.google.android.gms.internal.ads.jm;
import com.google.android.gms.internal.ads.js;
import com.google.android.gms.internal.ads.ms;
import com.google.android.gms.internal.ads.nd;
import com.google.android.gms.internal.ads.nj;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.zzang;
import com.google.android.gms.internal.ads.zzjj;
import com.google.android.gms.internal.ads.zzjn;
import com.google.android.gms.internal.ads.zzlu;
import com.google.android.gms.internal.ads.zzpl;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public abstract class ba extends a implements ap, com.google.android.gms.ads.internal.overlay.m, bbf {
    protected final bbu j;
    private transient boolean k;

    public ba(Context context, zzjn zzjnVar, String str, bbu bbuVar, zzang zzangVar, bt btVar) {
        this(new ax(context, zzjnVar, str, zzangVar), bbuVar, null, btVar);
    }

    private ba(ax axVar, bbu bbuVar, am amVar, bt btVar) {
        super(axVar, null, btVar);
        this.j = bbuVar;
        this.k = false;
    }

    private final dl a(zzjj zzjjVar, Bundle bundle, im imVar, int i) {
        PackageInfo packageInfoB;
        JSONArray jSONArrayOptJSONArray;
        ApplicationInfo applicationInfo = this.e.f3036c.getApplicationInfo();
        try {
            packageInfoB = com.google.android.gms.common.c.c.b(this.e.f3036c).b(applicationInfo.packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfoB = null;
        }
        DisplayMetrics displayMetrics = this.e.f3036c.getResources().getDisplayMetrics();
        Bundle bundle2 = null;
        if (this.e.f != null && this.e.f.getParent() != null) {
            int[] iArr = new int[2];
            this.e.f.getLocationOnScreen(iArr);
            int i2 = iArr[0];
            int i3 = iArr[1];
            int width = this.e.f.getWidth();
            int height = this.e.f.getHeight();
            int i4 = 0;
            if (this.e.f.isShown() && i2 + width > 0 && i3 + height > 0 && i2 <= displayMetrics.widthPixels && i3 <= displayMetrics.heightPixels) {
                i4 = 1;
            }
            bundle2 = new Bundle(5);
            bundle2.putInt("x", i2);
            bundle2.putInt("y", i3);
            bundle2.putInt("width", width);
            bundle2.putInt("height", height);
            bundle2.putInt("visible", i4);
        }
        String strA = aw.i().a().a();
        this.e.l = new ik(strA, this.e.f3035b);
        this.e.l.a(zzjjVar);
        aw.e();
        String strA2 = jm.a(this.e.f3036c, this.e.f, this.e.i);
        long jA = 0;
        if (this.e.q != null) {
            try {
                jA = this.e.q.a();
            } catch (RemoteException e2) {
                jd.e("Cannot get correlation id, default to 0.");
            }
        }
        String string = UUID.randomUUID().toString();
        Bundle bundleA = aw.j().a(this.e.f3036c, this, strA);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i6 >= this.e.v.size()) {
                break;
            }
            String strB = this.e.v.b(i6);
            arrayList.add(strB);
            if (this.e.u.containsKey(strB) && this.e.u.get(strB) != null) {
                arrayList2.add(strB);
            }
            i5 = i6 + 1;
        }
        nd ndVarA = jk.a(new bd(this));
        nd ndVarA2 = jk.a(new be(this));
        String strC = imVar != null ? imVar.c() : null;
        String string2 = null;
        if (this.e.F != null && this.e.F.size() > 0) {
            int i7 = packageInfoB != null ? packageInfoB.versionCode : 0;
            if (i7 > aw.i().l().g()) {
                aw.i().l().m();
                aw.i().l().a(i7);
            } else {
                JSONObject jSONObjectL = aw.i().l().l();
                if (jSONObjectL != null && (jSONArrayOptJSONArray = jSONObjectL.optJSONArray(this.e.f3035b)) != null) {
                    string2 = jSONArrayOptJSONArray.toString();
                }
            }
        }
        zzjn zzjnVar = this.e.i;
        String str = this.e.f3035b;
        String strC2 = aoo.c();
        zzang zzangVar = this.e.e;
        List<String> list = this.e.F;
        boolean zA = aw.i().l().a();
        int i8 = displayMetrics.widthPixels;
        int i9 = displayMetrics.heightPixels;
        float f = displayMetrics.density;
        List<String> listA = aro.a();
        String str2 = this.e.f3034a;
        zzpl zzplVar = this.e.w;
        String strF = this.e.f();
        float fA = aw.D().a();
        boolean zB = aw.D().b();
        aw.e();
        int i10 = jm.i(this.e.f3036c);
        aw.e();
        int iD = jm.d(this.e.f);
        boolean z = this.e.f3036c instanceof Activity;
        boolean zF = aw.i().l().f();
        boolean zD = aw.i().d();
        int iA = aw.z().a();
        aw.e();
        Bundle bundleC = jm.c();
        String strA3 = aw.o().a();
        zzlu zzluVar = this.e.y;
        boolean zB2 = aw.o().b();
        Bundle bundleJ = aye.a().j();
        boolean zE = aw.i().l().e(this.e.f3035b);
        List<Integer> list2 = this.e.A;
        boolean zA2 = com.google.android.gms.common.c.c.b(this.e.f3036c).a();
        boolean zE2 = aw.i().e();
        aw.g();
        return new dl(bundle2, zzjjVar, zzjnVar, str, applicationInfo, packageInfoB, strA, strC2, zzangVar, bundleA, list, arrayList, bundle, zA, i8, i9, f, strA2, jA, string, listA, str2, zzplVar, strF, fA, zB, i10, iD, z, zF, ndVarA, strC, zD, iA, bundleC, strA3, zzluVar, zB2, bundleJ, zE, ndVarA2, list2, string2, arrayList2, i, zA2, zE2, js.e(), (ArrayList) ms.a(aw.i().n(), (Object) null, 1000L, TimeUnit.MILLISECONDS));
    }

    static String c(ii iiVar) {
        if (iiVar == null) {
            return null;
        }
        String str = iiVar.q;
        if (!("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) || iiVar.o == null) {
            return str;
        }
        try {
            return new JSONObject(iiVar.o.k).getString("class_name");
        } catch (NullPointerException e) {
            return str;
        } catch (JSONException e2) {
            return str;
        }
    }

    public void H() {
        jd.e("showInterstitial is not supported for current ad type");
    }

    public void T() {
        onAdClicked();
    }

    public void U() {
        ab();
    }

    public void V() {
        jd.e("Mediated ad does not support onVideoEnd callback");
    }

    protected boolean W() {
        aw.e();
        if (jm.a(this.e.f3036c, "android.permission.INTERNET")) {
            aw.e();
            if (jm.a(this.e.f3036c)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.bbf
    public final void X() {
        n_();
    }

    @Override // com.google.android.gms.internal.ads.bbf
    public final void Y() {
        u();
    }

    @Override // com.google.android.gms.internal.ads.bbf
    public final void Z() {
        o_();
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final String a() {
        if (this.e.j == null) {
            return null;
        }
        return this.e.j.q;
    }

    @Override // com.google.android.gms.internal.ads.bbf
    public final void a(auy auyVar, String str) {
        String strL;
        avj avjVar = null;
        if (auyVar != null) {
            try {
                strL = auyVar.l();
            } catch (RemoteException e) {
                jd.c("Unable to call onCustomClick.", e);
                return;
            }
        } else {
            strL = null;
        }
        if (this.e.u != null && strL != null) {
            avjVar = this.e.u.get(strL);
        }
        if (avjVar == null) {
            jd.e("Mediation adapter invoked onCustomClick but no listeners were set.");
        } else {
            avjVar.a(auyVar, str);
        }
    }

    protected void a(ii iiVar, boolean z) {
        if (iiVar == null) {
            jd.e("Ad state was null when trying to ping impression URLs.");
            return;
        }
        if (iiVar == null) {
            jd.e("Ad state was null when trying to ping impression URLs.");
        } else {
            jd.b("Pinging Impression URLs.");
            if (this.e.l != null) {
                this.e.l.a();
            }
            iiVar.K.a(amk.a.b.AD_IMPRESSION);
            if (iiVar.e != null && !iiVar.D) {
                aw.e();
                jm.a(this.e.f3036c, this.e.e.f5784a, b(iiVar.e));
                iiVar.D = true;
            }
        }
        if (!iiVar.F || z) {
            if (iiVar.r != null && iiVar.r.f4748d != null) {
                aw.x();
                bbn.a(this.e.f3036c, this.e.e.f5784a, iiVar, this.e.f3035b, z, b(iiVar.r.f4748d));
            }
            if (iiVar.o != null && iiVar.o.g != null) {
                aw.x();
                bbn.a(this.e.f3036c, this.e.e.f5784a, iiVar, this.e.f3035b, z, iiVar.o.g);
            }
            iiVar.F = true;
        }
    }

    public final boolean a(dl dlVar, asb asbVar) {
        this.f2981a = asbVar;
        asbVar.a("seq_num", dlVar.g);
        asbVar.a("request_id", dlVar.v);
        asbVar.a("session_id", dlVar.h);
        if (dlVar.f != null) {
            asbVar.a("app_version", String.valueOf(dlVar.f.versionCode));
        }
        ax axVar = this.e;
        aw.a();
        Context context = this.e.f3036c;
        amn amnVar = this.i.f3072d;
        iy ecVar = dlVar.f4940b.f5801c.getBundle("sdk_less_server_data") != null ? new ec(context, dlVar, this, amnVar) : new cp(context, dlVar, this, amnVar);
        ecVar.h();
        axVar.g = ecVar;
        return true;
    }

    @Override // com.google.android.gms.ads.internal.a
    final boolean a(ii iiVar) {
        zzjj zzjjVar;
        boolean z = false;
        if (this.f != null) {
            zzjjVar = this.f;
            this.f = null;
        } else {
            zzjjVar = iiVar.f5113a;
            if (zzjjVar.f5801c != null) {
                z = zzjjVar.f5801c.getBoolean("_noRefresh", false);
            }
        }
        return a(zzjjVar, iiVar, z);
    }

    @Override // com.google.android.gms.ads.internal.a
    protected boolean a(ii iiVar, ii iiVar2) {
        int i;
        int i2 = 0;
        if (iiVar != null && iiVar.s != null) {
            iiVar.s.a((bbf) null);
        }
        if (iiVar2.s != null) {
            iiVar2.s.a((bbf) this);
        }
        if (iiVar2.r != null) {
            i = iiVar2.r.r;
            i2 = iiVar2.r.s;
        } else {
            i = 0;
        }
        this.e.G.a(i, i2);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.a
    public boolean a(zzjj zzjjVar, asb asbVar) {
        return a(zzjjVar, asbVar, 1);
    }

    public final boolean a(zzjj zzjjVar, asb asbVar, int i) {
        im imVarH;
        if (!W()) {
            return false;
        }
        aw.e();
        alb albVarA = aw.i().a(this.e.f3036c);
        Bundle bundleA = albVarA == null ? null : jm.a(albVarA);
        this.f2984d.a();
        this.e.I = 0;
        if (((Boolean) aoo.f().a(aro.cs)).booleanValue()) {
            imVarH = aw.i().l().h();
            aw.m().a(this.e.f3036c, this.e.e, false, imVarH, imVarH != null ? imVarH.d() : null, this.e.f3035b, null);
        } else {
            imVarH = null;
        }
        return a(a(zzjjVar, bundleA, imVarH, i), asbVar);
    }

    protected boolean a(zzjj zzjjVar, ii iiVar, boolean z) {
        if (!z && this.e.d()) {
            if (iiVar.i > 0) {
                this.f2984d.a(zzjjVar, iiVar.i);
            } else if (iiVar.r != null && iiVar.r.j > 0) {
                this.f2984d.a(zzjjVar, iiVar.r.j);
            } else if (!iiVar.n && iiVar.f5116d == 2) {
                this.f2984d.b(zzjjVar);
            }
        }
        return this.f2984d.e();
    }

    @Override // com.google.android.gms.internal.ads.bbf
    public final void aa() {
        if (this.e.j != null) {
            String str = this.e.j.q;
            jd.e(new StringBuilder(String.valueOf(str).length() + 74).append("Mediation adapter ").append(str).append(" refreshed, but mediation adapters should never refresh.").toString());
        }
        a(this.e.j, true);
        b(this.e.j, true);
        w();
    }

    public final void ab() {
        a(this.e.j, false);
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.ap
    public final void b(ii iiVar) {
        super.b(iiVar);
        if (iiVar.o != null) {
            jd.b("Disable the debug gesture detector on the mediation ad frame.");
            if (this.e.f != null) {
                this.e.f.d();
            }
            jd.b("Pinging network fill URLs.");
            aw.x();
            bbn.a(this.e.f3036c, this.e.e.f5784a, iiVar, this.e.f3035b, false, iiVar.o.j);
            if (iiVar.r != null && iiVar.r.g != null && iiVar.r.g.size() > 0) {
                jd.b("Pinging urls remotely");
                aw.e().a(this.e.f3036c, iiVar.r.g);
            }
        } else {
            jd.b("Enable the debug gesture detector on the admob ad frame.");
            if (this.e.f != null) {
                this.e.f.c();
            }
        }
        if (iiVar.f5116d != 3 || iiVar.r == null || iiVar.r.f == null) {
            return;
        }
        jd.b("Pinging no fill URLs.");
        aw.x();
        bbn.a(this.e.f3036c, this.e.e.f5784a, iiVar, this.e.f3035b, false, iiVar.r.f);
    }

    protected final void b(ii iiVar, boolean z) {
        if (iiVar == null) {
            return;
        }
        if (iiVar != null && iiVar.f != null && !iiVar.E) {
            aw.e();
            jm.a(this.e.f3036c, this.e.e.f5784a, a(iiVar.f));
            iiVar.E = true;
        }
        if (!iiVar.G || z) {
            if (iiVar.r != null && iiVar.r.e != null) {
                aw.x();
                bbn.a(this.e.f3036c, this.e.e.f5784a, iiVar, this.e.f3035b, z, a(iiVar.r.e));
            }
            if (iiVar.o != null && iiVar.o.h != null) {
                aw.x();
                bbn.a(this.e.f3036c, this.e.e.f5784a, iiVar, this.e.f3035b, z, iiVar.o.h);
            }
            iiVar.G = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.bbf
    public final void b(String str, String str2) {
        a(str, str2);
    }

    @Override // com.google.android.gms.ads.internal.a
    protected final boolean c(zzjj zzjjVar) {
        return super.c(zzjjVar) && !this.k;
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void d() {
        this.g.c(this.e.j);
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void e() {
        this.g.d(this.e.j);
    }

    @Override // com.google.android.gms.ads.internal.ap
    public final void g_() {
        Executor executor = nj.f5346a;
        am amVar = this.f2984d;
        amVar.getClass();
        executor.execute(bb.a(amVar));
    }

    @Override // com.google.android.gms.ads.internal.ap
    public final void h_() {
        Executor executor = nj.f5346a;
        am amVar = this.f2984d;
        amVar.getClass();
        executor.execute(bc.a(amVar));
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public void n() {
        com.google.android.gms.common.internal.w.b("pause must be called on the main UI thread.");
        if (this.e.j != null && this.e.j.f5114b != null && this.e.d()) {
            aw.g();
            js.a(this.e.j.f5114b);
        }
        if (this.e.j != null && this.e.j.p != null) {
            try {
                this.e.j.p.d();
            } catch (RemoteException e) {
                jd.e("Could not pause mediation adapter.");
            }
        }
        this.g.c(this.e.j);
        this.f2984d.b();
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public void n_() {
        this.k = false;
        t();
        this.e.l.c();
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public void o() {
        com.google.android.gms.common.internal.w.b("resume must be called on the main UI thread.");
        qd qdVar = null;
        if (this.e.j != null && this.e.j.f5114b != null) {
            qdVar = this.e.j.f5114b;
        }
        if (qdVar != null && this.e.d()) {
            aw.g();
            js.b(this.e.j.f5114b);
        }
        if (this.e.j != null && this.e.j.p != null) {
            try {
                this.e.j.p.e();
            } catch (RemoteException e) {
                jd.e("Could not resume mediation adapter.");
            }
        }
        if (qdVar == null || !qdVar.D()) {
            this.f2984d.c();
        }
        this.g.d(this.e.j);
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public void o_() {
        this.k = true;
        v();
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.anv
    public void onAdClicked() {
        if (this.e.j == null) {
            jd.e("Ad state was null when trying to ping click URLs.");
            return;
        }
        if (this.e.j.r != null && this.e.j.r.f4747c != null) {
            aw.x();
            bbn.a(this.e.f3036c, this.e.e.f5784a, this.e.j, this.e.f3035b, false, b(this.e.j.r.f4747c));
        }
        if (this.e.j.o != null && this.e.j.o.f != null) {
            aw.x();
            bbn.a(this.e.f3036c, this.e.e.f5784a, this.e.j, this.e.f3035b, false, this.e.j.o.f);
        }
        super.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final String p_() {
        if (this.e.j == null) {
            return null;
        }
        return c(this.e.j);
    }
}
