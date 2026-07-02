package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.aw;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jm;
import com.google.android.gms.internal.ads.js;
import com.google.android.gms.internal.ads.qd;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
@cm
public class c extends com.google.android.gms.internal.ads.s implements v {
    private static final int e = Color.argb(0, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Activity f3155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    AdOverlayInfoParcel f3156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    qd f3157c;
    private h f;
    private n g;
    private FrameLayout i;
    private WebChromeClient.CustomViewCallback j;
    private g m;
    private Runnable p;
    private boolean q;
    private boolean r;
    private boolean h = false;
    private boolean k = false;
    private boolean l = false;
    private boolean n = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f3158d = 0;
    private final Object o = new Object();
    private boolean s = false;
    private boolean t = false;
    private boolean u = true;

    public c(Activity activity) {
        this.f3155a = activity;
    }

    private final void a(boolean z) {
        int iIntValue = ((Integer) aoo.f().a(aro.da)).intValue();
        o oVar = new o();
        oVar.e = 50;
        oVar.f3172a = z ? iIntValue : 0;
        oVar.f3173b = z ? 0 : iIntValue;
        oVar.f3174c = 0;
        oVar.f3175d = iIntValue;
        this.g = new n(this.f3155a, oVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(z ? 11 : 9);
        a(z, this.f3156b.g);
        this.m.addView(this.g, layoutParams);
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x0309  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void b(boolean r18) throws com.google.android.gms.ads.internal.overlay.f {
        /*
            Method dump skipped, instruction units count: 780
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.c.b(boolean):void");
    }

    private final void r() {
        if (!this.f3155a.isFinishing() || this.s) {
            return;
        }
        this.s = true;
        if (this.f3157c != null) {
            this.f3157c.a(this.f3158d);
            synchronized (this.o) {
                if (!this.q && this.f3157c.E()) {
                    this.p = new e(this);
                    jm.f5184a.postDelayed(this.p, ((Long) aoo.f().a(aro.aP)).longValue());
                    return;
                }
            }
        }
        n();
    }

    private final void s() {
        this.f3157c.o();
    }

    public final void a() {
        this.f3158d = 2;
        this.f3155a.finish();
    }

    public final void a(int i) {
        if (this.f3155a.getApplicationInfo().targetSdkVersion >= ((Integer) aoo.f().a(aro.dn)).intValue()) {
            if (this.f3155a.getApplicationInfo().targetSdkVersion <= ((Integer) aoo.f().a(aro.f0do)).intValue()) {
                if (Build.VERSION.SDK_INT >= ((Integer) aoo.f().a(aro.dp)).intValue()) {
                    if (Build.VERSION.SDK_INT <= ((Integer) aoo.f().a(aro.dq)).intValue()) {
                        return;
                    }
                }
            }
        }
        this.f3155a.setRequestedOrientation(i);
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void a(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.r
    public void a(Bundle bundle) {
        this.f3155a.requestWindowFeature(1);
        this.k = bundle != null ? bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false) : false;
        try {
            this.f3156b = AdOverlayInfoParcel.a(this.f3155a.getIntent());
            if (this.f3156b == null) {
                throw new f("Could not get info for ad overlay.");
            }
            if (this.f3156b.m.f5786c > 7500000) {
                this.f3158d = 3;
            }
            if (this.f3155a.getIntent() != null) {
                this.u = this.f3155a.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
            }
            if (this.f3156b.o != null) {
                this.l = this.f3156b.o.f3205a;
            } else {
                this.l = false;
            }
            if (((Boolean) aoo.f().a(aro.bR)).booleanValue() && this.l && this.f3156b.o.e != -1) {
                new i(this, null).h();
            }
            if (bundle == null) {
                if (this.f3156b.f3153c != null && this.u) {
                    this.f3156b.f3153c.o_();
                }
                if (this.f3156b.k != 1 && this.f3156b.f3152b != null) {
                    this.f3156b.f3152b.onAdClicked();
                }
            }
            this.m = new g(this.f3155a, this.f3156b.n, this.f3156b.m.f5784a);
            this.m.setId(1000);
            switch (this.f3156b.k) {
                case 1:
                    b(false);
                    return;
                case 2:
                    this.f = new h(this.f3156b.f3154d);
                    b(false);
                    return;
                case 3:
                    b(true);
                    return;
                default:
                    throw new f("Could not determine ad overlay type.");
            }
        } catch (f e2) {
            jd.e(e2.getMessage());
            this.f3158d = 3;
            this.f3155a.finish();
        }
    }

    public final void a(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        this.i = new FrameLayout(this.f3155a);
        this.i.setBackgroundColor(-16777216);
        this.i.addView(view, -1, -1);
        this.f3155a.setContentView(this.i);
        this.r = true;
        this.j = customViewCallback;
        this.h = true;
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void a(com.google.android.gms.b.a aVar) {
        if (((Boolean) aoo.f().a(aro.cY)).booleanValue() && com.google.android.gms.common.util.n.k()) {
            Configuration configuration = (Configuration) com.google.android.gms.b.b.a(aVar);
            aw.e();
            if (jm.a(this.f3155a, configuration)) {
                this.f3155a.getWindow().addFlags(1024);
                this.f3155a.getWindow().clearFlags(RecyclerView.ItemAnimator.FLAG_MOVED);
            } else {
                this.f3155a.getWindow().addFlags(RecyclerView.ItemAnimator.FLAG_MOVED);
                this.f3155a.getWindow().clearFlags(1024);
            }
        }
    }

    public final void a(boolean z, boolean z2) {
        boolean z3 = false;
        boolean z4 = ((Boolean) aoo.f().a(aro.aR)).booleanValue() && this.f3156b != null && this.f3156b.o != null && this.f3156b.o.g;
        boolean z5 = ((Boolean) aoo.f().a(aro.aS)).booleanValue() && this.f3156b != null && this.f3156b.o != null && this.f3156b.o.h;
        if (z && z2 && z4 && !z5) {
            new com.google.android.gms.internal.ads.n(this.f3157c, "useCustomClose").a("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        if (this.g != null) {
            n nVar = this.g;
            if (z5 || (z2 && !z4)) {
                z3 = true;
            }
            nVar.a(z3);
        }
    }

    public final void b() {
        if (this.f3156b != null && this.h) {
            a(this.f3156b.j);
        }
        if (this.i != null) {
            this.f3155a.setContentView(this.m);
            this.r = true;
            this.i.removeAllViews();
            this.i = null;
        }
        if (this.j != null) {
            this.j.onCustomViewHidden();
            this.j = null;
        }
        this.h = false;
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void b(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.k);
    }

    @Override // com.google.android.gms.ads.internal.overlay.v
    public final void c() {
        this.f3158d = 1;
        this.f3155a.finish();
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void d() {
        this.f3158d = 0;
    }

    @Override // com.google.android.gms.internal.ads.r
    public final boolean e() {
        this.f3158d = 0;
        if (this.f3157c == null) {
            return true;
        }
        boolean zC = this.f3157c.C();
        if (zC) {
            return zC;
        }
        this.f3157c.a("onbackblocked", Collections.emptyMap());
        return zC;
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void f() {
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void g() {
        if (((Boolean) aoo.f().a(aro.cZ)).booleanValue()) {
            if (this.f3157c == null || this.f3157c.A()) {
                jd.e("The webview does not exist. Ignoring action.");
            } else {
                aw.g();
                js.b(this.f3157c);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void h() {
        if (this.f3156b.f3153c != null) {
            this.f3156b.f3153c.e();
        }
        if (((Boolean) aoo.f().a(aro.cZ)).booleanValue()) {
            return;
        }
        if (this.f3157c == null || this.f3157c.A()) {
            jd.e("The webview does not exist. Ignoring action.");
        } else {
            aw.g();
            js.b(this.f3157c);
        }
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void i() {
        b();
        if (this.f3156b.f3153c != null) {
            this.f3156b.f3153c.d();
        }
        if (!((Boolean) aoo.f().a(aro.cZ)).booleanValue() && this.f3157c != null && (!this.f3155a.isFinishing() || this.f == null)) {
            aw.g();
            js.a(this.f3157c);
        }
        r();
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void j() {
        if (((Boolean) aoo.f().a(aro.cZ)).booleanValue() && this.f3157c != null && (!this.f3155a.isFinishing() || this.f == null)) {
            aw.g();
            js.a(this.f3157c);
        }
        r();
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void k() {
        if (this.f3157c != null) {
            this.m.removeView(this.f3157c.getView());
        }
        r();
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void l() {
        this.r = true;
    }

    public final void m() {
        this.m.removeView(this.g);
        a(true);
    }

    final void n() {
        if (this.t) {
            return;
        }
        this.t = true;
        if (this.f3157c != null) {
            this.m.removeView(this.f3157c.getView());
            if (this.f != null) {
                this.f3157c.a(this.f.f3166d);
                this.f3157c.b(false);
                this.f.f3165c.addView(this.f3157c.getView(), this.f.f3163a, this.f.f3164b);
                this.f = null;
            } else if (this.f3155a.getApplicationContext() != null) {
                this.f3157c.a(this.f3155a.getApplicationContext());
            }
            this.f3157c = null;
        }
        if (this.f3156b == null || this.f3156b.f3153c == null) {
            return;
        }
        this.f3156b.f3153c.n_();
    }

    public final void o() {
        if (this.n) {
            this.n = false;
            s();
        }
    }

    public final void p() {
        this.m.f3161a = true;
    }

    public final void q() {
        synchronized (this.o) {
            this.q = true;
            if (this.p != null) {
                jm.f5184a.removeCallbacks(this.p);
                jm.f5184a.post(this.p);
            }
        }
    }
}
