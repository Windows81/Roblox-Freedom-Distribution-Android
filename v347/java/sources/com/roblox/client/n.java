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
import android.support.v4.widget.SwipeRefreshLayout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import android.widget.Toast;
import com.roblox.client.hybrid.RBHybridWebView;
import com.roblox.client.i.h;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class n extends m implements SwipeRefreshLayout.b {
    private String l;
    private ProgressDialog m;
    private boolean n;
    private a o;
    private TextView e = null;
    private WebView f = null;
    private SwipeRefreshLayout g = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f7485a = null;
    private int h = 0;
    private int i = 0;
    private boolean j = false;
    private boolean k = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f7486b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final com.roblox.client.purchase.c f7487c = new com.roblox.client.purchase.c() { // from class: com.roblox.client.n.3
        @Override // com.roblox.client.purchase.c
        public void a() {
            n.this.f();
        }

        @Override // com.roblox.client.purchase.c
        public void b() {
            n.this.g();
        }

        @Override // com.roblox.client.purchase.c
        public void c() {
            n.this.f();
        }

        @Override // com.roblox.client.purchase.c
        public void a(com.roblox.client.purchase.d dVar) {
            n.this.g();
            n.this.a(dVar);
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final com.roblox.client.purchase.c f7488d = new com.roblox.client.purchase.c() { // from class: com.roblox.client.n.4
        @Override // com.roblox.client.purchase.c
        public void a() {
        }

        @Override // com.roblox.client.purchase.c
        public void b() {
        }

        @Override // com.roblox.client.purchase.c
        public void c() {
        }

        @Override // com.roblox.client.purchase.c
        public void a(com.roblox.client.purchase.d dVar) {
            com.roblox.client.util.g.b("rbx.amazon.purchaseflow", "onPurchaseFinishedListener: Result=" + dVar + ".");
            n.this.g();
            n.this.a(dVar);
        }
    };

    public interface a {
        void a();
    }

    public void a(a aVar) {
        this.o = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setTitle(getString(R.string.Purchasing_RobloxProducts_Label_RobuxBalance, com.roblox.client.purchase.e.a(com.roblox.client.q.d.a().j())));
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
    public void f() {
        android.support.v4.app.h activity = getActivity();
        if (activity != null) {
            if (this.m == null) {
                this.m = a(activity, (String) null, getString(R.string.CommonUI_Messages_Label_Working_InProgress));
            }
            this.m.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.m != null && this.m.isShowing()) {
            this.m.dismiss();
        }
    }

    public void a(String str) {
    }

    public void a(WebView webView, int i) {
    }

    public void b(String str) {
    }

    private class b extends WebViewClient {
        private b() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            com.roblox.client.util.g.b("rbx.web", "-> " + str);
            n.this.a(str);
            n.this.g.setRefreshing(true);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            n.this.g.setRefreshing(false);
            com.roblox.client.util.g.b("rbx.web", "onPageFinished. url=" + str);
            n.this.b(str);
            if (com.roblox.client.f.f.a().b(str)) {
                n.this.f.reload();
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            long j;
            long j2;
            com.roblox.client.util.g.b("rbx.web", "-> " + str);
            if (str == null) {
                com.roblox.client.util.g.e("rbx.web", "RWF.shouldOverrideUrlLoading() urlString is null!");
                return false;
            }
            android.support.v4.app.h activity = n.this.getActivity();
            if (activity == null || activity.isFinishing()) {
                com.roblox.client.util.g.b("rbx.web", "RWF.shouldOverrideUrlLoading() activity is null or finishing");
                return true;
            }
            if (!n.this.alertIfNetworkNotConnected() && !n.this.d(str)) {
                if (com.roblox.client.b.Q() && !p.b(str)) {
                    p.b(activity, str);
                    return true;
                }
                if (str.equalsIgnoreCase(RobloxSettings.passwordResetCompletedUrl())) {
                    if (n.this.o != null) {
                        n.this.o.a();
                    }
                    return true;
                }
                if (!RobloxSettings.isLoginWebUrl(str) || n.this.n) {
                    n.this.f.setOnTouchListener(null);
                    n.this.a(str, true);
                    if (str.contains("/games/start?")) {
                        String strDeviceNotSupportedString = RobloxSettings.deviceNotSupportedString();
                        if (strDeviceNotSupportedString != null && !RobloxSettings.deviceNotSupportedSkippable()) {
                            n.this.alertFormatted(R.string.CommonUI_Messages_Response_UnsupportedDevice, strDeviceNotSupportedString);
                            return true;
                        }
                        Uri uri = Uri.parse(str);
                        try {
                            j = Long.parseLong(uri.getQueryParameter("placeid"));
                        } catch (NumberFormatException e) {
                            j = -1;
                        }
                        try {
                            j2 = Long.parseLong(uri.getQueryParameter("userID"));
                        } catch (NumberFormatException e2) {
                            j2 = -1;
                        }
                        com.roblox.client.game.a aVarA = com.roblox.client.game.a.a(Long.valueOf(j), Long.valueOf(j2), uri.getQueryParameter("accessCode"), uri.getQueryParameter("gameInstanceId"), null);
                        String string = n.this.getString(R.string.Game_Launch_Response_ErrorJoiningGame);
                        if (j == -1 && j2 == -1) {
                            com.roblox.client.b.c.a("UnexpectedError", "Missing placeid and userID.");
                            n.this.alertMessageFromServerOkButton(string);
                            return true;
                        }
                        if (aVarA.e() == -1) {
                            com.roblox.client.util.g.e("rbx.web", "Game join request type not set.");
                            n.this.alertMessageFromServerOkButton(string);
                            return false;
                        }
                        Bundle bundle = new Bundle();
                        bundle.putBundle("game_init_params", com.roblox.client.game.a.a(aVarA));
                        com.roblox.client.i.e.a().a(101, bundle);
                        return true;
                    }
                    if (!str.contains("mobile-app-upgrades/buy?")) {
                        n.this.e.setText(str);
                        webView.loadUrl(str);
                        return true;
                    }
                    k kVar = (k) activity;
                    String strF = com.roblox.client.q.d.a().f();
                    String queryParameter = Uri.parse(str).getQueryParameter("id");
                    com.roblox.client.purchase.google.b bVarT = kVar.t();
                    if (bVarT != null) {
                        i.b(n.this.h(), "purchaseStart" + queryParameter);
                        if (!bVarT.a(strF, queryParameter, kVar, n.this.f7487c)) {
                            n.this.alertOk(R.string.Purchasing_RobloxProducts_Response_PurchaseSetupGooglePlay);
                            com.roblox.client.b.c.a("GoogleStoreInitiate", "WebView", "FailedPlayStoreNotSetUp");
                        } else {
                            com.roblox.client.b.c.a("GoogleStoreInitiate", "WebView", "Started");
                        }
                    } else {
                        n.this.alertOk(R.string.Purchasing_RobloxProducts_Response_PurchaseUpdateAndroidVersion);
                        com.roblox.client.b.c.a("GoogleStoreInitiate", "WebView", "FailedOldAndroidVersion");
                    }
                    return true;
                }
                com.roblox.client.util.g.b("rbx.web", "RWF.shouldOverrideUrlLoading() The URL is a LOGIN type!");
                if (!com.roblox.client.i.h.a().d() && (activity instanceof ActivityNativeMain)) {
                    ((ActivityNativeMain) activity).m();
                    return true;
                }
                Toast.makeText(activity, R.string.Authentication_Login_Response_SessionExpiredLoginAgain, 1).show();
                com.roblox.client.startup.b.a(activity).a((Context) activity, false);
                final String loginWebUrlMatch = RobloxSettings.getLoginWebUrlMatch(str);
                com.roblox.client.i.h.a().a(new com.roblox.client.http.m() { // from class: com.roblox.client.n.b.1
                    @Override // com.roblox.client.http.m
                    public void a(com.roblox.client.http.j jVar) {
                        if (jVar.b() == 401) {
                            com.roblox.client.b.c.a("LoginWebView", "SessionExpired_401", loginWebUrlMatch);
                        } else if (jVar.b() == 200) {
                            com.roblox.client.b.c.a("LoginWebView", "SessionSuccess_200", loginWebUrlMatch);
                        } else {
                            com.roblox.client.b.c.a("LoginWebView", "SessionUnknown_" + jVar.b(), loginWebUrlMatch);
                        }
                    }
                });
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(String str) {
        Intent intent = null;
        if (str.startsWith("mailto:")) {
            intent = new Intent("android.intent.action.SENDTO", Uri.parse(str));
        } else if (str.startsWith("tel:")) {
            intent = new Intent("android.intent.action.DIAL", Uri.parse(str));
        }
        if (intent == null) {
            return false;
        }
        if (com.roblox.client.util.h.a(getContext(), intent)) {
            startActivity(intent);
            return true;
        }
        showToast(R.string.CommonUI_Messages_Response_NoOpenLinkAppInstalled, 1);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z) {
        if (str.contains("sponsored")) {
            this.f.getSettings().setBuiltInZoomControls(z);
        } else {
            this.f.getSettings().setBuiltInZoomControls(!z);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_webview, viewGroup, false);
        this.e = (TextView) viewInflate.findViewById(R.id.webview_urlbar);
        b bVar = new b();
        this.f = (WebView) viewInflate.findViewById(R.id.web_view);
        this.f.setTag(this.l);
        this.f.setWebViewClient(bVar);
        this.f.setWebChromeClient(new WebChromeClient() { // from class: com.roblox.client.n.1
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                n.this.a(webView, i);
            }
        });
        this.f.getSettings().setJavaScriptEnabled(true);
        this.f.getSettings().setUserAgentString(RobloxSettings.userAgent());
        this.f.getSettings().setCacheMode(-1);
        this.f.setHorizontalScrollBarEnabled(false);
        this.f.setVerticalScrollBarEnabled(false);
        String userAgentString = this.f.getSettings().getUserAgentString();
        this.f.getSettings().setUserAgentString(null);
        String userAgentString2 = this.f.getSettings().getUserAgentString();
        this.f.getSettings().setUserAgentString(userAgentString);
        if (!userAgentString2.contains("Chrome/")) {
        }
        if (com.roblox.client.d.b.a() && Build.VERSION.SDK_INT >= 19) {
            WebView webView = this.f;
            WebView.setWebContentsDebuggingEnabled(true);
        }
        if (this.f7485a != null) {
            this.f.loadUrl(this.f7485a);
            this.f7485a = null;
        }
        this.g = (SwipeRefreshLayout) viewInflate.findViewById(R.id.swipe_container);
        this.g.setOnRefreshListener(this);
        this.g.setColorSchemeResources(R.color.RbxRed1, R.color.RbxRed1, R.color.white, R.color.white);
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (arguments.getBoolean("showRobux", false)) {
                this.j = true;
                e();
                com.roblox.client.i.h.a().a(new h.a() { // from class: com.roblox.client.n.2
                    @Override // com.roblox.client.i.h.a
                    public void a(boolean z, int i) {
                        n.this.e();
                    }
                }, new com.roblox.client.http.h());
            } else if (arguments.getBoolean("showBC", false)) {
                this.k = true;
            }
            this.h = arguments.getInt("dialogHeight", 0);
            this.i = arguments.getInt("dialogWidth", 0);
            if (!arguments.getBoolean("enablePullToRefresh", true)) {
                this.g.setEnabled(false);
            }
            this.n = arguments.getBoolean("USING_LOGIN_WEB_URL", false);
        }
        alertIfNetworkNotConnected();
        return viewInflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        Window window;
        super.onResume();
        if (getDialog() != null && this.h != 0 && (window = getDialog().getWindow()) != null) {
            if (this.i == 0) {
                window.setLayout(-2, this.h);
            } else {
                window.setLayout(this.i, this.h);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (!z && com.roblox.client.f.f.a().b(this.f.getUrl())) {
            this.f.reload();
        }
    }

    @Override // com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.roblox.a.a.b.a().a(this);
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("DEFAULT_URL", null);
            com.roblox.client.util.g.c("rbx.web", "onCreate: default-URL = " + string + ".");
            if (string != null) {
                this.f7486b = string;
                if (this.f7485a == null) {
                    this.f7485a = string;
                }
            }
            this.l = arguments.getString("WEB_VIEW_TAG", null);
        }
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        com.roblox.a.a.b.a().b(this);
        super.onDestroy();
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // android.support.v4.widget.SwipeRefreshLayout.b
    public void a() {
        if (getActivity() != null) {
            if (!((k) getActivity()).p()) {
                this.f.reload();
            } else {
                this.g.setRefreshing(false);
            }
        }
    }

    public void c(String str) {
        if (this.f == null) {
            this.f7485a = str;
        } else {
            this.f.loadUrl(str);
        }
    }

    public String b() {
        return this.f == null ? this.f7485a : this.f.getUrl();
    }

    public boolean c() {
        if (this.f == null || !this.f.canGoBack()) {
            return false;
        }
        a(this.f.getUrl(), false);
        this.f.goBack();
        return true;
    }

    public void d() {
        if (this.f != null && this.f7486b != null) {
            this.f.loadUrl(this.f7486b);
        }
    }

    @Override // android.support.v4.app.g, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (!com.roblox.client.i.h.a().d()) {
            if (this.k || this.j) {
                i.b(h(), "close");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String h() {
        if (this.k) {
            return "buildersClub";
        }
        if (this.j) {
            return "robux";
        }
        return "undefinedWebContext";
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onEmitRbHybridEvent(com.roblox.a.a.a aVar) {
        if (this.f instanceof RBHybridWebView) {
            ((RBHybridWebView) this.f).a(aVar.f6347a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.purchase.d dVar) {
        e();
        android.support.v4.app.h activity = getActivity();
        if (activity != null) {
            CharSequence charSequenceA = dVar.a(activity);
            if (dVar.a()) {
                contactSupport(charSequenceA);
            } else {
                alertMessageFromServerOkButton(charSequenceA.toString());
            }
        }
    }
}
