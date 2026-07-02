package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.internal.ads.aqc;
import com.google.android.gms.internal.ads.asb;
import com.google.android.gms.internal.ads.asi;
import com.google.android.gms.internal.ads.ast;
import com.google.android.gms.internal.ads.asv;
import com.google.android.gms.internal.ads.ata;
import com.google.android.gms.internal.ads.atc;
import com.google.android.gms.internal.ads.atd;
import com.google.android.gms.internal.ads.ate;
import com.google.android.gms.internal.ads.atg;
import com.google.android.gms.internal.ads.auy;
import com.google.android.gms.internal.ads.avj;
import com.google.android.gms.internal.ads.bbe;
import com.google.android.gms.internal.ads.bbu;
import com.google.android.gms.internal.ads.bcg;
import com.google.android.gms.internal.ads.bck;
import com.google.android.gms.internal.ads.bcn;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.ii;
import com.google.android.gms.internal.ads.ij;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jm;
import com.google.android.gms.internal.ads.mj;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.zzang;
import com.google.android.gms.internal.ads.zzjj;
import com.google.android.gms.internal.ads.zzjn;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class bn extends ba implements atg {
    private boolean k;
    private ii l;
    private boolean m;

    public bn(Context context, bt btVar, zzjn zzjnVar, String str, bbu bbuVar, zzang zzangVar) {
        super(context, zzjnVar, str, bbuVar, zzangVar, btVar);
        this.m = false;
    }

    private final bbe I() {
        if (this.e.j == null || !this.e.j.n) {
            return null;
        }
        return this.e.j.r;
    }

    private static ii a(ij ijVar, int i) {
        return new ii(ijVar.f5117a.f5760c, null, ijVar.f5118b.f5764c, i, ijVar.f5118b.e, ijVar.f5118b.i, ijVar.f5118b.k, ijVar.f5118b.j, ijVar.f5117a.i, ijVar.f5118b.g, null, null, null, ijVar.f5119c, null, ijVar.f5118b.h, ijVar.f5120d, ijVar.f5118b.f, ijVar.f, ijVar.g, ijVar.f5118b.n, ijVar.h, null, ijVar.f5118b.A, ijVar.f5118b.B, ijVar.f5118b.B, ijVar.f5118b.D, ijVar.f5118b.E, null, ijVar.f5118b.H, ijVar.f5118b.L, ijVar.i, ijVar.f5118b.O, ijVar.j, ijVar.f5118b.Q, ijVar.f5118b.R, ijVar.f5118b.S, ijVar.f5118b.T);
    }

    private final void a(ata ataVar) {
        jm.f5184a.post(new bp(this, ataVar));
    }

    private final boolean b(ii iiVar, ii iiVar2) {
        c((List<String>) null);
        if (!this.e.d()) {
            jd.e("Native ad does not have custom rendering mode.");
            a(0);
            return false;
        }
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
                jm.f5184a.post(new bq(this, astVar));
            } else if (bckVarI != null && this.e.t != null) {
                ata ataVar3 = new ata(bckVarI.a(), bckVarI.b(), bckVarI.c(), bckVarI.d() != null ? bckVarI.d() : null, bckVarI.e(), bckVarI.f(), -1.0d, null, null, null, bckVarI.l(), bckVarI.n() != null ? (View) com.google.android.gms.b.b.a(bckVarI.n()) : null, bckVarI.o(), strC, bckVarI.j());
                ataVar3.a(new atd(this.e.f3036c, this, this.e.f3037d, bckVarI, ataVar3));
                a(ataVar3);
            } else if (bckVarI != null && this.e.s != null) {
                asv asvVar = new asv(bckVarI.a(), bckVarI.b(), bckVarI.c(), bckVarI.d() != null ? bckVarI.d() : null, bckVarI.e(), bckVarI.f(), null, bckVarI.j(), bckVarI.l(), bckVarI.n() != null ? (View) com.google.android.gms.b.b.a(bckVarI.n()) : null, bckVarI.o(), strC);
                asvVar.a(new atd(this.e.f3036c, this, this.e.f3037d, bckVarI, asvVar));
                jm.f5184a.post(new br(this, asvVar));
            } else {
                if (auyVarN == null || this.e.v == null || this.e.v.get(auyVarN.l()) == null) {
                    jd.e("No matching mapper/listener for retrieved native ad template.");
                    a(0);
                    return false;
                }
                jm.f5184a.post(new bs(this, auyVarN));
            }
            return super.a(iiVar, iiVar2);
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
            a(0);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final boolean c(ii iiVar, ii iiVar2) {
        View viewA = s.a(iiVar2);
        if (viewA == null) {
            return false;
        }
        View nextView = this.e.f.getNextView();
        if (nextView != 0) {
            if (nextView instanceof qd) {
                ((qd) nextView).destroy();
            }
            this.e.f.removeView(nextView);
        }
        if (!s.b(iiVar2)) {
            try {
                a(viewA);
            } catch (Throwable th) {
                aw.i().a(th, "AdLoaderManager.swapBannerViews");
                jd.c("Could not add mediation view to view hierarchy.", th);
                return false;
            }
        }
        if (this.e.f.getChildCount() > 1) {
            this.e.f.showNext();
        }
        if (iiVar != null) {
            View nextView2 = this.e.f.getNextView();
            if (nextView2 != null) {
                this.e.f.removeView(nextView2);
            }
            this.e.c();
        }
        this.e.f.setMinimumWidth(k().f);
        this.e.f.setMinimumHeight(k().f5805c);
        this.e.f.requestLayout();
        this.e.f.setVisibility(0);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.internal.ads.apf
    public final void H() {
        throw new IllegalStateException("Interstitial is not supported by AdLoaderManager.");
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final void K() {
        mj.d("#005 Unexpected call to an abstract (unimplemented) method.", null);
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final void O() {
        mj.d("#005 Unexpected call to an abstract (unimplemented) method.", null);
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final void P() {
        mj.d("#005 Unexpected call to an abstract (unimplemented) method.", null);
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final boolean R() {
        if (I() != null) {
            return I().p;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final boolean S() {
        if (I() != null) {
            return I().q;
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.internal.ads.bbf
    public final void T() {
        if (this.e.j == null || !"com.google.ads.mediation.admob.AdMobAdapter".equals(this.e.j.q) || this.e.j.o == null || !this.e.j.o.b()) {
            super.T();
        } else {
            y();
        }
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.internal.ads.bbf
    public final void U() {
        if (this.e.j == null || !"com.google.ads.mediation.admob.AdMobAdapter".equals(this.e.j.q) || this.e.j.o == null || !this.e.j.o.b()) {
            super.U();
        } else {
            x();
        }
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
        throw new IllegalStateException("CustomRendering is not supported by AdLoaderManager.");
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final void a(atc atcVar) {
        mj.d("#005 Unexpected call to an abstract (unimplemented) method.", null);
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final void a(ate ateVar) {
        mj.d("#005 Unexpected call to an abstract (unimplemented) method.", null);
    }

    @Override // com.google.android.gms.ads.internal.a
    public final void a(ij ijVar, asb asbVar) {
        this.l = null;
        if (ijVar.e != -2) {
            this.l = a(ijVar, ijVar.e);
        } else if (!ijVar.f5118b.g) {
            jd.e("partialAdState is not mediation");
            this.l = a(ijVar, 0);
        }
        if (this.l != null) {
            jm.f5184a.post(new bo(this));
            return;
        }
        if (ijVar.f5120d != null) {
            this.e.i = ijVar.f5120d;
        }
        this.e.I = 0;
        ax axVar = this.e;
        aw.d();
        axVar.h = com.google.android.gms.internal.ads.ao.a(this.e.f3036c, this, ijVar, this.e.f3037d, null, this.j, this, asbVar);
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.ads.internal.a
    protected final boolean a(ii iiVar, ii iiVar2) {
        boolean z;
        if (!this.e.d()) {
            throw new IllegalStateException("AdLoader API does not support custom rendering.");
        }
        if (!iiVar2.n) {
            a(0);
            jd.e("newState is not mediation.");
            return false;
        }
        if (iiVar2.o != null && iiVar2.o.a()) {
            if (this.e.d() && this.e.f != null) {
                this.e.f.a().c(iiVar2.A);
            }
            if (!super.a(iiVar, iiVar2)) {
                z = false;
            } else if (!this.e.d() || c(iiVar, iiVar2)) {
                if (!this.e.e()) {
                    super.a(iiVar2, false);
                }
                z = true;
            } else {
                a(0);
                z = false;
            }
            if (!z) {
                return false;
            }
            this.m = true;
        } else {
            if (iiVar2.o == null || !iiVar2.o.b()) {
                a(0);
                jd.e("Response is neither banner nor native.");
                return false;
            }
            if (!b(iiVar, iiVar2)) {
                return false;
            }
        }
        d(new ArrayList(Arrays.asList(2)));
        return true;
    }

    @Override // com.google.android.gms.ads.internal.ba
    protected final boolean a(zzjj zzjjVar, ii iiVar, boolean z) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final avj b(String str) {
        com.google.android.gms.common.internal.w.b("getOnCustomClickListener must be called on the main UI thread.");
        return this.e.u.get(str);
    }

    @Override // com.google.android.gms.internal.ads.atg
    public final void b(View view) {
        mj.d("#005 Unexpected call to an abstract (unimplemented) method.", null);
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final void b(boolean z) {
        com.google.android.gms.common.internal.w.b("setManualImpressionsEnabled must be called from the main thread.");
        this.k = z;
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final boolean b(zzjj zzjjVar) {
        if (this.e.A != null && this.e.A.size() == 1 && this.e.A.get(0).intValue() == 2) {
            jd.c("Requesting only banner Ad from AdLoader or calling loadAd on returned banner is not yet supported");
            a(0);
            return false;
        }
        if (this.e.z == null) {
            return super.b(zzjjVar);
        }
        if (zzjjVar.h != this.k) {
            zzjjVar = new zzjj(zzjjVar.f5799a, zzjjVar.f5800b, zzjjVar.f5801c, zzjjVar.f5802d, zzjjVar.e, zzjjVar.f, zzjjVar.g, zzjjVar.h || this.k, zzjjVar.i, zzjjVar.j, zzjjVar.k, zzjjVar.l, zzjjVar.m, zzjjVar.n, zzjjVar.o, zzjjVar.p, zzjjVar.q, zzjjVar.r);
        }
        return super.b(zzjjVar);
    }

    public final void c(List<String> list) {
        com.google.android.gms.common.internal.w.b("setNativeTemplates must be called on the main UI thread.");
        this.e.F = list;
    }

    public final void d(List<Integer> list) {
        com.google.android.gms.common.internal.w.b("setAllowedAdTypes must be called on the main UI thread.");
        this.e.A = list;
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final void n() {
        if (!this.m) {
            throw new IllegalStateException("Native Ad does not support pause().");
        }
        super.n();
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final void o() {
        if (!this.m) {
            throw new IllegalStateException("Native Ad does not support resume().");
        }
        super.o();
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final aqc s() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.a
    protected final void w() {
        super.w();
        ii iiVar = this.e.j;
        if (iiVar == null || iiVar.o == null || !iiVar.o.a() || this.e.z == null) {
            return;
        }
        try {
            this.e.z.a(this, com.google.android.gms.b.b.a(this.e.f3036c));
            super.b(this.e.j, false);
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }
}
