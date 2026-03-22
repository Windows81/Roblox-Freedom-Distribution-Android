package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class d extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Set<String> f4921a = com.google.android.gms.common.util.e.a((Object[]) new String[]{"top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center"});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4924d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private final Object j;
    private final qd k;
    private final Activity l;
    private rr m;
    private ImageView n;
    private LinearLayout o;
    private o p;
    private PopupWindow q;
    private RelativeLayout r;
    private ViewGroup s;

    public d(qd qdVar, o oVar) {
        super(qdVar, "resize");
        this.f4922b = "top-right";
        this.f4923c = true;
        this.f4924d = 0;
        this.e = 0;
        this.f = -1;
        this.g = 0;
        this.h = 0;
        this.i = -1;
        this.j = new Object();
        this.k = qdVar;
        this.l = qdVar.d();
        this.p = oVar;
    }

    private final void b(int i, int i2) {
        a(i, i2 - com.google.android.gms.ads.internal.aw.e().c(this.l)[0], this.i, this.f);
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int[] b() {
        /*
            Method dump skipped, instruction units count: 446
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.d.b():int[]");
    }

    public final void a(int i, int i2) {
        this.f4924d = i;
        this.e = i2;
    }

    public final void a(int i, int i2, boolean z) {
        synchronized (this.j) {
            this.f4924d = i;
            this.e = i2;
            if (this.q != null && z) {
                int[] iArrB = b();
                if (iArrB != null) {
                    PopupWindow popupWindow = this.q;
                    aoo.a();
                    int iA = ly.a(this.l, iArrB[0]);
                    aoo.a();
                    popupWindow.update(iA, ly.a(this.l, iArrB[1]), this.q.getWidth(), this.q.getHeight());
                    b(iArrB[0], iArrB[1]);
                } else {
                    a(true);
                }
            }
        }
    }

    public final void a(Map<String, String> map) {
        RelativeLayout.LayoutParams layoutParams;
        synchronized (this.j) {
            if (this.l == null) {
                a("Not an activity context. Cannot resize.");
                return;
            }
            if (this.k.t() == null) {
                a("Webview is not yet available, size is not set.");
                return;
            }
            if (this.k.t().d()) {
                a("Is interstitial. Cannot resize an interstitial.");
                return;
            }
            if (this.k.z()) {
                a("Cannot resize an expanded banner.");
                return;
            }
            if (!TextUtils.isEmpty(map.get("width"))) {
                com.google.android.gms.ads.internal.aw.e();
                this.i = jm.b(map.get("width"));
            }
            if (!TextUtils.isEmpty(map.get("height"))) {
                com.google.android.gms.ads.internal.aw.e();
                this.f = jm.b(map.get("height"));
            }
            if (!TextUtils.isEmpty(map.get("offsetX"))) {
                com.google.android.gms.ads.internal.aw.e();
                this.g = jm.b(map.get("offsetX"));
            }
            if (!TextUtils.isEmpty(map.get("offsetY"))) {
                com.google.android.gms.ads.internal.aw.e();
                this.h = jm.b(map.get("offsetY"));
            }
            if (!TextUtils.isEmpty(map.get("allowOffscreen"))) {
                this.f4923c = Boolean.parseBoolean(map.get("allowOffscreen"));
            }
            String str = map.get("customClosePosition");
            if (!TextUtils.isEmpty(str)) {
                this.f4922b = str;
            }
            if (!(this.i >= 0 && this.f >= 0)) {
                a("Invalid width and height options. Cannot resize.");
                return;
            }
            Window window = this.l.getWindow();
            if (window == null || window.getDecorView() == null) {
                a("Activity context is not ready, cannot get window or decor view.");
                return;
            }
            int[] iArrB = b();
            if (iArrB == null) {
                a("Resize location out of screen or close button is not visible.");
                return;
            }
            aoo.a();
            int iA = ly.a(this.l, this.i);
            aoo.a();
            int iA2 = ly.a(this.l, this.f);
            ViewParent parent = this.k.getView().getParent();
            if (parent == null || !(parent instanceof ViewGroup)) {
                a("Webview is detached, probably in the middle of a resize or expand.");
                return;
            }
            ((ViewGroup) parent).removeView(this.k.getView());
            if (this.q == null) {
                this.s = (ViewGroup) parent;
                com.google.android.gms.ads.internal.aw.e();
                Bitmap bitmapA = jm.a(this.k.getView());
                this.n = new ImageView(this.l);
                this.n.setImageBitmap(bitmapA);
                this.m = this.k.t();
                this.s.addView(this.n);
            } else {
                this.q.dismiss();
            }
            this.r = new RelativeLayout(this.l);
            this.r.setBackgroundColor(0);
            this.r.setLayoutParams(new ViewGroup.LayoutParams(iA, iA2));
            com.google.android.gms.ads.internal.aw.e();
            this.q = jm.a((View) this.r, iA, iA2, false);
            this.q.setOutsideTouchable(true);
            this.q.setTouchable(true);
            this.q.setClippingEnabled(!this.f4923c);
            this.r.addView(this.k.getView(), -1, -1);
            this.o = new LinearLayout(this.l);
            aoo.a();
            int iA3 = ly.a(this.l, 50);
            aoo.a();
            layoutParams = new RelativeLayout.LayoutParams(iA3, ly.a(this.l, 50));
            switch (this.f4922b) {
                case "top-left":
                    layoutParams.addRule(10);
                    layoutParams.addRule(9);
                    break;
                case "top-center":
                    layoutParams.addRule(10);
                    layoutParams.addRule(14);
                    break;
                case "center":
                    layoutParams.addRule(13);
                    break;
                case "bottom-left":
                    layoutParams.addRule(12);
                    layoutParams.addRule(9);
                    break;
                case "bottom-center":
                    layoutParams.addRule(12);
                    layoutParams.addRule(14);
                    break;
                case "bottom-right":
                    layoutParams.addRule(12);
                    layoutParams.addRule(11);
                    break;
                default:
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                    break;
            }
            this.o.setOnClickListener(new e(this));
            this.o.setContentDescription("Close button");
            this.r.addView(this.o, layoutParams);
            try {
                PopupWindow popupWindow = this.q;
                View decorView = window.getDecorView();
                aoo.a();
                int iA4 = ly.a(this.l, iArrB[0]);
                aoo.a();
                popupWindow.showAtLocation(decorView, 0, iA4, ly.a(this.l, iArrB[1]));
                int i = iArrB[0];
                int i2 = iArrB[1];
                if (this.p != null) {
                    this.p.a(i, i2, this.i, this.f);
                }
                this.k.a(rr.a(iA, iA2));
                b(iArrB[0], iArrB[1]);
                c("resized");
            } catch (RuntimeException e) {
                String strValueOf = String.valueOf(e.getMessage());
                a(strValueOf.length() != 0 ? "Cannot show popup window: ".concat(strValueOf) : new String("Cannot show popup window: "));
                this.r.removeView(this.k.getView());
                if (this.s != null) {
                    this.s.removeView(this.n);
                    this.s.addView(this.k.getView());
                    this.k.a(this.m);
                }
            }
        }
    }

    public final void a(boolean z) {
        synchronized (this.j) {
            if (this.q != null) {
                this.q.dismiss();
                this.r.removeView(this.k.getView());
                if (this.s != null) {
                    this.s.removeView(this.n);
                    this.s.addView(this.k.getView());
                    this.k.a(this.m);
                }
                if (z) {
                    c("default");
                    if (this.p != null) {
                        this.p.M();
                    }
                }
                this.q = null;
                this.r = null;
                this.s = null;
                this.o = null;
            }
        }
    }

    public final boolean a() {
        boolean z;
        synchronized (this.j) {
            z = this.q != null;
        }
        return z;
    }
}
