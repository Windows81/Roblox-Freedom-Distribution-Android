package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzc;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class rs extends ayw<qd> implements rl, sg, si, sk, sl {
    private View.OnAttachStateChangeListener A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private qd f5517a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f5518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private anv f5519c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.android.gms.ads.internal.overlay.m f5520d;
    private rm e;
    private rn f;
    private com.google.android.gms.ads.internal.gmsg.k g;
    private com.google.android.gms.ads.internal.gmsg.m h;
    private ro i;
    private boolean j;
    private com.google.android.gms.ads.internal.gmsg.ai k;
    private boolean l;
    private boolean m;
    private ViewTreeObserver.OnGlobalLayoutListener n;
    private ViewTreeObserver.OnScrollChangedListener o;
    private boolean p;
    private com.google.android.gms.ads.internal.overlay.s q;
    private final m r;
    private com.google.android.gms.ads.internal.bu s;
    private d t;
    private o u;
    private rp v;
    private ht w;
    private boolean x;
    private boolean y;
    private int z;

    public rs(qd qdVar, boolean z) {
        this(qdVar, z, new m(qdVar, qdVar.q(), new aqz(qdVar.getContext())), null);
    }

    private rs(qd qdVar, boolean z, m mVar, d dVar) {
        this.f5518b = new Object();
        this.j = false;
        this.f5517a = qdVar;
        this.l = z;
        this.r = mVar;
        this.t = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(View view, ht htVar, int i) {
        if (!htVar.b() || i <= 0) {
            return;
        }
        htVar.a(view);
        if (htVar.b()) {
            jm.f5184a.postDelayed(new ru(this, view, htVar, i), 100L);
        }
    }

    private final void a(AdOverlayInfoParcel adOverlayInfoParcel) {
        boolean zA = this.t != null ? this.t.a() : false;
        com.google.android.gms.ads.internal.aw.c();
        com.google.android.gms.ads.internal.overlay.k.a(this.f5517a.getContext(), adOverlayInfoParcel, zA ? false : true);
        if (this.w != null) {
            String str = adOverlayInfoParcel.l;
            if (str == null && adOverlayInfoParcel.f3151a != null) {
                str = adOverlayInfoParcel.f3151a.f3180a;
            }
            this.w.a(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00eb, code lost:
    
        com.google.android.gms.ads.internal.aw.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:?, code lost:
    
        return com.google.android.gms.internal.ads.jm.a(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final android.webkit.WebResourceResponse e(com.google.android.gms.internal.ads.sd r10) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.rs.e(com.google.android.gms.internal.ads.sd):android.webkit.WebResourceResponse");
    }

    private final void q() {
        if (this.A == null) {
            return;
        }
        this.f5517a.getView().removeOnAttachStateChangeListener(this.A);
    }

    private final void r() {
        if (this.e != null && ((this.x && this.z <= 0) || this.y)) {
            this.e.a(!this.y);
            this.e = null;
        }
        this.f5517a.G();
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final com.google.android.gms.ads.internal.bu a() {
        return this.s;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void a(int i, int i2) {
        if (this.t != null) {
            this.t.a(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void a(int i, int i2, boolean z) {
        this.r.a(i, i2);
        if (this.t != null) {
            this.t.a(i, i2, z);
        }
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void a(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        synchronized (this.f5518b) {
            this.m = true;
            this.f5517a.F();
            this.n = onGlobalLayoutListener;
            this.o = onScrollChangedListener;
        }
    }

    public final void a(zzc zzcVar) {
        boolean z = this.f5517a.z();
        a(new AdOverlayInfoParcel(zzcVar, (!z || this.f5517a.t().d()) ? this.f5519c : null, z ? null : this.f5520d, this.q, this.f5517a.k()));
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void a(anv anvVar, com.google.android.gms.ads.internal.gmsg.k kVar, com.google.android.gms.ads.internal.overlay.m mVar, com.google.android.gms.ads.internal.gmsg.m mVar2, com.google.android.gms.ads.internal.overlay.s sVar, boolean z, com.google.android.gms.ads.internal.gmsg.ai aiVar, com.google.android.gms.ads.internal.bu buVar, o oVar, ht htVar) {
        com.google.android.gms.ads.internal.bu buVar2 = buVar == null ? new com.google.android.gms.ads.internal.bu(this.f5517a.getContext(), htVar, null) : buVar;
        this.t = new d(this.f5517a, oVar);
        this.w = htVar;
        if (((Boolean) aoo.f().a(aro.aF)).booleanValue()) {
            a("/adMetadata", new com.google.android.gms.ads.internal.gmsg.a(kVar));
        }
        a("/appEvent", new com.google.android.gms.ads.internal.gmsg.l(mVar2));
        a("/backButton", com.google.android.gms.ads.internal.gmsg.o.j);
        a("/refresh", com.google.android.gms.ads.internal.gmsg.o.k);
        a("/canOpenURLs", com.google.android.gms.ads.internal.gmsg.o.f3122a);
        a("/canOpenIntents", com.google.android.gms.ads.internal.gmsg.o.f3123b);
        a("/click", com.google.android.gms.ads.internal.gmsg.o.f3124c);
        a("/close", com.google.android.gms.ads.internal.gmsg.o.f3125d);
        a("/customClose", com.google.android.gms.ads.internal.gmsg.o.e);
        a("/instrument", com.google.android.gms.ads.internal.gmsg.o.n);
        a("/delayPageLoaded", com.google.android.gms.ads.internal.gmsg.o.p);
        a("/delayPageClosed", com.google.android.gms.ads.internal.gmsg.o.q);
        a("/getLocationInfo", com.google.android.gms.ads.internal.gmsg.o.r);
        a("/httpTrack", com.google.android.gms.ads.internal.gmsg.o.f);
        a("/log", com.google.android.gms.ads.internal.gmsg.o.g);
        a("/mraid", new com.google.android.gms.ads.internal.gmsg.d(buVar2, this.t, oVar));
        a("/mraidLoaded", this.r);
        a("/open", new com.google.android.gms.ads.internal.gmsg.e(this.f5517a.getContext(), this.f5517a.k(), this.f5517a.y(), sVar, anvVar, kVar, mVar2, mVar, buVar2, this.t));
        a("/precache", new ps());
        a("/touch", com.google.android.gms.ads.internal.gmsg.o.i);
        a("/video", com.google.android.gms.ads.internal.gmsg.o.l);
        a("/videoMeta", com.google.android.gms.ads.internal.gmsg.o.m);
        if (com.google.android.gms.ads.internal.aw.B().a(this.f5517a.getContext())) {
            a("/logScionEvent", new com.google.android.gms.ads.internal.gmsg.c(this.f5517a.getContext()));
        }
        if (aiVar != null) {
            a("/setInterstitialProperties", new com.google.android.gms.ads.internal.gmsg.ah(aiVar));
        }
        this.f5519c = anvVar;
        this.f5520d = mVar;
        this.g = kVar;
        this.h = mVar2;
        this.q = sVar;
        this.s = buVar2;
        this.u = oVar;
        this.k = aiVar;
        this.j = z;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void a(rm rmVar) {
        this.e = rmVar;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void a(rn rnVar) {
        this.f = rnVar;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void a(ro roVar) {
        this.i = roVar;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void a(rp rpVar) {
        this.v = rpVar;
    }

    @Override // com.google.android.gms.internal.ads.sk
    public final void a(sd sdVar) {
        this.x = true;
        if (this.f != null) {
            this.f.a();
            this.f = null;
        }
        r();
    }

    public final void a(boolean z) {
        this.j = z;
    }

    public final void a(boolean z, int i) {
        a(new AdOverlayInfoParcel((!this.f5517a.z() || this.f5517a.t().d()) ? this.f5519c : null, this.f5520d, this.q, this.f5517a, z, i, this.f5517a.k()));
    }

    public final void a(boolean z, int i, String str) {
        boolean z2 = this.f5517a.z();
        a(new AdOverlayInfoParcel((!z2 || this.f5517a.t().d()) ? this.f5519c : null, z2 ? null : new rw(this.f5517a, this.f5520d), this.g, this.h, this.q, this.f5517a, z, i, str, this.f5517a.k()));
    }

    public final void a(boolean z, int i, String str, String str2) {
        boolean z2 = this.f5517a.z();
        a(new AdOverlayInfoParcel((!z2 || this.f5517a.t().d()) ? this.f5519c : null, z2 ? null : new rw(this.f5517a, this.f5520d), this.g, this.h, this.q, this.f5517a, z, i, str, str2, this.f5517a.k()));
    }

    @Override // com.google.android.gms.internal.ads.si
    public final void b(sd sdVar) {
        a(sdVar.f5547b);
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final boolean b() {
        boolean z;
        synchronized (this.f5518b) {
            z = this.l;
        }
        return z;
    }

    public final boolean c() {
        boolean z;
        synchronized (this.f5518b) {
            z = this.m;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.sg
    public final boolean c(sd sdVar) {
        Uri uri;
        String strValueOf = String.valueOf(sdVar.f5546a);
        jd.a(strValueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(strValueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri uriA = sdVar.f5547b;
        if (a(uriA)) {
            return true;
        }
        if (this.j) {
            String scheme = uriA.getScheme();
            if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                if (this.f5519c != null) {
                    if (((Boolean) aoo.f().a(aro.aj)).booleanValue()) {
                        this.f5519c.onAdClicked();
                        if (this.w != null) {
                            this.w.a(sdVar.f5546a);
                        }
                        this.f5519c = null;
                    }
                }
                return false;
            }
        }
        if (this.f5517a.getWebView().willNotDraw()) {
            String strValueOf2 = String.valueOf(sdVar.f5546a);
            jd.e(strValueOf2.length() != 0 ? "AdWebView unable to handle URL: ".concat(strValueOf2) : new String("AdWebView unable to handle URL: "));
        } else {
            try {
                agv agvVarY = this.f5517a.y();
                if (agvVarY != null && agvVarY.a(uriA)) {
                    uriA = agvVarY.a(uriA, this.f5517a.getContext(), this.f5517a.getView(), this.f5517a.d());
                }
                uri = uriA;
            } catch (agw e) {
                String strValueOf3 = String.valueOf(sdVar.f5546a);
                jd.e(strValueOf3.length() != 0 ? "Unable to append parameter to URL: ".concat(strValueOf3) : new String("Unable to append parameter to URL: "));
                uri = uriA;
            }
            if (this.s == null || this.s.b()) {
                a(new zzc("android.intent.action.VIEW", uri.toString(), null, null, null, null, null));
            } else {
                this.s.a(sdVar.f5546a);
            }
        }
        return true;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener d() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
        synchronized (this.f5518b) {
            onGlobalLayoutListener = this.n;
        }
        return onGlobalLayoutListener;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00e4  */
    @Override // com.google.android.gms.internal.ads.sl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.webkit.WebResourceResponse d(com.google.android.gms.internal.ads.sd r6) {
        /*
            Method dump skipped, instruction units count: 233
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.rs.d(com.google.android.gms.internal.ads.sd):android.webkit.WebResourceResponse");
    }

    public final ViewTreeObserver.OnScrollChangedListener e() {
        ViewTreeObserver.OnScrollChangedListener onScrollChangedListener;
        synchronized (this.f5518b) {
            onScrollChangedListener = this.o;
        }
        return onScrollChangedListener;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final boolean f() {
        boolean z;
        synchronized (this.f5518b) {
            z = this.p;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void g() {
        ht htVar = this.w;
        if (htVar != null) {
            WebView webView = this.f5517a.getWebView();
            if (android.support.v4.view.s.y(webView)) {
                a(webView, htVar, 10);
                return;
            }
            q();
            this.A = new rv(this, htVar);
            this.f5517a.getView().addOnAttachStateChangeListener(this.A);
        }
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void h() {
        synchronized (this.f5518b) {
            this.p = true;
        }
        this.z++;
        r();
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void i() {
        this.z--;
        r();
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void j() {
        this.y = true;
        r();
    }

    @Override // com.google.android.gms.internal.ads.ayw
    public final void k() {
        if (this.w != null) {
            this.w.d();
            this.w = null;
        }
        q();
        super.k();
        synchronized (this.f5518b) {
            this.f5519c = null;
            this.f5520d = null;
            this.e = null;
            this.f = null;
            this.g = null;
            this.h = null;
            this.j = false;
            this.l = false;
            this.m = false;
            this.p = false;
            this.q = null;
            this.i = null;
            if (this.t != null) {
                this.t.a(true);
                this.t = null;
            }
        }
    }

    public final rp l() {
        return this.v;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final ht m() {
        return this.w;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void n() {
        synchronized (this.f5518b) {
            this.j = false;
            this.l = true;
            nj.f5346a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.rt

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final rs f5521a;

                {
                    this.f5521a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f5521a.p();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.ayw
    public final /* synthetic */ qd o() {
        return this.f5517a;
    }

    final /* synthetic */ void p() {
        this.f5517a.F();
        com.google.android.gms.ads.internal.overlay.c cVarR = this.f5517a.r();
        if (cVarR != null) {
            cVarR.m();
        }
        if (this.i != null) {
            this.i.a();
            this.i = null;
        }
    }
}
