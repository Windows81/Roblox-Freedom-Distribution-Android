package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public interface qd extends com.google.android.gms.ads.internal.ap, akj, ayi, azj, pc, qz, ra, re, rh, rj, rk {
    boolean A();

    void B();

    boolean C();

    boolean D();

    boolean E();

    void F();

    void G();

    atc H();

    void I();

    void J();

    void a(int i);

    void a(Context context);

    void a(com.google.android.gms.ads.internal.overlay.c cVar);

    void a(atc atcVar);

    @Override // com.google.android.gms.internal.ads.pc
    void a(qt qtVar);

    void a(rr rrVar);

    void a(String str);

    void a(String str, com.google.android.gms.ads.internal.gmsg.ae<? super qd> aeVar);

    void a(String str, com.google.android.gms.common.util.o<com.google.android.gms.ads.internal.gmsg.ae<? super qd>> oVar);

    void a(String str, String str2, String str3);

    @Override // com.google.android.gms.internal.ads.pc
    qt b();

    void b(com.google.android.gms.ads.internal.overlay.c cVar);

    void b(String str, com.google.android.gms.ads.internal.gmsg.ae<? super qd> aeVar);

    void b(boolean z);

    void c(boolean z);

    @Override // com.google.android.gms.internal.ads.pc, com.google.android.gms.internal.ads.qz
    Activity d();

    void d(boolean z);

    void destroy();

    @Override // com.google.android.gms.internal.ads.pc
    com.google.android.gms.ads.internal.bt e();

    void e(boolean z);

    @Override // com.google.android.gms.internal.ads.pc, com.google.android.gms.internal.ads.qz
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    View.OnClickListener getOnClickListener();

    ViewParent getParent();

    int getRequestedOrientation();

    @Override // com.google.android.gms.internal.ads.rk
    View getView();

    WebView getWebView();

    int getWidth();

    @Override // com.google.android.gms.internal.ads.pc
    asa j();

    @Override // com.google.android.gms.internal.ads.pc, com.google.android.gms.internal.ads.rj
    zzang k();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    void n();

    void o();

    void onPause();

    void onResume();

    void p();

    Context q();

    com.google.android.gms.ads.internal.overlay.c r();

    com.google.android.gms.ads.internal.overlay.c s();

    @Override // com.google.android.gms.internal.ads.pc
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setRequestedOrientation(int i);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    void stopLoading();

    @Override // com.google.android.gms.internal.ads.rg
    rr t();

    String u();

    rl v();

    WebViewClient w();

    boolean x();

    @Override // com.google.android.gms.internal.ads.rh
    agv y();

    @Override // com.google.android.gms.internal.ads.ra
    boolean z();
}
