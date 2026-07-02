package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.internal.ads.amk;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import microsoft.aspnet.signalr.client.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
final class qq extends WebView implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, qd {

    @GuardedBy("this")
    private int A;

    @GuardedBy("this")
    private int B;
    private arz C;
    private arz D;
    private arz E;
    private asa F;
    private WeakReference<View.OnClickListener> G;

    @GuardedBy("this")
    private com.google.android.gms.ads.internal.overlay.c H;

    @GuardedBy("this")
    private boolean I;
    private lx J;
    private int K;
    private int L;
    private int M;
    private int N;
    private Map<String, po> O;
    private final WindowManager P;
    private final ami Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final rq f5488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final agv f5489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzang f5490c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.ap f5491d;
    private final com.google.android.gms.ads.internal.bt e;
    private final DisplayMetrics f;
    private final float g;
    private boolean h;
    private boolean i;
    private qe j;

    @GuardedBy("this")
    private com.google.android.gms.ads.internal.overlay.c k;

    @GuardedBy("this")
    private rr l;

    @GuardedBy("this")
    private String m;

    @GuardedBy("this")
    private boolean n;

    @GuardedBy("this")
    private boolean o;

    @GuardedBy("this")
    private boolean p;

    @GuardedBy("this")
    private boolean q;

    @GuardedBy("this")
    private Boolean r;

    @GuardedBy("this")
    private int s;

    @GuardedBy("this")
    private boolean t;

    @GuardedBy("this")
    private boolean u;

    @GuardedBy("this")
    private String v;

    @GuardedBy("this")
    private qt w;

    @GuardedBy("this")
    private boolean x;

    @GuardedBy("this")
    private boolean y;

    @GuardedBy("this")
    private atc z;

