package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import android.net.http.SslError;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public class qe extends WebViewClient implements rl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f5464b = {"UNKNOWN", "HOST_LOOKUP", "UNSUPPORTED_AUTH_SCHEME", "AUTHENTICATION", "PROXY_AUTHENTICATION", "CONNECT", "IO", "TIMEOUT", "REDIRECT_LOOP", "UNSUPPORTED_SCHEME", "FAILED_SSL_HANDSHAKE", "BAD_URL", "FILE", "FILE_NOT_FOUND", "TOO_MANY_REQUESTS"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f5465c = {"NOT_YET_VALID", "EXPIRED", "ID_MISMATCH", "UNTRUSTED", "DATE_INVALID", "INVALID"};
    private boolean A;
    private boolean B;
    private int C;
    private View.OnAttachStateChangeListener D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected ht f5466a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private qd f5467d;
    private final HashMap<String, List<com.google.android.gms.ads.internal.gmsg.ae<? super qd>>> e;
    private final Object f;
    private anv g;
    private com.google.android.gms.ads.internal.overlay.m h;
    private rm i;
    private rn j;
    private com.google.android.gms.ads.internal.gmsg.k k;
    private com.google.android.gms.ads.internal.gmsg.m l;
    private ro m;
    private boolean n;
    private com.google.android.gms.ads.internal.gmsg.ai o;

    @GuardedBy("mLock")
    private boolean p;

    @GuardedBy("mLock")
    private boolean q;

    @GuardedBy("mLock")
    private ViewTreeObserver.OnGlobalLayoutListener r;

    @GuardedBy("mLock")
    private ViewTreeObserver.OnScrollChangedListener s;

    @GuardedBy("mLock")
    private boolean t;
    private com.google.android.gms.ads.internal.overlay.s u;
    private final m v;
    private com.google.android.gms.ads.internal.bu w;
    private d x;
    private o y;
    private rp z;

    public qe(qd qdVar, boolean z) {
        this(qdVar, z, new m(qdVar, qdVar.q(), new aqz(qdVar.getContext())), null);
    }

    private qe(qd qdVar, boolean z, m mVar, d dVar) {
        this.e = new HashMap<>();
        this.f = new Object();
        this.n = false;
        this.f5467d = qdVar;
        this.p = z;
        this.v = mVar;
        this.x = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void a(android.content.Context r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.are<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aro.bs
            com.google.android.gms.internal.ads.arm r1 = com.google.android.gms.internal.ads.aoo.f()
            java.lang.Object r0 = r1.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L13
        L12:
            return
        L13:
            android.os.Bundle r4 = new android.os.Bundle
            r4.<init>()
            java.lang.String r0 = "err"
            r4.putString(r0, r8)
            java.lang.String r0 = "code"
            r4.putString(r0, r9)
            java.lang.String r1 = "host"
            boolean r0 = android.text.TextUtils.isEmpty(r10)
            if (r0 != 0) goto L4f
            android.net.Uri r0 = android.net.Uri.parse(r10)
            java.lang.String r2 = r0.getHost()
            if (r2 == 0) goto L4f
            java.lang.String r0 = r0.getHost()
        L38:
            r4.putString(r1, r0)
            com.google.android.gms.internal.ads.jm r0 = com.google.android.gms.ads.internal.aw.e()
            com.google.android.gms.internal.ads.qd r1 = r6.f5467d
            com.google.android.gms.internal.ads.zzang r1 = r1.k()
            java.lang.String r2 = r1.f5784a
            java.lang.String r3 = "gmob-apps"
            r5 = 1
            r1 = r7
            r0.a(r1, r2, r3, r4, r5)
            goto L12
        L4f:
            java.lang.String r0 = ""
            goto L38
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.qe.a(android.content.Context, java.lang.String, java.lang.String, java.lang.String):void");
    }

    private final void a(Uri uri) {
        String path = uri.getPath();
        List<com.google.android.gms.ads.internal.gmsg.ae<? super qd>> list = this.e.get(path);
        if (list == null) {
            String strValueOf = String.valueOf(uri);
            jd.a(new StringBuilder(String.valueOf(strValueOf).length() + 32).append("No GMSG handler found for GMSG: ").append(strValueOf).toString());
            return;
        }
        com.google.android.gms.ads.internal.aw.e();
        Map<String, String> mapA = jm.a(uri);
        if (jd.a(2)) {
            String strValueOf2 = String.valueOf(path);
            jd.a(strValueOf2.length() != 0 ? "Received GMSG: ".concat(strValueOf2) : new String("Received GMSG: "));
            for (String str : mapA.keySet()) {
                String str2 = mapA.get(str);
                jd.a(new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length()).append("  ").append(str).append(": ").append(str2).toString());
            }
        }
        Iterator<com.google.android.gms.ads.internal.gmsg.ae<? super qd>> it = list.iterator();
        while (it.hasNext()) {
            it.next().zza(this.f5467d, mapA);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(View view, ht htVar, int i) {
        if (!htVar.b() || i <= 0) {
            return;
        }
        htVar.a(view);
        if (htVar.b()) {
            jm.f5184a.postDelayed(new qg(this, view, htVar, i), 100L);
        }
    }

    private final void a(AdOverlayInfoParcel adOverlayInfoParcel) {
        boolean zA = this.x != null ? this.x.a() : false;
        com.google.android.gms.ads.internal.aw.c();
        com.google.android.gms.ads.internal.overlay.k.a(this.f5467d.getContext(), adOverlayInfoParcel, zA ? false : true);
        if (this.f5466a != null) {
            String str = adOverlayInfoParcel.l;
            if (str == null && adOverlayInfoParcel.f3151a != null) {
                str = adOverlayInfoParcel.f3151a.f3180a;
            }
            this.f5466a.a(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00e7, code lost:
    
        com.google.android.gms.ads.internal.aw.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:?, code lost:
    
        return com.google.android.gms.internal.ads.jm.a(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final android.webkit.WebResourceResponse b(java.lang.String r10, java.util.Map<java.lang.String, java.lang.String> r11) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 262
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.qe.b(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    private final void p() {
        if (this.D == null) {
            return;
        }
        this.f5467d.getView().removeOnAttachStateChangeListener(this.D);
    }

    private final void q() {
        if (this.i != null && ((this.A && this.C <= 0) || this.B)) {
            this.i.a(!this.B);
            this.i = null;
        }
        this.f5467d.G();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final android.webkit.WebResourceResponse a(java.lang.String r6, java.util.Map<java.lang.String, java.lang.String> r7) {
        /*
            r5 = this;
            r1 = 0
            com.google.android.gms.internal.ads.qd r0 = r5.f5467d     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            java.lang.String r0 = com.google.android.gms.internal.ads.ic.a(r6, r0)     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            boolean r2 = r0.equals(r6)     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            if (r2 != 0) goto L16
            android.webkit.WebResourceResponse r0 = r5.b(r0, r7)     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
        L15:
            return r0
        L16:
            com.google.android.gms.internal.ads.zzhl r0 = com.google.android.gms.internal.ads.zzhl.a(r6)     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            if (r0 == 0) goto L46
            com.google.android.gms.internal.ads.alv r2 = com.google.android.gms.ads.internal.aw.k()     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            com.google.android.gms.internal.ads.zzhi r2 = r2.a(r0)     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            if (r2 == 0) goto L46
            boolean r0 = r2.a()     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            if (r0 == 0) goto L46
            android.webkit.WebResourceResponse r0 = new android.webkit.WebResourceResponse     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            java.lang.String r3 = ""
            java.lang.String r4 = ""
            java.io.InputStream r2 = r2.b()     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            r0.<init>(r3, r4, r2)     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            goto L15
        L3a:
            r0 = move-exception
        L3b:
            com.google.android.gms.internal.ads.in r2 = com.google.android.gms.ads.internal.aw.i()
            java.lang.String r3 = "AdWebViewClient.interceptRequest"
            r2.a(r0, r3)
            r0 = r1
            goto L15
        L46:
            boolean r0 = com.google.android.gms.internal.ads.mc.c()     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            if (r0 == 0) goto L63
            com.google.android.gms.internal.ads.are<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aro.bi     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            com.google.android.gms.internal.ads.arm r2 = com.google.android.gms.internal.ads.aoo.f()     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            java.lang.Object r0 = r2.a(r0)     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            if (r0 == 0) goto L63
            android.webkit.WebResourceResponse r0 = r5.b(r6, r7)     // Catch: java.lang.Exception -> L3a java.lang.NoClassDefFoundError -> L65
            goto L15
        L63:
            r0 = r1
            goto L15
        L65:
            r0 = move-exception
            goto L3b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.qe.a(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final com.google.android.gms.ads.internal.bu a() {
        return this.w;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void a(int i, int i2) {
        if (this.x != null) {
            this.x.a(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void a(int i, int i2, boolean z) {
        this.v.a(i, i2);
        if (this.x != null) {
            this.x.a(i, i2, z);
        }
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void a(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        synchronized (this.f) {
            this.q = true;
            this.f5467d.F();
            this.r = onGlobalLayoutListener;
            this.s = onScrollChangedListener;
        }
    }

    public final void a(zzc zzcVar) {
        boolean z = this.f5467d.z();
        a(new AdOverlayInfoParcel(zzcVar, (!z || this.f5467d.t().d()) ? this.g : null, z ? null : this.h, this.u, this.f5467d.k()));
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void a(anv anvVar, com.google.android.gms.ads.internal.gmsg.k kVar, com.google.android.gms.ads.internal.overlay.m mVar, com.google.android.gms.ads.internal.gmsg.m mVar2, com.google.android.gms.ads.internal.overlay.s sVar, boolean z, com.google.android.gms.ads.internal.gmsg.ai aiVar, com.google.android.gms.ads.internal.bu buVar, o oVar, ht htVar) {
        com.google.android.gms.ads.internal.bu buVar2 = buVar == null ? new com.google.android.gms.ads.internal.bu(this.f5467d.getContext(), htVar, null) : buVar;
        this.x = new d(this.f5467d, oVar);
        this.f5466a = htVar;
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
        a("/mraid", new com.google.android.gms.ads.internal.gmsg.d(buVar2, this.x, oVar));
        a("/mraidLoaded", this.v);
        a("/open", new com.google.android.gms.ads.internal.gmsg.e(this.f5467d.getContext(), this.f5467d.k(), this.f5467d.y(), sVar, anvVar, kVar, mVar2, mVar, buVar2, this.x));
        a("/precache", new ps());
        a("/touch", com.google.android.gms.ads.internal.gmsg.o.i);
        a("/video", com.google.android.gms.ads.internal.gmsg.o.l);
        a("/videoMeta", com.google.android.gms.ads.internal.gmsg.o.m);
        if (com.google.android.gms.ads.internal.aw.B().a(this.f5467d.getContext())) {
            a("/logScionEvent", new com.google.android.gms.ads.internal.gmsg.c(this.f5467d.getContext()));
        }
        if (aiVar != null) {
            a("/setInterstitialProperties", new com.google.android.gms.ads.internal.gmsg.ah(aiVar));
        }
        this.g = anvVar;
        this.h = mVar;
        this.k = kVar;
        this.l = mVar2;
        this.u = sVar;
        this.w = buVar2;
        this.y = oVar;
        this.o = aiVar;
        this.n = z;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void a(rm rmVar) {
        this.i = rmVar;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void a(rn rnVar) {
        this.j = rnVar;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void a(ro roVar) {
        this.m = roVar;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void a(rp rpVar) {
        this.z = rpVar;
    }

    public final void a(String str, com.google.android.gms.ads.internal.gmsg.ae<? super qd> aeVar) {
        synchronized (this.f) {
            List<com.google.android.gms.ads.internal.gmsg.ae<? super qd>> copyOnWriteArrayList = this.e.get(str);
            if (copyOnWriteArrayList == null) {
                copyOnWriteArrayList = new CopyOnWriteArrayList<>();
                this.e.put(str, copyOnWriteArrayList);
            }
            copyOnWriteArrayList.add(aeVar);
        }
    }

    public final void a(String str, com.google.android.gms.common.util.o<com.google.android.gms.ads.internal.gmsg.ae<? super qd>> oVar) {
        synchronized (this.f) {
            List<com.google.android.gms.ads.internal.gmsg.ae<? super qd>> list = this.e.get(str);
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (com.google.android.gms.ads.internal.gmsg.ae<? super qd> aeVar : list) {
                if (oVar.a(aeVar)) {
                    arrayList.add(aeVar);
                }
            }
            list.removeAll(arrayList);
        }
    }

    public final void a(boolean z) {
        this.n = z;
    }

    public final void a(boolean z, int i) {
        a(new AdOverlayInfoParcel((!this.f5467d.z() || this.f5467d.t().d()) ? this.g : null, this.h, this.u, this.f5467d, z, i, this.f5467d.k()));
    }

    public final void a(boolean z, int i, String str) {
        boolean z2 = this.f5467d.z();
        a(new AdOverlayInfoParcel((!z2 || this.f5467d.t().d()) ? this.g : null, z2 ? null : new qj(this.f5467d, this.h), this.k, this.l, this.u, this.f5467d, z, i, str, this.f5467d.k()));
    }

    public final void a(boolean z, int i, String str, String str2) {
        boolean z2 = this.f5467d.z();
        a(new AdOverlayInfoParcel((!z2 || this.f5467d.t().d()) ? this.g : null, z2 ? null : new qj(this.f5467d, this.h), this.k, this.l, this.u, this.f5467d, z, i, str, str2, this.f5467d.k()));
    }

    public final void b(String str, com.google.android.gms.ads.internal.gmsg.ae<? super qd> aeVar) {
        synchronized (this.f) {
            List<com.google.android.gms.ads.internal.gmsg.ae<? super qd>> list = this.e.get(str);
            if (list == null) {
                return;
            }
            list.remove(aeVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final boolean b() {
        boolean z;
        synchronized (this.f) {
            z = this.p;
        }
        return z;
    }

    public final boolean c() {
        boolean z;
        synchronized (this.f) {
            z = this.q;
        }
        return z;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener d() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
        synchronized (this.f) {
            onGlobalLayoutListener = this.r;
        }
        return onGlobalLayoutListener;
    }

    public final ViewTreeObserver.OnScrollChangedListener e() {
        ViewTreeObserver.OnScrollChangedListener onScrollChangedListener;
        synchronized (this.f) {
            onScrollChangedListener = this.s;
        }
        return onScrollChangedListener;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final boolean f() {
        boolean z;
        synchronized (this.f) {
            z = this.t;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void g() {
        ht htVar = this.f5466a;
        if (htVar != null) {
            WebView webView = this.f5467d.getWebView();
            if (android.support.v4.view.s.y(webView)) {
                a(webView, htVar, 10);
                return;
            }
            p();
            this.D = new qi(this, htVar);
            this.f5467d.getView().addOnAttachStateChangeListener(this.D);
        }
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void h() {
        synchronized (this.f) {
            this.t = true;
        }
        this.C++;
        q();
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void i() {
        this.C--;
        q();
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void j() {
        this.B = true;
        q();
    }

    public final void k() {
        if (this.f5466a != null) {
            this.f5466a.d();
            this.f5466a = null;
        }
        p();
        synchronized (this.f) {
            this.e.clear();
            this.g = null;
            this.h = null;
            this.i = null;
            this.j = null;
            this.k = null;
            this.l = null;
            this.n = false;
            this.p = false;
            this.q = false;
            this.t = false;
            this.u = null;
            this.m = null;
            if (this.x != null) {
                this.x.a(true);
                this.x = null;
            }
        }
    }

    public final rp l() {
        return this.z;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final ht m() {
        return this.f5466a;
    }

    @Override // com.google.android.gms.internal.ads.rl
    public final void n() {
        synchronized (this.f) {
            this.n = false;
            this.p = true;
            nj.f5346a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.qf

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final qe f5468a;

                {
                    this.f5468a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f5468a.o();
                }
            });
        }
    }

    final /* synthetic */ void o() {
        this.f5467d.F();
        com.google.android.gms.ads.internal.overlay.c cVarR = this.f5467d.r();
        if (cVarR != null) {
            cVarR.m();
        }
        if (this.m != null) {
            this.m.a();
            this.m = null;
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        String strValueOf = String.valueOf(str);
        jd.a(strValueOf.length() != 0 ? "Loading resource: ".concat(strValueOf) : new String("Loading resource: "));
        Uri uri = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uri.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            a(uri);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.f) {
            if (this.f5467d.A()) {
                jd.a("Blank page loaded, 1...");
                this.f5467d.B();
                return;
            }
            this.A = true;
            if (this.j != null) {
                this.j.a();
                this.j = null;
            }
            q();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        a(this.f5467d.getContext(), "http_err", (i >= 0 || (-i) + (-1) >= f5464b.length) ? String.valueOf(i) : f5464b[(-i) - 1], str2);
        super.onReceivedError(webView, i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslError != null) {
            int primaryError = sslError.getPrimaryError();
            a(this.f5467d.getContext(), "ssl_err", (primaryError < 0 || primaryError >= f5465c.length) ? String.valueOf(primaryError) : f5465c[primaryError], com.google.android.gms.ads.internal.aw.g().a(sslError));
        }
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(11)
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return a(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        switch (keyEvent.getKeyCode()) {
            case 79:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 126:
            case 127:
            case 128:
            case 129:
            case 130:
            case 222:
                return true;
            default:
                return false;
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Uri uri;
        String strValueOf = String.valueOf(str);
        jd.a(strValueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(strValueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri uriA = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uriA.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uriA.getHost())) {
            a(uriA);
        } else {
            if (this.n && webView == this.f5467d.getWebView()) {
                String scheme = uriA.getScheme();
                if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    if (this.g != null) {
                        if (((Boolean) aoo.f().a(aro.aj)).booleanValue()) {
                            this.g.onAdClicked();
                            if (this.f5466a != null) {
                                this.f5466a.a(str);
                            }
                            this.g = null;
                        }
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            if (this.f5467d.getWebView().willNotDraw()) {
                String strValueOf2 = String.valueOf(str);
                jd.e(strValueOf2.length() != 0 ? "AdWebView unable to handle URL: ".concat(strValueOf2) : new String("AdWebView unable to handle URL: "));
            } else {
                try {
                    agv agvVarY = this.f5467d.y();
                    if (agvVarY != null && agvVarY.a(uriA)) {
                        uriA = agvVarY.a(uriA, this.f5467d.getContext(), this.f5467d.getView(), this.f5467d.d());
                    }
                    uri = uriA;
                } catch (agw e) {
                    String strValueOf3 = String.valueOf(str);
                    jd.e(strValueOf3.length() != 0 ? "Unable to append parameter to URL: ".concat(strValueOf3) : new String("Unable to append parameter to URL: "));
                    uri = uriA;
                }
                if (this.w == null || this.w.b()) {
                    a(new zzc("android.intent.action.VIEW", uri.toString(), null, null, null, null, null));
                } else {
                    this.w.a(str);
                }
            }
        }
        return true;
    }
}
