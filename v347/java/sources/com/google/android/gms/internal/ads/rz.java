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
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.zzc;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import microsoft.aspnet.signalr.client.Constants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
final class rz extends se implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, ays, qd {
    private WeakReference<View.OnClickListener> A;

    @GuardedBy("this")
    private com.google.android.gms.ads.internal.overlay.c B;
    private lx C;
    private int D;
    private int E;
    private int F;
    private int G;
    private float H;
    private Map<String, po> I;
    private final WindowManager J;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final agv f5534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzang f5535c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.ap f5536d;
    private final com.google.android.gms.ads.internal.bt e;
    private rs f;

    @GuardedBy("this")
    private com.google.android.gms.ads.internal.overlay.c g;

    @GuardedBy("this")
    private rr h;

    @GuardedBy("this")
    private String i;

    @GuardedBy("this")
    private boolean j;

    @GuardedBy("this")
    private boolean k;

    @GuardedBy("this")
    private boolean l;

    @GuardedBy("this")
    private int m;

    @GuardedBy("this")
    private boolean n;

    @GuardedBy("this")
    private boolean o;

    @GuardedBy("this")
    private String p;

    @GuardedBy("this")
    private qt q;

    @GuardedBy("this")
    private boolean r;

    @GuardedBy("this")
    private boolean s;

    @GuardedBy("this")
    private atc t;

    @GuardedBy("this")
    private int u;

    @GuardedBy("this")
    private int v;
    private arz w;
    private arz x;
    private arz y;
    private asa z;

    private rz(rq rqVar, rr rrVar, String str, boolean z, boolean z2, agv agvVar, zzang zzangVar, asb asbVar, com.google.android.gms.ads.internal.ap apVar, com.google.android.gms.ads.internal.bt btVar, ami amiVar) {
        super(rqVar);
        this.n = true;
        this.o = false;
        this.p = "";
        this.D = -1;
        this.E = -1;
        this.F = -1;
        this.G = -1;
        this.h = rrVar;
        this.i = str;
        this.k = z;
        this.m = -1;
        this.f5534b = agvVar;
        this.f5535c = zzangVar;
        this.f5536d = apVar;
        this.e = btVar;
        this.J = (WindowManager) getContext().getSystemService("window");
        this.C = new lx(K().a(), this, this, null);
        com.google.android.gms.ads.internal.aw.e().a(rqVar, zzangVar.f5784a, getSettings());
        setDownloadListener(this);
        this.H = K().getResources().getDisplayMetrics().density;
        O();
        if (com.google.android.gms.common.util.n.e()) {
            addJavascriptInterface(qw.a(this), "googleAdsJsInterface");
        }
        S();
        this.z = new asa(new asb(true, "make_wv", this.i));
        this.z.a().a(asbVar);
        this.x = aru.a(this.z.a());
        this.z.a("native:view_create", this.x);
        this.y = null;
        this.w = null;
        com.google.android.gms.ads.internal.aw.g().b(rqVar);
    }

    private final boolean M() {
        int iB;
        int iB2;
        if (!this.f.b() && !this.f.c()) {
            return false;
        }
        com.google.android.gms.ads.internal.aw.e();
        DisplayMetrics displayMetricsA = jm.a(this.J);
        aoo.a();
        int iB3 = ly.b(displayMetricsA, displayMetricsA.widthPixels);
        aoo.a();
        int iB4 = ly.b(displayMetricsA, displayMetricsA.heightPixels);
        Activity activityA = K().a();
        if (activityA == null || activityA.getWindow() == null) {
            iB = iB4;
            iB2 = iB3;
        } else {
            com.google.android.gms.ads.internal.aw.e();
            int[] iArrA = jm.a(activityA);
            aoo.a();
            iB2 = ly.b(displayMetricsA, iArrA[0]);
            aoo.a();
            iB = ly.b(displayMetricsA, iArrA[1]);
        }
        if (this.E == iB3 && this.D == iB4 && this.F == iB2 && this.G == iB) {
            return false;
        }
        boolean z = (this.E == iB3 && this.D == iB4) ? false : true;
        this.E = iB3;
        this.D = iB4;
        this.F = iB2;
        this.G = iB;
        new n(this).a(iB3, iB4, iB2, iB, displayMetricsA.density, this.J.getDefaultDisplay().getRotation());
        return z;
    }

    private final void N() {
        aru.a(this.z.a(), this.x, "aeh2");
    }

