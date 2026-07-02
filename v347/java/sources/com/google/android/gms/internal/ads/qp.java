package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.ads.b.a;
import com.google.android.gms.ads.internal.overlay.zzc;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class qp extends FrameLayout implements qd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final qd f5486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ot f5487b;

    public qp(qd qdVar) {
        super(qdVar.getContext());
        this.f5486a = qdVar;
        this.f5487b = new ot(qdVar.q(), this, this);
        addView(this.f5486a.getView());
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final boolean A() {
        return this.f5486a.A();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void B() {
        this.f5487b.c();
        this.f5486a.B();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final boolean C() {
        return this.f5486a.C();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final boolean D() {
        return this.f5486a.D();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final boolean E() {
        return this.f5486a.E();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void F() {
        this.f5486a.F();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void G() {
        this.f5486a.G();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final atc H() {
        return this.f5486a.H();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void I() {
        setBackgroundColor(0);
        this.f5486a.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void J() {
        TextView textView = new TextView(getContext());
        Resources resourcesH = com.google.android.gms.ads.internal.aw.i().h();
        textView.setText(resourcesH != null ? resourcesH.getString(a.C0064a.s7) : "Test Ad");
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        if (Build.VERSION.SDK_INT >= 16) {
            textView.setBackground(gradientDrawable);
        } else {
            textView.setBackgroundDrawable(gradientDrawable);
        }
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final ot a() {
        return this.f5487b;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void a(int i) {
        this.f5486a.a(i);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void a(Context context) {
        this.f5486a.a(context);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void a(com.google.android.gms.ads.internal.overlay.c cVar) {
        this.f5486a.a(cVar);
    }

    @Override // com.google.android.gms.internal.ads.re
    public final void a(zzc zzcVar) {
        this.f5486a.a(zzcVar);
    }

    @Override // com.google.android.gms.internal.ads.akj
    public final void a(aki akiVar) {
        this.f5486a.a(akiVar);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void a(atc atcVar) {
        this.f5486a.a(atcVar);
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc
    public final void a(qt qtVar) {
        this.f5486a.a(qtVar);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void a(rr rrVar) {
        this.f5486a.a(rrVar);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void a(String str) {
        this.f5486a.a(str);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void a(String str, com.google.android.gms.ads.internal.gmsg.ae<? super qd> aeVar) {
        this.f5486a.a(str, aeVar);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void a(String str, com.google.android.gms.common.util.o<com.google.android.gms.ads.internal.gmsg.ae<? super qd>> oVar) {
        this.f5486a.a(str, oVar);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void a(String str, String str2, String str3) {
        this.f5486a.a(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.ads.ayi
    public final void a(String str, Map<String, ?> map) {
        this.f5486a.a(str, map);
    }

    @Override // com.google.android.gms.internal.ads.ayi
    public final void a(String str, JSONObject jSONObject) {
        this.f5486a.a(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final void a(boolean z) {
        this.f5486a.a(z);
    }

    @Override // com.google.android.gms.internal.ads.re
    public final void a(boolean z, int i) {
        this.f5486a.a(z, i);
    }

    @Override // com.google.android.gms.internal.ads.re
    public final void a(boolean z, int i, String str) {
        this.f5486a.a(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.re
    public final void a(boolean z, int i, String str, String str2) {
        this.f5486a.a(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc
    public final qt b() {
        return this.f5486a.b();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void b(com.google.android.gms.ads.internal.overlay.c cVar) {
        this.f5486a.b(cVar);
    }

    @Override // com.google.android.gms.internal.ads.azj
    public final void b(String str) {
        this.f5486a.b(str);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void b(String str, com.google.android.gms.ads.internal.gmsg.ae<? super qd> aeVar) {
        this.f5486a.b(str, aeVar);
    }

    @Override // com.google.android.gms.internal.ads.azj
    public final void b(String str, JSONObject jSONObject) {
        this.f5486a.b(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void b(boolean z) {
        this.f5486a.b(z);
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final arz c() {
        return this.f5486a.c();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void c(boolean z) {
        this.f5486a.c(z);
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc, com.google.android.gms.internal.ads.qz
    public final Activity d() {
        return this.f5486a.d();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void d(boolean z) {
        this.f5486a.d(z);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void destroy() {
        this.f5486a.destroy();
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc
    public final com.google.android.gms.ads.internal.bt e() {
        return this.f5486a.e();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void e(boolean z) {
        this.f5486a.e(z);
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final void f() {
        this.f5486a.f();
    }

    @Override // com.google.android.gms.ads.internal.ap
    public final void g_() {
        this.f5486a.g_();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final View.OnClickListener getOnClickListener() {
        return this.f5486a.getOnClickListener();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final int getRequestedOrientation() {
        return this.f5486a.getRequestedOrientation();
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.rk
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final WebView getWebView() {
        return this.f5486a.getWebView();
    }

    @Override // com.google.android.gms.ads.internal.ap
    public final void h_() {
        this.f5486a.h_();
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final String i() {
        return this.f5486a.i();
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc
    public final asa j() {
        return this.f5486a.j();
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.pc, com.google.android.gms.internal.ads.rj
    public final zzang k() {
        return this.f5486a.k();
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final int l() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void loadData(String str, String str2, String str3) {
        this.f5486a.loadData(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.f5486a.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void loadUrl(String str) {
        this.f5486a.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.pc
    public final int m() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void n() {
        this.f5486a.n();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void o() {
        this.f5486a.o();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void onPause() {
        this.f5487b.b();
        this.f5486a.onPause();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void onResume() {
        this.f5486a.onResume();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void p() {
        this.f5486a.p();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final Context q() {
        return this.f5486a.q();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final com.google.android.gms.ads.internal.overlay.c r() {
        return this.f5486a.r();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final com.google.android.gms.ads.internal.overlay.c s() {
        return this.f5486a.s();
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.qd
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f5486a.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.qd
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f5486a.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void setRequestedOrientation(int i) {
        this.f5486a.setRequestedOrientation(i);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f5486a.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.f5486a.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final void stopLoading() {
        this.f5486a.stopLoading();
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.rg
    public final rr t() {
        return this.f5486a.t();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final String u() {
        return this.f5486a.u();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final rl v() {
        return this.f5486a.v();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final WebViewClient w() {
        return this.f5486a.w();
    }

    @Override // com.google.android.gms.internal.ads.qd
    public final boolean x() {
        return this.f5486a.x();
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.rh
    public final agv y() {
        return this.f5486a.y();
    }

    @Override // com.google.android.gms.internal.ads.qd, com.google.android.gms.internal.ads.ra
    public final boolean z() {
        return this.f5486a.z();
    }
}
