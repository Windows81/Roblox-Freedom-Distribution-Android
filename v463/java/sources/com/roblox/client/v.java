package com.roblox.client;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import androidx.j.a.c;
import com.roblox.client.hybrid.RBHybridWebView;
import com.roblox.client.o;
import com.roblox.client.s.c;
import com.roblox.client.s.h;
import com.roblox.engine.jni.NativeAppBridgeInterface;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class v extends s implements c.b {
    private String aF;
    private ProgressDialog aG;
    private boolean aH;
    private b aI;
    private com.roblox.client.app.b aL;
    protected ValueCallback<Uri[]> av;
    private TextView az = null;
    protected RBHybridWebView as = null;
    private androidx.j.a.c aA = null;
    protected String at = null;
    private int aB = 0;
    private int aC = 0;
    private boolean aD = false;
    private boolean aE = false;
    protected String au = null;
    private boolean aJ = false;
    private boolean aK = false;
    protected boolean aw = true;
    final com.roblox.client.purchase.e ax = new com.roblox.client.purchase.e() { // from class: com.roblox.client.v.3
        @Override // com.roblox.client.purchase.e
        public void a() {
            v.this.av();
        }

        @Override // com.roblox.client.purchase.e
        public void b() {
            v.this.aw();
        }

        @Override // com.roblox.client.purchase.e
        public void c() {
            v.this.av();
        }

        @Override // com.roblox.client.purchase.e
        public void a(com.roblox.client.purchase.f fVar) {
            v.this.aw();
            v.this.a(fVar);
            if (com.roblox.client.b.ck() && v.this.aE) {
                v.this.a();
            }
        }
    };
    final com.roblox.client.purchase.e ay = new com.roblox.client.purchase.e() { // from class: com.roblox.client.v.4
        @Override // com.roblox.client.purchase.e
        public void a() {
        }

        @Override // com.roblox.client.purchase.e
        public void b() {
        }

        @Override // com.roblox.client.purchase.e
        public void c() {
        }

        @Override // com.roblox.client.purchase.e
        public void a(com.roblox.client.purchase.f fVar) {
            com.roblox.client.ae.k.b("rbx.amazon.purchaseflow", "onPurchaseFinishedListener: Result=" + fVar + ".");
            v.this.aw();
            v.this.a(fVar);
        }
    };
    private final com.roblox.client.purchase.e aM = new com.roblox.client.purchase.e() { // from class: com.roblox.client.v.5
        @Override // com.roblox.client.purchase.e
        public void b() {
        }

        @Override // com.roblox.client.purchase.e
        public void c() {
        }

        @Override // com.roblox.client.purchase.e
        public void a() {
            v.this.av();
        }

        @Override // com.roblox.client.purchase.e
        public void a(com.roblox.client.purchase.f fVar) {
            v.this.aw();
            v.this.a(fVar);
        }
    };

    public interface b {
        void a();
    }

    public void a(WebView webView, int i) {
    }

    public void d(String str) {
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void e(Bundle bundle) {
    }

    public void e(String str) {
    }

    public class a {
        public a() {
        }
    }

    public void a(b bVar) {
        this.aI = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void au() {
        Dialog dialogC = c();
        if (dialogC != null) {
            dialogC.setTitle(a(o.j.Purchasing_RobloxProducts_Label_RobuxBalance, com.roblox.client.purchase.g.a(com.roblox.client.ad.c.a().j())));
        }
    }

    private ProgressDialog a(Context context, String str, String str2) {
        ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.setTitle(str);
        progressDialog.setMessage(str2);
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(true);
        progressDialog.setCanceledOnTouchOutside(false);
        progressDialog.setOnCancelListener(null);
        return progressDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void av() {
        androidx.fragment.app.c cVarR = r();
        if (cVarR == null) {
            return;
        }
        if (this.aG == null) {
            this.aG = a(cVarR, (String) null, a(o.j.CommonUI_Messages_Label_Working_InProgress));
        }
        this.aG.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aw() {
        ProgressDialog progressDialog = this.aG;
        if (progressDialog == null || !progressDialog.isShowing()) {
            return;
        }
        this.aG.dismiss();
    }

    public void a(com.roblox.client.app.d dVar) {
        if (dVar.f5728c != null) {
            m(dVar.f5728c.booleanValue());
        }
        if (dVar.f5730e != null) {
            n(dVar.f5730e.booleanValue());
        }
    }

    public void m(boolean z) {
        this.aw = z;
    }

    public void n(boolean z) {
        this.aK = z;
    }

    public boolean aq() {
        return this.aK;
    }

    protected class c extends WebViewClient {
        protected c() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            com.roblox.client.ae.k.b("rbx.web", "-> " + str);
            v.this.d(str);
            v.this.aA.setRefreshing(true);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            v.this.aA.setRefreshing(false);
            com.roblox.client.ae.k.b("rbx.web", "onPageFinished. url=" + str);
            v.this.e(str);
            if (com.roblox.client.n.d.a().b(str)) {
                v.this.as.reload();
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            boolean zBooleanValue;
            long j;
            long j2;
            com.roblox.client.ae.k.b("rbx.web", "-> " + str);
            if (str == null) {
                com.roblox.client.ae.k.e("rbx.web", "RWF.shouldOverrideUrlLoading() urlString is null!");
                return false;
            }
            androidx.fragment.app.c cVarR = v.this.r();
            if (cVarR == null || cVarR.isFinishing()) {
                com.roblox.client.ae.k.b("rbx.web", "RWF.shouldOverrideUrlLoading() activity is null or finishing");
                return true;
            }
            if (v.this.ap() || v.this.h(str)) {
                return true;
            }
            if (!com.roblox.client.b.C() || x.a(str)) {
                if (v.this.g(str)) {
                    com.roblox.client.ae.k.b("rbx.web", "Navigating social media Link...");
                    return true;
                }
                if (str.equalsIgnoreCase(u.ag())) {
                    if (v.this.aI != null) {
                        v.this.aI.a();
                    }
                    return true;
                }
                if (u.l(str) && !v.this.aH) {
                    com.roblox.client.ae.k.b("rbx.web", "RWF.shouldOverrideUrlLoading() The URL is a LOGIN type!");
                    v vVar = v.this;
                    vVar.a(com.roblox.client.locale.a.a.a(vVar.p(), o.j.Authentication_Login_Response_SessionExpiredLoginAgain, new Object[0]), 1);
                    com.roblox.client.s.c.d().a(cVarR, c.e.LOGOUT_BY_401_ERROR_IN_WEB);
                    final String strK = u.k(str);
                    com.roblox.client.s.h.a().a(new com.roblox.client.http.m() { // from class: com.roblox.client.v.c.1
                        @Override // com.roblox.client.http.m
                        public void a(com.roblox.client.http.j jVar) {
                            if (jVar.b() == 401) {
                                com.roblox.client.analytics.d.a("LoginWebView", "SessionExpired_401", strK);
                                return;
                            }
                            if (jVar.b() == 200) {
                                com.roblox.client.analytics.d.a("LoginWebView", "SessionSuccess_200", strK);
                                return;
                            }
                            com.roblox.client.analytics.d.a("LoginWebView", "SessionUnknown_" + jVar.b(), strK);
                        }
                    });
                    return true;
                }
                String queryParameter = null;
                v.this.as.setOnTouchListener(null);
                v.this.a(str, true);
                if (str.contains("/games/start?")) {
                    String strAp = u.ap();
                    if (strAp != null && !u.aq()) {
                        v.this.b(o.j.CommonUI_Messages_Response_UnsupportedDevice, strAp);
                        return true;
                    }
                    Uri uri = Uri.parse(str);
                    try {
                        j = Long.parseLong(uri.getQueryParameter("placeid"));
                    } catch (NumberFormatException unused) {
                        j = -1;
                    }
                    try {
                        j2 = Long.parseLong(uri.getQueryParameter("userID"));
                    } catch (NumberFormatException unused2) {
                        j2 = -1;
                    }
                    com.roblox.client.game.h hVarA = com.roblox.client.game.h.a(Long.valueOf(j), Long.valueOf(j2), uri.getQueryParameter("accessCode"), uri.getQueryParameter("gameInstanceId"), null, "WebView");
                    String strA = v.this.a(o.j.Game_Launch_Response_ErrorJoiningGame);
                    if (j == -1 && j2 == -1) {
                        com.roblox.client.analytics.d.a("UnexpectedError", "Missing placeid and userID.");
                        v.this.b(strA);
                        return true;
                    }
                    if (hVarA.g() == -1) {
                        com.roblox.client.ae.k.e("rbx.web", "Game join request type not set.");
                        v.this.b(strA);
                        return false;
                    }
                    Bundle bundle = new Bundle();
                    bundle.putBundle("game_init_params", com.roblox.client.game.h.a(hVarA));
                    com.roblox.client.s.e.a().a(101, bundle);
                    return true;
                }
                if (str.contains("mobile-app-upgrades/buy?")) {
                    q qVar = (q) cVarR;
                    String strE = com.roblox.client.ad.c.a().e();
                    Uri uri2 = Uri.parse(str);
                    String queryParameter2 = uri2.getQueryParameter("id");
                    com.roblox.client.purchase.google.b bVarA = com.roblox.client.purchase.google.b.a(qVar);
                    if (bVarA != null) {
                        p.a(v.this.ax(), "purchaseStart" + queryParameter2);
                        if (com.roblox.client.b.cf()) {
                            try {
                                queryParameter = uri2.getQueryParameter("recurring");
                            } catch (NullPointerException unused3) {
                                com.roblox.client.ae.k.b("rbx.purchaseflow", "NullPointerException thrown while parsing recurring parameter for purchase url");
                            } catch (UnsupportedOperationException unused4) {
                                com.roblox.client.ae.k.b("rbx.purchaseflow", "UnsupportedOperationException thrown while parsing recurring parameter for purchase url");
                            }
                            zBooleanValue = Boolean.valueOf(queryParameter).booleanValue();
                        } else {
                            zBooleanValue = false;
                        }
                        if (!bVarA.a(strE, queryParameter2, qVar, v.this.ax, zBooleanValue)) {
                            v.this.d(o.j.Purchasing_RobloxProducts_Response_PurchaseSetupGooglePlay);
                            com.roblox.client.analytics.d.a("GoogleStoreInitiate", "WebView", "FailedPlayStoreNotSetUp");
                        } else {
                            com.roblox.client.analytics.d.a("GoogleStoreInitiate", "WebView", "Started");
                        }
                    } else {
                        v.this.d(o.j.Purchasing_RobloxProducts_Response_PurchaseUpdateAndroidVersion);
                        com.roblox.client.analytics.d.a("GoogleStoreInitiate", "WebView", "FailedOldAndroidVersion");
                    }
                    return true;
                }
                if (!NativeAppBridgeInterface.checkInAppLink(str)) {
                    v.this.az.setText(str);
                    webView.loadUrl(str);
                    return true;
                }
                com.roblox.client.routing.a.a().b(str);
                org.greenrobot.eventbus.c.a().c(v.this.new a());
                return true;
            }
            x.b(cVarR, str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(WebView webView, String str) {
            super.onLoadResource(webView, str);
            if (com.roblox.client.b.bU()) {
                com.roblox.platform.http.g.a().a(u.d());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(String str) {
        if (!com.roblox.client.m.c.a().cU()) {
            return false;
        }
        com.roblox.client.z.c cVar = new com.roblox.client.z.c("rbx.web");
        if (!cVar.a(str)) {
            return false;
        }
        cVar.a(r(), str, str);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h(String str) {
        Intent intent;
        if (str.startsWith("mailto:")) {
            intent = new Intent("android.intent.action.SENDTO", Uri.parse(str));
        } else {
            intent = str.startsWith("tel:") ? new Intent("android.intent.action.DIAL", Uri.parse(str)) : null;
        }
        if (intent == null) {
            return false;
        }
        if (com.roblox.client.ae.l.a(p(), intent)) {
            a(intent);
            return true;
        }
        c(o.j.CommonUI_Messages_Response_NoOpenLinkAppInstalled, 1);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z) {
        if (str.contains("sponsored")) {
            this.as.getSettings().setBuiltInZoomControls(z);
        } else {
            this.as.getSettings().setBuiltInZoomControls(!z);
        }
    }

    public RBHybridWebView ar() {
        if (this.aJ) {
            return new com.roblox.client.hybrid.a(p());
        }
        return new RBHybridWebView(p());
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void j() {
        super.j();
        this.as.b();
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(o.g.fragment_webview, viewGroup, false);
        ViewGroup viewGroup2 = (ViewGroup) viewInflate.findViewById(o.f.swipe_container);
        this.az = (TextView) viewInflate.findViewById(o.f.webview_urlbar);
        c cVar = new c();
        RBHybridWebView rBHybridWebViewAr = ar();
        this.as = rBHybridWebViewAr;
        viewGroup2.addView(rBHybridWebViewAr, new ViewGroup.LayoutParams(-1, -1));
        this.as.setTag(this.aF);
        this.as.setWebViewClient(cVar);
        this.as.setWebChromeClient(new WebChromeClient() { // from class: com.roblox.client.v.1
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                v.this.a(webView, i);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
                v.this.av = valueCallback;
                Intent intent = new Intent("android.intent.action.GET_CONTENT");
                intent.setType("image/*");
                v.this.startActivityForResult(Intent.createChooser(intent, "Select Picture"), 10123);
                return true;
            }
        });
        this.as.getSettings().setJavaScriptEnabled(true);
        this.as.getSettings().setUserAgentString(u.t());
        this.as.getSettings().setCacheMode(-1);
        this.as.setHorizontalScrollBarEnabled(false);
        this.as.setVerticalScrollBarEnabled(false);
        String userAgentString = this.as.getSettings().getUserAgentString();
        this.as.getSettings().setUserAgentString(null);
        String userAgentString2 = this.as.getSettings().getUserAgentString();
        this.as.getSettings().setUserAgentString(userAgentString);
        userAgentString2.contains("Chrome/");
        if (com.roblox.client.i.b.a() && Build.VERSION.SDK_INT >= 19) {
            RBHybridWebView.setWebContentsDebuggingEnabled(true);
        }
        String str = this.at;
        if (str != null) {
            this.as.loadUrl(str);
            this.at = null;
        }
        androidx.j.a.c cVar2 = (androidx.j.a.c) viewInflate.findViewById(o.f.swipe_container);
        this.aA = cVar2;
        cVar2.setOnRefreshListener(this);
        this.aA.setColorSchemeResources(o.c.RbxRed1, o.c.RbxRed1, o.c.white, o.c.white);
        Bundle bundleN = n();
        if (bundleN != null) {
            if (bundleN.getBoolean("showRobux", false)) {
                this.aD = true;
                au();
                com.roblox.client.s.h.a().a(new h.a() { // from class: com.roblox.client.v.2
                    @Override // com.roblox.client.s.h.a
                    public void a(boolean z, int i) {
                        v.this.au();
                    }
                }, new com.roblox.client.http.h());
            } else if (bundleN.getBoolean("showBC", false)) {
                this.aE = true;
            }
            this.aB = bundleN.getInt("dialogHeight", 0);
            this.aC = bundleN.getInt("dialogWidth", 0);
            if (!bundleN.getBoolean("enablePullToRefresh", true)) {
                this.aA.setEnabled(false);
            }
            this.aH = bundleN.getBoolean("USING_LOGIN_WEB_URL", false);
            this.aw = bundleN.getBoolean("VISIBLE", true);
            this.aK = bundleN.getBoolean("BACK_NAVIGATION_DISABLED", false);
        }
        ap();
        this.as.a();
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void a(int i, int i2, Intent intent) {
        if (i == 10123) {
            if (i2 == -1) {
                this.av.onReceiveValue(new Uri[]{intent.getData()});
            } else {
                com.roblox.client.ae.k.b("rbx.web", "Result of file chooser invalid.");
                this.av.onReceiveValue(null);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void F() {
        Window window;
        super.F();
        if (c() != null && this.aB != 0 && (window = c().getWindow()) != null) {
            int i = this.aC;
            if (i == 0) {
                window.setLayout(-2, this.aB);
            } else {
                window.setLayout(i, this.aB);
            }
        }
        RBHybridWebView rBHybridWebView = this.as;
        if (rBHybridWebView != null) {
            rBHybridWebView.onResume();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void d(boolean z) {
        super.d(z);
        if (z || !com.roblox.client.n.d.a().b(this.as.getUrl())) {
            return;
        }
        this.as.reload();
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        com.roblox.a.a.b.a().a(this);
        Bundle bundleN = n();
        if (bundleN != null) {
            String string = bundleN.getString("DEFAULT_URL", null);
            com.roblox.client.ae.k.c("rbx.web", "onCreate: default-URL = " + string + ".");
            if (string != null) {
                this.au = string;
                if (this.at == null) {
                    this.at = string;
                }
            }
            this.aF = bundleN.getString("WEB_VIEW_TAG", null);
            this.aJ = bundleN.getBoolean("USE_APP_HYBRID");
        }
        this.aL = new com.roblox.client.app.b(p());
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void i() {
        super.i();
    }

    @Override // androidx.fragment.app.Fragment
    public void H() {
        com.roblox.a.a.b.a().b(this);
        super.H();
    }

    @Override // androidx.fragment.app.Fragment
    public void G() {
        super.G();
        RBHybridWebView rBHybridWebView = this.as;
        if (rBHybridWebView != null) {
            rBHybridWebView.onPause();
        }
    }

    @Override // androidx.j.a.c.b
    public void g_() {
        if (r() != null) {
            if (!((q) r()).D()) {
                this.as.reload();
            } else {
                this.aA.setRefreshing(false);
            }
        }
    }

    public void f(String str) {
        RBHybridWebView rBHybridWebView = this.as;
        if (rBHybridWebView == null) {
            this.at = str;
        } else {
            rBHybridWebView.loadUrl(str);
        }
    }

    public String as() {
        RBHybridWebView rBHybridWebView = this.as;
        if (rBHybridWebView == null) {
            return this.at;
        }
        return rBHybridWebView.getUrl();
    }

    public boolean at() {
        RBHybridWebView rBHybridWebView = this.as;
        if (rBHybridWebView == null || !rBHybridWebView.canGoBack()) {
            return false;
        }
        a(this.as.getUrl(), false);
        this.as.goBack();
        return true;
    }

    @Override // androidx.fragment.app.b, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (com.roblox.client.s.h.a().d()) {
            return;
        }
        if (this.aE || this.aD) {
            p.a(ax(), "close");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String ax() {
        return this.aE ? "buildersClub" : this.aD ? "robux" : "undefinedWebContext";
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onEmitRbHybridEvent(com.roblox.a.a.a aVar) {
        RBHybridWebView rBHybridWebView = this.as;
        if (rBHybridWebView instanceof RBHybridWebView) {
            rBHybridWebView.a(aVar.f5519a);
        }
    }

    @Override // com.roblox.client.s, com.roblox.client.ab.d.a
    public void a(com.roblox.client.ab.e eVar) {
        super.a(eVar);
        this.as.setBackgroundColor(this.aL.a(com.roblox.client.ad.c.a().m()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.purchase.f fVar) {
        au();
        androidx.fragment.app.c cVarR = r();
        if (cVarR == null) {
            return;
        }
        CharSequence charSequenceA = fVar.a(cVarR);
        if (fVar.a()) {
            a(charSequenceA);
        } else {
            b(charSequenceA.toString());
        }
    }
}