    private final synchronized void O() {
        if (this.k || this.h.d()) {
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
        if (!this.l) {
            com.google.android.gms.ads.internal.aw.g().c(this);
        }
        this.l = true;
    }

    private final synchronized void Q() {
        if (this.l) {
            com.google.android.gms.ads.internal.aw.g().b((View) this);
        }
        this.l = false;
    }

    private final synchronized void R() {
        this.I = null;
    }

    private final void S() {
        asb asbVarA;
        if (this.z == null || (asbVarA = this.z.a()) == null || com.google.android.gms.ads.internal.aw.i().b() == null) {
            return;
        }
        com.google.android.gms.ads.internal.aw.i().b().a(asbVarA);
    }

    static rz a(Context context, rr rrVar, String str, boolean z, boolean z2, agv agvVar, zzang zzangVar, asb asbVar, com.google.android.gms.ads.internal.ap apVar, com.google.android.gms.ads.internal.bt btVar, ami amiVar) {
        return new rz(new rq(context), rrVar, str, z, z2, agvVar, zzangVar, asbVar, apVar, btVar, amiVar);
    }

    private final void g(boolean z) {
        HashMap map = new HashMap();
        map.put("isVisible", z ? "1" : "0");
        ayt.a(this, "onAdVisibilityChanged", map);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized boolean C() {
        return this.n;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized boolean D() {
        return this.o;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized boolean E() {
        return this.u > 0;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void F() {
        this.C.a();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void G() {
        if (this.y == null) {
            this.y = aru.a(this.z.a());
            this.z.a("native:view_load", this.y);
        }
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized atc H() {
        return this.t;
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
            aru.a(this.z.a(), this.x, "aebb2");
        }
        N();
        if (this.z.a() != null) {
            this.z.a().a("close_type", String.valueOf(i));
        }
        HashMap map = new HashMap(2);
        map.put("closetype", String.valueOf(i));
        map.put("version", this.f5535c.f5784a);
        ayt.a(this, "onhide", map);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void a(Context context) {
        K().setBaseContext(context);
        this.C.a(K().a());
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void a(com.google.android.gms.ads.internal.overlay.c cVar) {
        this.g = cVar;
    }

    @Override // com.google.android.gms.internal.ads.re
    public final void a(zzc zzcVar) {
        this.f.a(zzcVar);
    }

    @Override // com.google.android.gms.internal.ads.akj
    public final void a(aki akiVar) {
        synchronized (this) {
            this.r = akiVar.f4119a;
        }
        g(akiVar.f4119a);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void a(atc atcVar) {
        this.t = atcVar;
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc
    public final synchronized void a(qt qtVar) {
        if (this.q != null) {
            jd.c("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.q = qtVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void a(rr rrVar) {
        this.h = rrVar;
        requestLayout();
    }

    public final void a(rs rsVar) {
        this.f = rsVar;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void a(String str) {
        if (str == null) {
            str = "";
        }
        this.p = str;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void a(String str, com.google.android.gms.ads.internal.gmsg.ae<? super qd> aeVar) {
        if (this.f != null) {
            this.f.a(str, aeVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void a(String str, com.google.android.gms.common.util.o<com.google.android.gms.ads.internal.gmsg.ae<? super qd>> oVar) {
        if (this.f != null) {
            this.f.a(str, oVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.ays
    public final void a(String str, String str2) {
        ayt.a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void a(String str, String str2, String str3) {
        super.loadDataWithBaseURL(str, ((Boolean) aoo.f().a(aro.aB)).booleanValue() ? rf.a(str2, rf.a()) : str2, "text/html", Constants.UTF8_NAME, str3);
    }

    @Override // com.google.android.gms.internal.ads.ayi
    public final void a(String str, Map map) {
        ayt.a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.ays, com.google.android.gms.internal.ads.ayi
    public final void a(String str, JSONObject jSONObject) {
        ayt.b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final void a(boolean z) {
        this.f.a(z);
    }

    @Override // com.google.android.gms.internal.ads.re
    public final void a(boolean z, int i) {
        this.f.a(z, i);
    }

    @Override // com.google.android.gms.internal.ads.re
    public final void a(boolean z, int i, String str) {
        this.f.a(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.re
    public final void a(boolean z, int i, String str, String str2) {
        this.f.a(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc
    public final synchronized qt b() {
        return this.q;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void b(com.google.android.gms.ads.internal.overlay.c cVar) {
        this.B = cVar;
    }

    @Override // com.google.android.gms.internal.ads.sb, com.google.android.gms.internal.ads.ays, com.google.android.gms.internal.ads.azj
    public final synchronized void b(String str) {
        if (A()) {
            jd.e("The webview is destroyed. Ignoring action.");
        } else {
            super.b(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void b(String str, com.google.android.gms.ads.internal.gmsg.ae<? super qd> aeVar) {
        if (this.f != null) {
            this.f.b(str, aeVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.azj
    public final void b(String str, JSONObject jSONObject) {
        ayt.a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void b(boolean z) {
        boolean z2 = z != this.k;
        this.k = z;
        O();
        if (z2) {
            new n(this).c(z ? "expanded" : "default");
        }
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final arz c() {
        return this.x;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void c(boolean z) {
        if (this.g != null) {
            this.g.a(this.f.b(), z);
        } else {
            this.j = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc, com.google.android.gms.internal.ads.qz
    public final Activity d() {
        return K().a();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void d(boolean z) {
        this.n = z;
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc
    public final com.google.android.gms.ads.internal.bt e() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void e(boolean z) {
        this.u = (z ? 1 : -1) + this.u;
        if (this.u <= 0 && this.g != null) {
            this.g.q();
        }
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final void f() {
        com.google.android.gms.ads.internal.overlay.c cVarR = r();
        if (cVarR != null) {
            cVarR.p();
        }
    }

    @Override // com.google.android.gms.internal.ads.se
    protected final synchronized void f(boolean z) {
        if (z) {
            this.f.k();
            com.google.android.gms.ads.internal.aw.z();
            pn.a(this);
            R();
        } else {
            S();
            this.C.b();
            if (this.g != null) {
                this.g.a();
                this.g.k();
                this.g = null;
            }
            this.f.k();
            com.google.android.gms.ads.internal.aw.z();
            pn.a(this);
            R();
        }
    }

    @Override // com.google.android.gms.ads.internal.ap
    public final synchronized void g_() {
        this.o = true;
        if (this.f5536d != null) {
            this.f5536d.g_();
        }
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final View.OnClickListener getOnClickListener() {
        return this.A.get();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized int getRequestedOrientation() {
        return this.m;
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
        this.o = false;
        if (this.f5536d != null) {
            this.f5536d.h_();
        }
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final synchronized String i() {
        return this.p;
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc
    public final asa j() {
        return this.z;
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc, com.google.android.gms.internal.ads.rj
    public final zzang k() {
        return this.f5535c;
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final int l() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final int m() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void n() {
        N();
        HashMap map = new HashMap(1);
        map.put("version", this.f5535c.f5784a);
        ayt.a(this, "onhide", map);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void o() {
        if (this.w == null) {
            aru.a(this.z.a(), this.x, "aes2");
            this.w = aru.a(this.z.a());
            this.z.a("native:view_show", this.w);
        }
        HashMap map = new HashMap(1);
        map.put("version", this.f5535c.f5784a);
        ayt.a(this, "onshow", map);
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final synchronized void onAttachedToWindow() {
        boolean z;
        super.onAttachedToWindow();
        if (!A()) {
            this.C.c();
        }
        boolean z2 = this.r;
        if (this.f == null || !this.f.c()) {
            z = z2;
        } else {
            if (!this.s) {
                ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListenerD = this.f.d();
                if (onGlobalLayoutListenerD != null) {
                    com.google.android.gms.ads.internal.aw.A();
                    if (this == null) {
                        throw null;
                    }
                    nw.a(this, onGlobalLayoutListenerD);
                }
                ViewTreeObserver.OnScrollChangedListener onScrollChangedListenerE = this.f.e();
                if (onScrollChangedListenerE != null) {
                    com.google.android.gms.ads.internal.aw.A();
                    if (this == null) {
                        throw null;
                    }
                    nw.a(this, onScrollChangedListenerE);
                }
                this.s = true;
            }
            M();
            z = true;
        }
        g(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        synchronized (this) {
            if (!A()) {
                this.C.d();
            }
            super.onDetachedFromWindow();
            if (this.s && this.f != null && this.f.c() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListenerD = this.f.d();
                if (onGlobalLayoutListenerD != null) {
                    com.google.android.gms.ads.internal.aw.g().a(getViewTreeObserver(), onGlobalLayoutListenerD);
                }
                ViewTreeObserver.OnScrollChangedListener onScrollChangedListenerE = this.f.e();
                if (onScrollChangedListenerE != null) {
                    getViewTreeObserver().removeOnScrollChangedListener(onScrollChangedListenerE);
                }
                this.s = false;
            }
        }
        g(false);
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

    @Override // com.google.android.gms.internal.ads.se, android.webkit.WebView, android.view.View
    @TargetApi(21)
    protected final void onDraw(Canvas canvas) {
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
            return;
        }
        super.onDraw(canvas);
        if (this.f == null || this.f.l() == null) {
            return;
        }
        this.f.l().a();
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
        boolean zM = M();
        com.google.android.gms.ads.internal.overlay.c cVarR = r();
        if (cVarR == null || !zM) {
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
        } else if (isInEditMode() || this.k || this.h.e()) {
            super.onMeasure(i, i2);
        } else if (this.h.f()) {
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
        } else if (this.h.c()) {
            if (((Boolean) aoo.f().a(aro.cm)).booleanValue() || !com.google.android.gms.common.util.n.e()) {
                super.onMeasure(i, i2);
            } else {
                a("/contentHeight", new sa(this));
                b("(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = 'gmsg://mobileads.google.com/contentHeight?';  url += 'height=' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById('afma-notify-fluid');    if (!frame) {      frame = document.createElement('IFRAME');      frame.id = 'afma-notify-fluid';      frame.style.display = 'none';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();");
                int size4 = View.MeasureSpec.getSize(i);
                switch (this.v) {
                    case -1:
                        size = View.MeasureSpec.getSize(i2);
                        break;
                    default:
                        size = (int) (this.v * this.H);
                        break;
                }
                setMeasuredDimension(size4, size);
            }
        } else if (this.h.d()) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            this.J.getDefaultDisplay().getMetrics(displayMetrics);
            setMeasuredDimension(displayMetrics.widthPixels, displayMetrics.heightPixels);
        } else {
            int mode = View.MeasureSpec.getMode(i);
            int size5 = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size6 = View.MeasureSpec.getSize(i2);
            int i5 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size5 : Integer.MAX_VALUE;
            int i6 = (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) ? size6 : Integer.MAX_VALUE;
            boolean z2 = this.h.f5515b > i5 || this.h.f5514a > i6;
            if (((Boolean) aoo.f().a(aro.dh)).booleanValue()) {
                z = ((float) this.h.f5515b) / this.H <= ((float) i5) / this.H && ((float) this.h.f5514a) / this.H <= ((float) i6) / this.H;
                if (!z2) {
                    z = z2;
                }
            } else {
                z = z2;
            }
            if (z) {
                int i7 = (int) (this.h.f5515b / this.H);
                jd.e(new StringBuilder(103).append("Not enough space to show ad. Needs ").append(i7).append("x").append((int) (this.h.f5514a / this.H)).append(" dp, but only has ").append((int) (size5 / this.H)).append("x").append((int) (size6 / this.H)).append(" dp.").toString());
                if (getVisibility() != 8) {
                    setVisibility(4);
                }
                setMeasuredDimension(0, 0);
            } else {
                if (getVisibility() != 8) {
                    setVisibility(0);
                }
                setMeasuredDimension(this.h.f5515b, this.h.f5514a);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.se, android.webkit.WebView, com.google.android.gms.internal.ads.qd
    public final void onPause() {
        try {
            if (com.google.android.gms.common.util.n.a()) {
                super.onPause();
            }
        } catch (Exception e) {
            jd.b("Could not pause webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.se, android.webkit.WebView, com.google.android.gms.internal.ads.qd
    public final void onResume() {
        try {
            if (com.google.android.gms.common.util.n.a()) {
                super.onResume();
            }
        } catch (Exception e) {
            jd.b("Could not resume webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.se, android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f.c()) {
            synchronized (this) {
                if (this.t != null) {
                    this.t.a(motionEvent);
                }
            }
        } else if (this.f5534b != null) {
            this.f5534b.a(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void p() {
        HashMap map = new HashMap(3);
        map.put("app_muted", String.valueOf(com.google.android.gms.ads.internal.aw.D().b()));
        map.put("app_volume", String.valueOf(com.google.android.gms.ads.internal.aw.D().a()));
        map.put("device_volume", String.valueOf(ke.a(getContext())));
        ayt.a(this, "volume", map);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final Context q() {
        return K().b();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized com.google.android.gms.ads.internal.overlay.c r() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized com.google.android.gms.ads.internal.overlay.c s() {
        return this.B;
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.qd
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.A = new WeakReference<>(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized void setRequestedOrientation(int i) {
        this.m = i;
        if (this.g != null) {
            this.g.a(this.m);
        }
    }

    @Override // com.google.android.gms.internal.ads.se, android.webkit.WebView, com.google.android.gms.internal.ads.qd
    public final void stopLoading() {
        try {
            super.stopLoading();
        } catch (Exception e) {
            jd.b("Could not stop loading webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.rg
    public final synchronized rr t() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized String u() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final /* synthetic */ rl v() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final WebViewClient w() {
        return this.f5538a;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final synchronized boolean x() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.rh
    public final agv y() {
        return this.f5534b;
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.ra
    public final synchronized boolean z() {
        return this.k;
    }
}
