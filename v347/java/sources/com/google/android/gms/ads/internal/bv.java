package com.google.android.gms.ads.internal;

import android.content.Context;
import android.graphics.Rect;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.akf;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aqc;
import com.google.android.gms.internal.ads.bbu;
import com.google.android.gms.internal.ads.bcg;
import com.google.android.gms.internal.ads.bck;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.ht;
import com.google.android.gms.internal.ads.hx;
import com.google.android.gms.internal.ads.ii;
import com.google.android.gms.internal.ads.ij;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jm;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.qo;
import com.google.android.gms.internal.ads.rp;
import com.google.android.gms.internal.ads.rr;
import com.google.android.gms.internal.ads.zzang;
import com.google.android.gms.internal.ads.zzjj;
import com.google.android.gms.internal.ads.zzjn;
import java.lang.ref.WeakReference;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class bv extends bf implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private boolean k;
    private boolean l;
    private WeakReference<Object> m;

    public bv(Context context, zzjn zzjnVar, String str, bbu bbuVar, zzang zzangVar, bt btVar) {
        super(context, zzjnVar, str, bbuVar, zzangVar, btVar);
        this.m = new WeakReference<>(null);
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
    private final boolean b(ii iiVar, ii iiVar2) {
        if (iiVar2.n) {
            View viewA = s.a(iiVar2);
            if (viewA == null) {
                jd.e("Could not get mediation view");
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
                    if (aw.B().b(this.e.f3036c)) {
                        new akf(this.e.f3036c, viewA).a(new hx(this.e.f3036c, this.e.f3035b));
                    }
                    if (iiVar2.u != null) {
                        this.e.f.setMinimumWidth(iiVar2.u.f);
                        this.e.f.setMinimumHeight(iiVar2.u.f5805c);
                    }
                    a(viewA);
                } catch (Exception e) {
                    aw.i().a(e, "BannerAdManager.swapViews");
                    jd.c("Could not add mediation view to view hierarchy.", e);
                    return false;
                }
            }
        } else if (iiVar2.u != null && iiVar2.f5114b != null) {
            iiVar2.f5114b.a(rr.a(iiVar2.u));
            this.e.f.removeAllViews();
            this.e.f.setMinimumWidth(iiVar2.u.f);
            this.e.f.setMinimumHeight(iiVar2.u.f5805c);
            a(iiVar2.f5114b.getView());
        }
        if (this.e.f.getChildCount() > 1) {
            this.e.f.showNext();
        }
        if (iiVar != null) {
            View nextView2 = this.e.f.getNextView();
            if (nextView2 instanceof qd) {
                ((qd) nextView2).destroy();
            } else if (nextView2 != 0) {
                this.e.f.removeView(nextView2);
            }
            this.e.c();
        }
        this.e.f.setVisibility(0);
        return true;
    }

    private final void c(qd qdVar) {
        WebView webView;
        View view;
        if (L() && (webView = qdVar.getWebView()) != null && (view = qdVar.getView()) != null && aw.u().a(this.e.f3036c)) {
            this.h = aw.u().a(new StringBuilder(23).append(this.e.e.f5785b).append(".").append(this.e.e.f5786c).toString(), webView, "", "javascript", G());
            if (this.h != null) {
                aw.u().a(this.h, view);
                aw.u().a(this.h);
                this.l = true;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.internal.ads.apf
    public final void H() {
        throw new IllegalStateException("Interstitial is NOT supported by BannerAdManager.");
    }

    @Override // com.google.android.gms.internal.ads.o
    public final void K() {
        this.f2984d.d();
    }

    @Override // com.google.android.gms.ads.internal.ba
    protected final boolean W() {
        boolean z = true;
        aw.e();
        if (!jm.a(this.e.f3036c, "android.permission.INTERNET")) {
            aoo.a().a(this.e.f, this.e.i, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
            z = false;
        }
        aw.e();
        if (!jm.a(this.e.f3036c)) {
            aoo.a().a(this.e.f, this.e.i, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
            z = false;
        }
        if (!z && this.e.f != null) {
            this.e.f.setVisibility(0);
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.bf
    protected final qd a(ij ijVar, bu buVar, ht htVar) throws qo {
        com.google.android.gms.ads.d dVarB;
        zzjn zzjnVar;
        if (this.e.i.g == null && this.e.i.i) {
            ax axVar = this.e;
            if (ijVar.f5118b.y) {
                zzjnVar = this.e.i;
            } else {
                String str = ijVar.f5118b.l;
                if (str != null) {
                    String[] strArrSplit = str.split("[xX]");
                    strArrSplit[0] = strArrSplit[0].trim();
                    strArrSplit[1] = strArrSplit[1].trim();
                    dVarB = new com.google.android.gms.ads.d(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]));
                } else {
                    dVarB = this.e.i.b();
                }
                zzjnVar = new zzjn(this.e.f3036c, dVarB);
            }
            axVar.i = zzjnVar;
        }
        return super.a(ijVar, buVar, htVar);
    }

    @Override // com.google.android.gms.ads.internal.ba
    protected final void a(ii iiVar, boolean z) {
        if (L()) {
            qd qdVar = iiVar != null ? iiVar.f5114b : null;
            if (qdVar != null) {
                if (!this.l) {
                    c(qdVar);
                }
                if (this.h != null) {
                    qdVar.a("onSdkImpression", new android.support.v4.g.a());
                }
            }
        }
        super.a(iiVar, z);
        if (s.b(iiVar)) {
            d dVar = new d(this);
            if (iiVar == null || !s.b(iiVar)) {
                return;
            }
            qd qdVar2 = iiVar.f5114b;
            View view = qdVar2 != null ? qdVar2.getView() : null;
            if (view == null) {
                jd.e("AdWebView is null");
                return;
            }
            try {
                List<String> list = iiVar.o != null ? iiVar.o.r : null;
                if (list == null || list.isEmpty()) {
                    jd.e("No template ids present in mediation response");
                    return;
                }
                bcg bcgVarH = iiVar.p != null ? iiVar.p.h() : null;
                bck bckVarI = iiVar.p != null ? iiVar.p.i() : null;
                if (list.contains("2") && bcgVarH != null) {
                    bcgVarH.b(com.google.android.gms.b.b.a(view));
                    if (!bcgVarH.j()) {
                        bcgVarH.i();
                    }
                    qdVar2.a("/nativeExpressViewClicked", s.a(bcgVarH, (bck) null, dVar));
                    return;
                }
                if (!list.contains("1") || bckVarI == null) {
                    jd.e("No matching template id and mapper");
                    return;
                }
                bckVarI.b(com.google.android.gms.b.b.a(view));
                if (!bckVarI.h()) {
                    bckVarI.g();
                }
                qdVar2.a("/nativeExpressViewClicked", s.a((bcg) null, bckVarI, dVar));
            } catch (RemoteException e) {
                jd.c("Error occurred while recording impression and registering for clicks", e);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0149  */
    @Override // com.google.android.gms.ads.internal.bf, com.google.android.gms.ads.internal.ba, com.google.android.gms.ads.internal.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(com.google.android.gms.internal.ads.ii r6, final com.google.android.gms.internal.ads.ii r7) {
        /*
            Method dump skipped, instruction units count: 331
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.bv.a(com.google.android.gms.internal.ads.ii, com.google.android.gms.internal.ads.ii):boolean");
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final void b(boolean z) {
        com.google.android.gms.common.internal.w.b("setManualImpressionsEnabled must be called from the main thread.");
        this.k = z;
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final boolean b(zzjj zzjjVar) {
        if (zzjjVar.h != this.k) {
            zzjjVar = new zzjj(zzjjVar.f5799a, zzjjVar.f5800b, zzjjVar.f5801c, zzjjVar.f5802d, zzjjVar.e, zzjjVar.f, zzjjVar.g, zzjjVar.h || this.k, zzjjVar.i, zzjjVar.j, zzjjVar.k, zzjjVar.l, zzjjVar.m, zzjjVar.n, zzjjVar.o, zzjjVar.p, zzjjVar.q, zzjjVar.r);
        }
        return super.b(zzjjVar);
    }

    final void d(ii iiVar) {
        if (iiVar == null || iiVar.m || this.e.f == null || !aw.e().a(this.e.f, this.e.f3036c) || !this.e.f.getGlobalVisibleRect(new Rect(), null)) {
            return;
        }
        if (iiVar != null && iiVar.f5114b != null && iiVar.f5114b.v() != null) {
            iiVar.f5114b.v().a((rp) null);
        }
        a(iiVar, false);
        iiVar.m = true;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        d(this.e.j);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        d(this.e.j);
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final aqc s() {
        com.google.android.gms.common.internal.w.b("getVideoController must be called from the main thread.");
        if (this.e.j == null || this.e.j.f5114b == null) {
            return null;
        }
        return this.e.j.f5114b.b();
    }

    @Override // com.google.android.gms.ads.internal.bf, com.google.android.gms.ads.internal.a
    protected final void w() {
        qd qdVar = this.e.j != null ? this.e.j.f5114b : null;
        if (!this.l && qdVar != null) {
            c(qdVar);
        }
        super.w();
    }
}
