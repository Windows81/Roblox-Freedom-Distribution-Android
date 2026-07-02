package com.google.android.gms.ads.internal;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.ajh;
import com.google.android.gms.internal.ads.amk;
import com.google.android.gms.internal.ads.anv;
import com.google.android.gms.internal.ads.aob;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aor;
import com.google.android.gms.internal.ads.aou;
import com.google.android.gms.internal.ads.apg;
import com.google.android.gms.internal.ads.apk;
import com.google.android.gms.internal.ads.apo;
import com.google.android.gms.internal.ads.apu;
import com.google.android.gms.internal.ads.aqc;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.arz;
import com.google.android.gms.internal.ads.asb;
import com.google.android.gms.internal.ads.asi;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.co;
import com.google.android.gms.internal.ads.fr;
import com.google.android.gms.internal.ads.fz;
import com.google.android.gms.internal.ads.gh;
import com.google.android.gms.internal.ads.ic;
import com.google.android.gms.internal.ads.ii;
import com.google.android.gms.internal.ads.ij;
import com.google.android.gms.internal.ads.ik;
import com.google.android.gms.internal.ads.it;
import com.google.android.gms.internal.ads.iv;
import com.google.android.gms.internal.ads.ja;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jm;
import com.google.android.gms.internal.ads.ly;
import com.google.android.gms.internal.ads.mj;
import com.google.android.gms.internal.ads.rr;
import com.google.android.gms.internal.ads.zzaig;
import com.google.android.gms.internal.ads.zzjj;
import com.google.android.gms.internal.ads.zzjn;
import com.google.android.gms.internal.ads.zzlu;
import com.google.android.gms.internal.ads.zzms;
import com.google.android.gms.internal.ads.zzmu;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.concurrent.CountDownLatch;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public abstract class a extends apg implements com.google.android.gms.ads.internal.gmsg.k, com.google.android.gms.ads.internal.gmsg.m, com.google.android.gms.ads.internal.overlay.s, anv, com.google.android.gms.internal.ads.ap, co, it {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected asb f2981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected arz f2982b;
    protected final ax e;
    protected transient zzjj f;
    protected final ajh g;
    protected com.google.android.gms.b.a h;
    protected final bt i;
    private arz j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f2983c = false;
    private final Bundle k = new Bundle();
    private boolean l = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final am f2984d = new am(this);

    a(ax axVar, am amVar, bt btVar) {
        this.e = axVar;
        this.i = btVar;
        aw.e().b(this.e.f3036c);
        aw.e().c(this.e.f3036c);
        ja.a(this.e.f3036c);
        aw.C().a(this.e.f3036c);
        aw.i().a(this.e.f3036c, this.e.e);
        aw.k().a(this.e.f3036c);
        this.g = aw.i().g();
        aw.h().a(this.e.f3036c);
        aw.E().a(this.e.f3036c);
        if (((Boolean) aoo.f().a(aro.cn)).booleanValue()) {
            Timer timer = new Timer();
            timer.schedule(new aa(this, new CountDownLatch(((Integer) aoo.f().a(aro.cp)).intValue()), timer), 0L, ((Long) aoo.f().a(aro.co)).longValue());
        }
    }

    protected static boolean a(zzjj zzjjVar) {
        Bundle bundle = zzjjVar.m.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        return bundle == null || !bundle.containsKey("gw");
    }

    private static long b(String str) {
        int iIndexOf = str.indexOf("ufe");
        int iIndexOf2 = str.indexOf(44, iIndexOf);
        if (iIndexOf2 == -1) {
            iIndexOf2 = str.length();
        }
        try {
            return Long.parseLong(str.substring(iIndexOf + 4, iIndexOf2));
        } catch (IndexOutOfBoundsException | NumberFormatException e) {
            mj.b("", e);
            return -1L;
        }
    }

    protected final void A() {
        if (this.e.C == null) {
            return;
        }
        try {
            this.e.C.f();
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }

    public final void B() {
        ii iiVar = this.e.j;
        if (iiVar == null || TextUtils.isEmpty(iiVar.B) || iiVar.I || !aw.o().b()) {
            return;
        }
        jd.b("Sending troubleshooting signals to the server.");
        aw.o().b(this.e.f3036c, this.e.e.f5784a, iiVar.B, this.e.f3035b);
        iiVar.I = true;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public String C() {
        return this.e.f3035b;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final apo D() {
        return this.e.o;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final aou E() {
        return this.e.n;
    }

    protected final void F() {
        if (this.h != null) {
            aw.u().b(this.h);
            this.h = null;
        }
    }

    protected final String G() {
        ij ijVar = this.e.k;
        if (ijVar == null || ijVar.f5118b == null) {
            return "javascript";
        }
        String str = ijVar.f5118b.T;
        if (TextUtils.isEmpty(str)) {
            return "javascript";
        }
        try {
            if (new JSONObject(str).optInt("media_type", -1) == 0) {
                return null;
            }
            return "javascript";
        } catch (JSONException e) {
            mj.c("", e);
            return "javascript";
        }
    }

    protected final List<String> a(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(ic.b(it.next(), this.e.f3036c));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i) {
        a(i, false);
    }

    protected void a(int i, boolean z) {
        jd.e(new StringBuilder(30).append("Failed to load ad: ").append(i).toString());
        this.f2983c = z;
        if (this.e.n != null) {
            try {
                this.e.n.a(i);
            } catch (RemoteException e) {
                jd.d("#007 Could not call remote method.", e);
            }
        }
        if (this.e.C != null) {
            try {
                this.e.C.a(i);
            } catch (RemoteException e2) {
                jd.d("#007 Could not call remote method.", e2);
            }
        }
    }

    protected final void a(View view) {
        ay ayVar = this.e.f;
        if (ayVar != null) {
            ayVar.addView(view, aw.g().d());
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(com.google.android.gms.internal.ads.af afVar, String str) {
        jd.e("#006 Unexpected call to a deprecated method.");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(aor aorVar) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: setAdClickListener");
        this.e.m = aorVar;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(aou aouVar) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: setAdListener");
        this.e.n = aouVar;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(apk apkVar) {
        this.e.p = apkVar;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(apo apoVar) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: setAppEventListener");
        this.e.o = apoVar;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(apu apuVar) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: setCorrelationIdProvider");
        this.e.q = apuVar;
    }

    public final void a(arz arzVar) {
        this.f2981a = new asb(((Boolean) aoo.f().a(aro.N)).booleanValue(), "load_ad", this.e.i.f5803a);
        this.j = new arz(-1L, null, null);
        if (arzVar == null) {
            this.f2982b = new arz(-1L, null, null);
        } else {
            this.f2982b = new arz(arzVar.a(), arzVar.b(), arzVar.c());
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public void a(asi asiVar) {
        throw new IllegalStateException("#005 Unexpected call to an abstract (unimplemented) method.");
    }

    public final void a(fz fzVar) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.e.D = fzVar;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(gh ghVar) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: setRewardedVideoAdListener");
        this.e.C = ghVar;
    }

    @Override // com.google.android.gms.internal.ads.co
    public final void a(ij ijVar) {
        if (ijVar.f5118b.m != -1 && !TextUtils.isEmpty(ijVar.f5118b.w)) {
            long jB = b(ijVar.f5118b.w);
            if (jB != -1) {
                this.f2981a.a(this.f2981a.a(jB + ijVar.f5118b.m), "stc");
            }
        }
        this.f2981a.a(ijVar.f5118b.w);
        this.f2981a.a(this.f2982b, "arf");
        this.j = this.f2981a.a();
        this.f2981a.a("gqi", ijVar.f5118b.x);
        this.e.g = null;
        this.e.k = ijVar;
        ijVar.i.a(new az(this, ijVar));
        ijVar.i.a(amk.a.b.AD_LOADED);
        a(ijVar, this.f2981a);
    }

    protected abstract void a(ij ijVar, asb asbVar);

    @Override // com.google.android.gms.internal.ads.apf
    public void a(com.google.android.gms.internal.ads.y yVar) {
        jd.e("#006 Unexpected call to a deprecated method.");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(zzjn zzjnVar) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: setAdSize");
        this.e.i = zzjnVar;
        if (this.e.j != null && this.e.j.f5114b != null && this.e.I == 0) {
            this.e.j.f5114b.a(rr.a(zzjnVar));
        }
        if (this.e.f == null) {
            return;
        }
        if (this.e.f.getChildCount() > 1) {
            this.e.f.removeView(this.e.f.getNextView());
        }
        this.e.f.setMinimumWidth(zzjnVar.f);
        this.e.f.setMinimumHeight(zzjnVar.f5805c);
        this.e.f.requestLayout();
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(zzlu zzluVar) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: setIconAdOptions");
        this.e.y = zzluVar;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(zzmu zzmuVar) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: setVideoOptions");
        this.e.x = zzmuVar;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(String str) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: setUserId");
        this.e.E = str;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.k
    public final void a(String str, Bundle bundle) {
        this.k.putAll(bundle);
        if (!this.l || this.e.p == null) {
            return;
        }
        try {
            this.e.p.a();
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.internal.gmsg.m
    public final void a(String str, String str2) {
        if (this.e.o != null) {
            try {
                this.e.o.a(str, str2);
            } catch (RemoteException e) {
                jd.d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.it
    public final void a(HashSet<ik> hashSet) {
        this.e.a(hashSet);
    }

    boolean a(ii iiVar) {
        return false;
    }

    protected abstract boolean a(ii iiVar, ii iiVar2);

    protected abstract boolean a(zzjj zzjjVar, asb asbVar);

    protected final List<String> b(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(ic.a(it.next(), this.e.f3036c));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.ap
    public void b(ii iiVar) {
        this.f2981a.a(this.j, "awr");
        this.e.h = null;
        if (iiVar.f5116d != -2 && iiVar.f5116d != 3 && this.e.a() != null) {
            aw.j().a(this.e.a());
        }
        if (iiVar.f5116d == -1) {
            this.f2983c = false;
            return;
        }
        if (a(iiVar)) {
            jd.b("Ad refresh scheduled.");
        }
        if (iiVar.f5116d != -2) {
            if (iiVar.f5116d == 3) {
                iiVar.K.a(amk.a.b.AD_FAILED_TO_LOAD_NO_FILL);
            } else {
                iiVar.K.a(amk.a.b.AD_FAILED_TO_LOAD);
            }
            a(iiVar.f5116d);
            return;
        }
        if (this.e.G == null) {
            this.e.G = new iv(this.e.f3035b);
        }
        if (this.e.f != null) {
            this.e.f.a().d(iiVar.B);
        }
        this.g.a(this.e.j);
        if (a(this.e.j, iiVar)) {
            this.e.j = iiVar;
            ax axVar = this.e;
            if (axVar.l != null) {
                if (axVar.j != null) {
                    axVar.l.a(axVar.j.y);
                    axVar.l.b(axVar.j.z);
                    axVar.l.b(axVar.j.n);
                }
                axVar.l.a(axVar.i.f5806d);
            }
            this.f2981a.a("is_mraid", this.e.j.a() ? "1" : "0");
            this.f2981a.a("is_mediation", this.e.j.n ? "1" : "0");
            if (this.e.j.f5114b != null && this.e.j.f5114b.v() != null) {
                this.f2981a.a("is_delay_pl", this.e.j.f5114b.v().f() ? "1" : "0");
            }
            this.f2981a.a(this.f2982b, "ttc");
            if (aw.i().b() != null) {
                aw.i().b().a(this.f2981a);
            }
            B();
            if (this.e.d()) {
                w();
            }
        }
        if (iiVar.J != null) {
            aw.e().a(this.e.f3036c, iiVar.J);
        }
    }

    protected final void b(zzaig zzaigVar) {
        if (this.e.C == null) {
            return;
        }
        String str = "";
        int i = 1;
        if (zzaigVar != null) {
            try {
                str = zzaigVar.f5778a;
                i = zzaigVar.f5779b;
            } catch (RemoteException e) {
                jd.d("#007 Could not call remote method.", e);
                return;
            }
        }
        fr frVar = new fr(str, i);
        this.e.C.a(frVar);
        if (this.e.D != null) {
            this.e.D.a(frVar, this.e.k.f5117a.v);
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public void b(boolean z) {
        jd.e("Attempt to call setManualImpressionsEnabled for an unsupported ad type.");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public boolean b(zzjj zzjjVar) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: loadAd");
        aw.k().a();
        this.k.clear();
        this.l = false;
        if (((Boolean) aoo.f().a(aro.aN)).booleanValue()) {
            zzjjVar = zzjjVar.a();
            if (((Boolean) aoo.f().a(aro.aO)).booleanValue()) {
                zzjjVar.f5801c.putBoolean(AdMobAdapter.NEW_BUNDLE, true);
            }
        }
        if (com.google.android.gms.common.util.h.c(this.e.f3036c) && zzjjVar.k != null) {
            zzjjVar = new aob(zzjjVar).a(null).a();
        }
        if (this.e.g != null || this.e.h != null) {
            if (this.f != null) {
                jd.e("Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes.");
            } else {
                jd.e("Loading already in progress, saving this object for future refreshes.");
            }
            this.f = zzjjVar;
            return false;
        }
        jd.d("Starting ad request.");
        a((arz) null);
        this.f2982b = this.f2981a.a();
        if (zzjjVar.f) {
            jd.d("This request is sent from a test device.");
        } else {
            aoo.a();
            String strA = ly.a(this.e.f3036c);
            jd.d(new StringBuilder(String.valueOf(strA).length() + 71).append("Use AdRequest.Builder.addTestDevice(\"").append(strA).append("\") to get test ads on this device.").toString());
        }
        this.f2984d.a(zzjjVar);
        this.f2983c = a(zzjjVar, this.f2981a);
        return this.f2983c;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public void c(boolean z) {
        throw new IllegalStateException("#005 Unexpected call to an abstract (unimplemented) method.");
    }

    protected boolean c(zzjj zzjjVar) {
        if (this.e.f == null) {
            return false;
        }
        Object parent = this.e.f.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        return aw.e().a(view, view.getContext());
    }

    protected void d(boolean z) {
        jd.a("Ad finished loading.");
        this.f2983c = z;
        this.l = true;
        if (this.e.n != null) {
            try {
                this.e.n.c();
            } catch (RemoteException e) {
                jd.d("#007 Could not call remote method.", e);
            }
        }
        if (this.e.C != null) {
            try {
                this.e.C.a();
            } catch (RemoteException e2) {
                jd.d("#007 Could not call remote method.", e2);
            }
        }
        if (this.e.p != null) {
            try {
                this.e.p.a();
            } catch (RemoteException e3) {
                jd.d("#007 Could not call remote method.", e3);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.s
    public final void g() {
        u();
    }

    public final bt h() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public void i() {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: destroy");
        this.f2984d.a();
        this.g.b(this.e.j);
        ax axVar = this.e;
        if (axVar.f != null) {
            axVar.f.b();
        }
        axVar.n = null;
        axVar.p = null;
        axVar.o = null;
        axVar.B = null;
        axVar.q = null;
        axVar.a(false);
        if (axVar.f != null) {
            axVar.f.removeAllViews();
        }
        axVar.b();
        axVar.c();
        axVar.j = null;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final com.google.android.gms.b.a j() {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: getAdFrame");
        return com.google.android.gms.b.b.a(this.e.f);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final zzjn k() {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: getAdSize");
        if (this.e.i == null) {
            return null;
        }
        return new zzms(this.e.i);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final boolean l() {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: isLoaded");
        return this.e.g == null && this.e.h == null && this.e.j != null;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void m() {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: recordManualImpression");
        if (this.e.j == null) {
            jd.e("Ad state was null when trying to ping manual tracking URLs.");
            return;
        }
        jd.b("Pinging manual tracking URLs.");
        if (this.e.j.H) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (this.e.j.g != null) {
            arrayList.addAll(this.e.j.g);
        }
        if (this.e.j.o != null && this.e.j.o.i != null) {
            arrayList.addAll(this.e.j.o.i);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        aw.e();
        jm.a(this.e.f3036c, this.e.e.f5784a, arrayList);
        this.e.j.H = true;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public void n() {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: pause");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public void o() {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: resume");
    }

    @Override // com.google.android.gms.internal.ads.anv
    public void onAdClicked() {
        if (this.e.j == null) {
            jd.e("Ad state was null when trying to ping click URLs.");
            return;
        }
        jd.b("Pinging click URLs.");
        if (this.e.l != null) {
            this.e.l.b();
        }
        if (this.e.j.f5115c != null) {
            aw.e();
            jm.a(this.e.f3036c, this.e.e.f5784a, b(this.e.j.f5115c));
        }
        if (this.e.m != null) {
            try {
                this.e.m.a();
            } catch (RemoteException e) {
                jd.d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final Bundle p() {
        return this.l ? this.k : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void q() {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.: stopLoading");
        this.f2983c = false;
        this.e.a(true);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final boolean r() {
        return this.f2983c;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public aqc s() {
        return null;
    }

    protected void t() {
        jd.a("Ad closing.");
        if (this.e.n != null) {
            try {
                this.e.n.a();
            } catch (RemoteException e) {
                jd.d("#007 Could not call remote method.", e);
            }
        }
        if (this.e.C != null) {
            try {
                this.e.C.d();
            } catch (RemoteException e2) {
                jd.d("#007 Could not call remote method.", e2);
            }
        }
    }

    protected final void u() {
        jd.a("Ad leaving application.");
        if (this.e.n != null) {
            try {
                this.e.n.b();
            } catch (RemoteException e) {
                jd.d("#007 Could not call remote method.", e);
            }
        }
        if (this.e.C != null) {
            try {
                this.e.C.e();
            } catch (RemoteException e2) {
                jd.d("#007 Could not call remote method.", e2);
            }
        }
    }

    protected final void v() {
        jd.a("Ad opening.");
        if (this.e.n != null) {
            try {
                this.e.n.d();
            } catch (RemoteException e) {
                jd.d("#007 Could not call remote method.", e);
            }
        }
        if (this.e.C != null) {
            try {
                this.e.C.b();
            } catch (RemoteException e2) {
                jd.d("#007 Could not call remote method.", e2);
            }
        }
    }

    protected void w() {
        d(false);
    }

    public final void x() {
        jd.d("Ad impression.");
        if (this.e.n != null) {
            try {
                this.e.n.f();
            } catch (RemoteException e) {
                jd.d("#007 Could not call remote method.", e);
            }
        }
    }

    public final void y() {
        jd.d("Ad clicked.");
        if (this.e.n != null) {
            try {
                this.e.n.e();
            } catch (RemoteException e) {
                jd.d("#007 Could not call remote method.", e);
            }
        }
    }

    protected final void z() {
        if (this.e.C == null) {
            return;
        }
        try {
            this.e.C.c();
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }
}