    private qq(rq rqVar, rr rrVar, String str, boolean z, boolean z2, agv agvVar, zzang zzangVar, asb asbVar, com.google.android.gms.ads.internal.ap apVar, com.google.android.gms.ads.internal.bt btVar, ami amiVar) {
        super(rqVar);
        this.h = false;
        this.i = false;
        this.t = true;
        this.u = false;
        this.v = "";
        this.K = -1;
        this.L = -1;
        this.M = -1;
        this.N = -1;
        this.f5488a = rqVar;
        this.l = rrVar;
        this.m = str;
        this.p = z;
        this.s = -1;
        this.f5489b = agvVar;
        this.f5490c = zzangVar;
        this.f5491d = apVar;
        this.e = btVar;
        this.P = (WindowManager) getContext().getSystemService("window");
        com.google.android.gms.ads.internal.aw.e();
        this.f = jm.a(this.P);
        this.g = this.f.density;
        this.Q = amiVar;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            jd.b("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        com.google.android.gms.ads.internal.aw.e().a(rqVar, zzangVar.f5784a, settings);
        com.google.android.gms.ads.internal.aw.g().a(getContext(), settings);
        setDownloadListener(this);
        O();
        if (com.google.android.gms.common.util.n.e()) {
            addJavascriptInterface(qw.a(this), "googleAdsJsInterface");
        }
        if (com.google.android.gms.common.util.n.a()) {
            removeJavascriptInterface("accessibility");
            removeJavascriptInterface("accessibilityTraversal");
        }
        this.J = new lx(this.f5488a.a(), this, this, null);
        T();
        this.F = new asa(new asb(true, "make_wv", this.m));
        this.F.a().a(asbVar);
        this.D = aru.a(this.F.a());
        this.F.a("native:view_create", this.D);
        this.E = null;
        this.C = null;
        com.google.android.gms.ads.internal.aw.g().b(rqVar);
        com.google.android.gms.ads.internal.aw.i().i();
    }

    private final boolean K() {
        int iB;
        int iB2;
        if (!this.j.b() && !this.j.c()) {
            return false;
        }
        aoo.a();
        int iB3 = ly.b(this.f, this.f.widthPixels);
        aoo.a();
        int iB4 = ly.b(this.f, this.f.heightPixels);
        Activity activityA = this.f5488a.a();
        if (activityA == null || activityA.getWindow() == null) {
            iB = iB4;
            iB2 = iB3;
        } else {
            com.google.android.gms.ads.internal.aw.e();
            int[] iArrA = jm.a(activityA);
            aoo.a();
            iB2 = ly.b(this.f, iArrA[0]);
            aoo.a();
            iB = ly.b(this.f, iArrA[1]);
        }
        if (this.L == iB3 && this.K == iB4 && this.M == iB2 && this.N == iB) {
            return false;
        }
        boolean z = (this.L == iB3 && this.K == iB4) ? false : true;
        this.L = iB3;
        this.K = iB4;
        this.M = iB2;
        this.N = iB;
        new n(this).a(iB3, iB4, iB2, iB, this.f.density, this.P.getDefaultDisplay().getRotation());
        return z;
    }

    private final synchronized void L() {
        this.r = com.google.android.gms.ads.internal.aw.i().c();
        if (this.r == null) {
            try {
                evaluateJavascript("(function(){})()", null);
                a((Boolean) true);
            } catch (IllegalStateException e) {
                a((Boolean) false);
            }
        }
    }

    private final synchronized Boolean M() {
        return this.r;
    }

    private final void N() {
        aru.a(this.F.a(), this.D, "aeh2");
    }

    private final synchronized void O() {
        if (this.p || this.l.d()) {
            jd.b("Enabling hardware acceleration on an overlay.");
            Q();
        } else if (Build.VERSION.SDK_INT < 18) {
            jd.b("Disabling hardware acceleration on an AdView.");
            P();
        } else {
            jd.b("Enabling hardware acceleration on an AdView.");
            Q();
        }
    }

    private final synchronized void P() {
        if (!this.q) {
            com.google.android.gms.ads.internal.aw.g().c(this);
        }
        this.q = true;
    }

    private final synchronized void Q() {
        if (this.q) {
            com.google.android.gms.ads.internal.aw.g().b((View) this);
        }
        this.q = false;
    }

    private final synchronized void R() {
        if (!this.I) {
            this.I = true;
            com.google.android.gms.ads.internal.aw.i().j();
        }
    }

    private final synchronized void S() {
        this.O = null;
    }

    private final void T() {
        asb asbVarA;
        if (this.F == null || (asbVarA = this.F.a()) == null || com.google.android.gms.ads.internal.aw.i().b() == null) {
            return;
        }
        com.google.android.gms.ads.internal.aw.i().b().a(asbVarA);
    }

    static qq a(Context context, rr rrVar, String str, boolean z, boolean z2, agv agvVar, zzang zzangVar, asb asbVar, com.google.android.gms.ads.internal.ap apVar, com.google.android.gms.ads.internal.bt btVar, ami amiVar) {
        return new qq(new rq(context), rrVar, str, z, z2, agvVar, zzangVar, asbVar, apVar, btVar, amiVar);
    }

    private final void a(Boolean bool) {
        synchronized (this) {
            this.r = bool;
        }
        com.google.android.gms.ads.internal.aw.i().a(bool);
    }

    @TargetApi(19)
    private final synchronized void a(String str, ValueCallback<String> valueCallback) {
        if (A()) {
            jd.e("#004 The webview is destroyed. Ignoring action.");
        } else {
            evaluateJavascript(str, null);
        }
    }

    private final synchronized void c(String str) {
        if (A()) {
            jd.e("#004 The webview is destroyed. Ignoring action.");
        } else {
            loadUrl(str);
        }
    }

    private final synchronized void d(String str) {
        try {
            super.loadUrl(str);
        } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError | UnsatisfiedLinkError e) {
            com.google.android.gms.ads.internal.aw.i().a(e, "AdWebViewImpl.loadUrlUnsafe");
            jd.c("Could not call loadUrl. ", e);
        }
    }

    private final void e(String str) {
        if (!com.google.android.gms.common.util.n.g()) {
            String strValueOf = String.valueOf(str);
            c(strValueOf.length() != 0 ? "javascript:".concat(strValueOf) : new String("javascript:"));
            return;
        }
        if (M() == null) {
            L();
        }
        if (M().booleanValue()) {
            a(str, (ValueCallback<String>) null);
        } else {
            String strValueOf2 = String.valueOf(str);
            c(strValueOf2.length() != 0 ? "javascript:".concat(strValueOf2) : new String("javascript:"));
        }
    }

    private final void f(boolean z) {
        HashMap map = new HashMap();
        map.put("isVisible", z ? "1" : "0");
        a("onAdVisibilityChanged", map);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized boolean A() {
        return this.o;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void B() {
        jd.a("Destroying WebView!");
        R();
        jm.f5184a.post(new qs(this));
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized boolean C() {
        return this.t;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized boolean D() {
        return this.u;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized boolean E() {
        return this.A > 0;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void F() {
        this.J.a();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void G() {
        if (this.E == null) {
            this.E = aru.a(this.F.a());
            this.F.a("native:view_load", this.E);
        }
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized atc H() {
        return this.z;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void I() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void J() {
        jd.a("Cannot add text view to inner AdWebView");
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final ot a() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void a(int i) {
        if (i == 0) {
            aru.a(this.F.a(), this.D, "aebb2");
        }
        N();
        if (this.F.a() != null) {
            this.F.a().a("close_type", String.valueOf(i));
        }
        HashMap map = new HashMap(2);
        map.put("closetype", String.valueOf(i));
        map.put("version", this.f5490c.f5784a);
        a("onhide", map);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void a(Context context) {
        this.f5488a.setBaseContext(context);
        this.J.a(this.f5488a.a());
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void a(com.google.android.gms.ads.internal.overlay.c cVar) {
        this.k = cVar;
    }

    @Override // com.google.android.gms.internal.ads.re
    public final void a(zzc zzcVar) {
        this.j.a(zzcVar);
    }

    @Override // com.google.android.gms.internal.ads.akj
    public final void a(aki akiVar) {
        synchronized (this) {
            this.x = akiVar.f4119a;
        }
        f(akiVar.f4119a);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void a(atc atcVar) {
        this.z = atcVar;
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc
    public final synchronized void a(qt qtVar) {
        if (this.w != null) {
            jd.c("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.w = qtVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void a(rr rrVar) {
        this.l = rrVar;
        requestLayout();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void a(String str) {
        if (str == null) {
            str = "";
        }
        this.v = str;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void a(String str, com.google.android.gms.ads.internal.gmsg.ae<? super qd> aeVar) {
        if (this.j != null) {
            this.j.a(str, aeVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void a(String str, com.google.android.gms.common.util.o<com.google.android.gms.ads.internal.gmsg.ae<? super qd>> oVar) {
        if (this.j != null) {
            this.j.a(str, oVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void a(String str, String str2, String str3) {
        if (A()) {
            jd.e("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadDataWithBaseURL(str, ((Boolean) aoo.f().a(aro.aB)).booleanValue() ? rf.a(str2, rf.a()) : str2, "text/html", Constants.UTF8_NAME, str3);
        }
    }

    @Override // com.google.android.gms.internal.ads.ayi
    public final void a(String str, Map<String, ?> map) {
        try {
            a(str, com.google.android.gms.ads.internal.aw.e().a(map));
        } catch (JSONException e) {
            jd.e("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.ayi
    public final void a(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String string = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(string);
        sb.append(");");
        String strValueOf = String.valueOf(sb.toString());
        jd.b(strValueOf.length() != 0 ? "Dispatching AFMA event: ".concat(strValueOf) : new String("Dispatching AFMA event: "));
        e(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final void a(boolean z) {
        this.j.a(z);
    }

    @Override // com.google.android.gms.internal.ads.re
    public final void a(boolean z, int i) {
        this.j.a(z, i);
    }

    @Override // com.google.android.gms.internal.ads.re
    public final void a(boolean z, int i, String str) {
        this.j.a(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.re
    public final void a(boolean z, int i, String str, String str2) {
        this.j.a(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc
    public final synchronized qt b() {
        return this.w;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void b(com.google.android.gms.ads.internal.overlay.c cVar) {
        this.H = cVar;
    }

    @Override // com.google.android.gms.internal.ads.azj
    public final void b(String str) {
        e(str);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void b(String str, com.google.android.gms.ads.internal.gmsg.ae<? super qd> aeVar) {
        if (this.j != null) {
            this.j.b(str, aeVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.azj
    public final void b(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String string = jSONObject.toString();
        e(new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(string).length()).append(str).append("(").append(string).append(");").toString());
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void b(boolean z) {
        boolean z2 = z != this.p;
        this.p = z;
        O();
        if (z2) {
            new n(this).c(z ? "expanded" : "default");
        }
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final arz c() {
        return this.D;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void c(boolean z) {
        if (this.k != null) {
            this.k.a(this.j.b(), z);
        } else {
            this.n = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc, com.google.android.gms.internal.ads.qz
    public final Activity d() {
        return this.f5488a.a();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void d(boolean z) {
        this.t = z;
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.qd
    public final synchronized void destroy() {
        T();
        this.J.b();
        if (this.k != null) {
            this.k.a();
            this.k.k();
            this.k = null;
        }
        this.j.k();
        if (!this.o) {
            com.google.android.gms.ads.internal.aw.z();
            pn.a(this);
            S();
            this.o = true;
            jd.a("Initiating WebView self destruct sequence in 3...");
            jd.a("Loading blank page in WebView, 2...");
            d("about:blank");
        }
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc
    public final com.google.android.gms.ads.internal.bt e() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void e(boolean z) {
        this.A = (z ? 1 : -1) + this.A;
        if (this.A <= 0 && this.k != null) {
            this.k.q();
        }
    }

    @Override // android.webkit.WebView
    @TargetApi(19)
    public final synchronized void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        if (A()) {
            jd.f("#004 The webview is destroyed. Ignoring action.");
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
            }
        } else {
            super.evaluateJavascript(str, valueCallback);
        }
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final void f() {
        com.google.android.gms.ads.internal.overlay.c cVarR = r();
        if (cVarR != null) {
            cVarR.p();
        }
    }

    protected final void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!this.o) {
                    this.j.k();
                    com.google.android.gms.ads.internal.aw.z();
                    pn.a(this);
                    S();
                    R();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.ads.internal.ap
    public final synchronized void g_() {
        this.u = true;
        if (this.f5491d != null) {
            this.f5491d.g_();
        }
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final View.OnClickListener getOnClickListener() {
        return this.G.get();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized int getRequestedOrientation() {
        return this.s;
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.rk
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final WebView getWebView() {
        return this;
    }

    @Override // com.google.android.gms.ads.internal.ap
    public final synchronized void h_() {
        this.u = false;
        if (this.f5491d != null) {
            this.f5491d.h_();
        }
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final synchronized String i() {
        return this.v;
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc
    public final asa j() {
        return this.F;
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc, com.google.android.gms.internal.ads.rj
    public final zzang k() {
        return this.f5490c;
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final int l() {
        return getMeasuredHeight();
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.qd
    public final synchronized void loadData(String str, String str2, String str3) {
        if (A()) {
            jd.e("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadData(str, str2, str3);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.qd
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (A()) {
            jd.e("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.qd
    public final synchronized void loadUrl(String str) {
        if (A()) {
            jd.e("#004 The webview is destroyed. Ignoring action.");
        } else {
            try {
                super.loadUrl(str);
            } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e) {
                com.google.android.gms.ads.internal.aw.i().a(e, "AdWebViewImpl.loadUrl");
                jd.c("Could not call loadUrl. ", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final int m() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void n() {
        N();
        HashMap map = new HashMap(1);
        map.put("version", this.f5490c.f5784a);
        a("onhide", map);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void o() {
        if (this.C == null) {
            aru.a(this.F.a(), this.D, "aes2");
            this.C = aru.a(this.F.a());
            this.F.a("native:view_show", this.C);
        }
        HashMap map = new HashMap(1);
        map.put("version", this.f5490c.f5784a);
        a("onshow", map);
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final synchronized void onAttachedToWindow() {
        boolean z;
        super.onAttachedToWindow();
        if (!A()) {
            this.J.c();
        }
        boolean z2 = this.x;
        if (this.j == null || !this.j.c()) {
            z = z2;
        } else {
            if (!this.y) {
                ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListenerD = this.j.d();
                if (onGlobalLayoutListenerD != null) {
                    com.google.android.gms.ads.internal.aw.A();
                    if (this == null) {
                        throw null;
                    }
                    nw.a(this, onGlobalLayoutListenerD);
                }
                ViewTreeObserver.OnScrollChangedListener onScrollChangedListenerE = this.j.e();
                if (onScrollChangedListenerE != null) {
                    com.google.android.gms.ads.internal.aw.A();
                    if (this == null) {
                        throw null;
                    }
                    nw.a(this, onScrollChangedListenerE);
                }
                this.y = true;
            }
            K();
            z = true;
        }
        f(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        synchronized (this) {
            if (!A()) {
                this.J.d();
            }
            super.onDetachedFromWindow();
            if (this.y && this.j != null && this.j.c() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListenerD = this.j.d();
                if (onGlobalLayoutListenerD != null) {
                    com.google.android.gms.ads.internal.aw.g().a(getViewTreeObserver(), onGlobalLayoutListenerD);
                }
                ViewTreeObserver.OnScrollChangedListener onScrollChangedListenerE = this.j.e();
                if (onScrollChangedListenerE != null) {
                    getViewTreeObserver().removeOnScrollChangedListener(onScrollChangedListenerE);
                }
                this.y = false;
            }
        }
        f(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            com.google.android.gms.ads.internal.aw.e();
            jm.a(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            jd.b(new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length()).append("Couldn't find an Activity to view url/mimetype: ").append(str).append(" / ").append(str4).toString());
        }
    }

    @Override // android.webkit.WebView, android.view.View
    @TargetApi(21)
    protected final void onDraw(Canvas canvas) {
        if (A()) {
            return;
        }
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
            return;
        }
        super.onDraw(canvas);
        if (this.j == null || this.j.l() == null) {
            return;
        }
        this.j.l().a();
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (((Boolean) aoo.f().a(aro.ay)).booleanValue()) {
            float axisValue = motionEvent.getAxisValue(9);
            float axisValue2 = motionEvent.getAxisValue(10);
            if (motionEvent.getActionMasked() == 8 && ((axisValue > 0.0f && !canScrollVertically(-1)) || ((axisValue < 0.0f && !canScrollVertically(1)) || ((axisValue2 > 0.0f && !canScrollHorizontally(-1)) || (axisValue2 < 0.0f && !canScrollHorizontally(1)))))) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean zK = K();
        com.google.android.gms.ads.internal.overlay.c cVarR = r();
        if (cVarR == null || !zK) {
            return;
        }
        cVarR.o();
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    @SuppressLint({"DrawAllocation"})
    protected final synchronized void onMeasure(int i, int i2) {
        boolean z;
        int size;
        if (A()) {
            setMeasuredDimension(0, 0);
        } else if (isInEditMode() || this.p || this.l.e()) {
            super.onMeasure(i, i2);
        } else if (this.l.f()) {
            qt qtVarB = b();
            float fE = qtVarB != null ? qtVarB.e() : 0.0f;
            if (fE == 0.0f) {
                super.onMeasure(i, i2);
            } else {
                int size2 = View.MeasureSpec.getSize(i);
                int size3 = View.MeasureSpec.getSize(i2);
                int i3 = (int) (size3 * fE);
                int i4 = (int) (size2 / fE);
                if (size3 == 0 && i4 != 0) {
                    i3 = (int) (i4 * fE);
                    size3 = i4;
                } else if (size2 == 0 && i3 != 0) {
                    i4 = (int) (i3 / fE);
                    size2 = i3;
                }
                setMeasuredDimension(Math.min(i3, size2), Math.min(i4, size3));
            }
        } else if (this.l.c()) {
            if (((Boolean) aoo.f().a(aro.cm)).booleanValue() || !com.google.android.gms.common.util.n.e()) {
                super.onMeasure(i, i2);
            } else {
                a("/contentHeight", new qr(this));
                e("(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = 'gmsg://mobileads.google.com/contentHeight?';  url += 'height=' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById('afma-notify-fluid');    if (!frame) {      frame = document.createElement('IFRAME');      frame.id = 'afma-notify-fluid';      frame.style.display = 'none';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();");
                float f = this.f.density;
                int size4 = View.MeasureSpec.getSize(i);
                switch (this.B) {
                    case -1:
                        size = View.MeasureSpec.getSize(i2);
                        break;
                    default:
                        size = (int) (f * this.B);
                        break;
                }
                setMeasuredDimension(size4, size);
            }
        } else if (this.l.d()) {
            setMeasuredDimension(this.f.widthPixels, this.f.heightPixels);
        } else {
            int mode = View.MeasureSpec.getMode(i);
            int size5 = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size6 = View.MeasureSpec.getSize(i2);
            int i5 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size5 : Integer.MAX_VALUE;
            int i6 = (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) ? size6 : Integer.MAX_VALUE;
            boolean z2 = this.l.f5515b > i5 || this.l.f5514a > i6;
            if (((Boolean) aoo.f().a(aro.dh)).booleanValue()) {
                z = ((float) this.l.f5515b) / this.g <= ((float) i5) / this.g && ((float) this.l.f5514a) / this.g <= ((float) i6) / this.g;
                if (!z2) {
                    z = z2;
                }
            } else {
                z = z2;
            }
            if (z) {
                int i7 = (int) (this.l.f5515b / this.g);
                jd.e(new StringBuilder(103).append("Not enough space to show ad. Needs ").append(i7).append("x").append((int) (this.l.f5514a / this.g)).append(" dp, but only has ").append((int) (size5 / this.g)).append("x").append((int) (size6 / this.g)).append(" dp.").toString());
                if (getVisibility() != 8) {
                    setVisibility(4);
                }
                setMeasuredDimension(0, 0);
                if (!this.h) {
                    this.Q.a(amk.a.b.BANNER_SIZE_INVALID);
                    this.h = true;
                }
            } else {
                if (getVisibility() != 8) {
                    setVisibility(0);
                }
                if (!this.i) {
                    this.Q.a(amk.a.b.BANNER_SIZE_VALID);
                    this.i = true;
                }
                setMeasuredDimension(this.l.f5515b, this.l.f5514a);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.qd
    public final void onPause() {
        if (A()) {
            return;
        }
        try {
            if (com.google.android.gms.common.util.n.a()) {
                super.onPause();
            }
        } catch (Exception e) {
            jd.b("Could not pause webview.", e);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.qd
    public final void onResume() {
        if (A()) {
            return;
        }
        try {
            if (com.google.android.gms.common.util.n.a()) {
                super.onResume();
            }
        } catch (Exception e) {
            jd.b("Could not resume webview.", e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.j.c()) {
            synchronized (this) {
                if (this.z != null) {
                    this.z.a(motionEvent);
                }
            }
        } else if (this.f5489b != null) {
            this.f5489b.a(motionEvent);
        }
        if (A()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void p() {
        HashMap map = new HashMap(3);
        map.put("app_muted", String.valueOf(com.google.android.gms.ads.internal.aw.D().b()));
        map.put("app_volume", String.valueOf(com.google.android.gms.ads.internal.aw.D().a()));
        map.put("device_volume", String.valueOf(ke.a(getContext())));
        a("volume", map);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final Context q() {
        return this.f5488a.b();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized com.google.android.gms.ads.internal.overlay.c r() {
        return this.k;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized com.google.android.gms.ads.internal.overlay.c s() {
        return this.H;
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.qd
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.G = new WeakReference<>(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void setRequestedOrientation(int i) {
        this.s = i;
        if (this.k != null) {
            this.k.a(this.s);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.qd
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof qe) {
            this.j = (qe) webViewClient;
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.qd
    public final void stopLoading() {
        if (A()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            jd.b("Could not stop loading webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.rg
    public final synchronized rr t() {
        return this.l;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized String u() {
        return this.m;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final /* synthetic */ rl v() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final WebViewClient w() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized boolean x() {
        return this.n;
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.rh
    public final agv y() {
        return this.f5489b;
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.ra
    public final synchronized boolean z() {
        return this.p;
    }
}
