package com.google.android.gms.internal.ads;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
@cm
@TargetApi(11)
public final class pv extends WebChromeClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final qd f5455a;

    public pv(qd qdVar) {
        this.f5455a = qdVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Context a(WebView webView) {
        if (!(webView instanceof qd)) {
            return webView.getContext();
        }
        qd qdVar = (qd) webView;
        Activity activityD = qdVar.d();
        return activityD == null ? qdVar.getContext() : activityD;
    }

    private final boolean a(Context context, String str, String str2, String str3, String str4, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        com.google.android.gms.ads.internal.bu buVarA;
        boolean z2 = true;
        try {
            if (this.f5455a == null || this.f5455a.v() == null || this.f5455a.v().a() == null || (buVarA = this.f5455a.v().a()) == null || buVarA.b()) {
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setTitle(str2);
                if (z) {
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setOrientation(1);
                    TextView textView = new TextView(context);
                    textView.setText(str3);
                    EditText editText = new EditText(context);
                    editText.setText(str4);
                    linearLayout.addView(textView);
                    linearLayout.addView(editText);
                    builder.setView(linearLayout).setPositiveButton(R.string.ok, new qb(jsPromptResult, editText)).setNegativeButton(R.string.cancel, new qa(jsPromptResult)).setOnCancelListener(new pz(jsPromptResult)).create().show();
                } else {
                    builder.setMessage(str3).setPositiveButton(R.string.ok, new py(jsResult)).setNegativeButton(R.string.cancel, new px(jsResult)).setOnCancelListener(new pw(jsResult)).create().show();
                }
            } else {
                buVarA.a(new StringBuilder(String.valueOf(str).length() + 11 + String.valueOf(str3).length()).append("window.").append(str).append("('").append(str3).append("')").toString());
                z2 = false;
            }
        } catch (WindowManager.BadTokenException e) {
            jd.c("Fail to display Dialog.", e);
        }
        return z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        if (!(webView instanceof qd)) {
            jd.e("Tried to close a WebView that wasn't an AdWebView.");
            return;
        }
        com.google.android.gms.ads.internal.overlay.c cVarR = ((qd) webView).r();
        if (cVarR == null) {
            jd.e("Tried to close an AdWebView not associated with an overlay.");
        } else {
            cVarR.a();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String strMessage = consoleMessage.message();
        String strSourceId = consoleMessage.sourceId();
        String string = new StringBuilder(String.valueOf(strMessage).length() + 19 + String.valueOf(strSourceId).length()).append("JS: ").append(strMessage).append(" (").append(strSourceId).append(":").append(consoleMessage.lineNumber()).append(")").toString();
        if (string.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        switch (qc.f5463a[consoleMessage.messageLevel().ordinal()]) {
            case 1:
                jd.c(string);
                break;
            case 2:
                jd.e(string);
                break;
            case 3:
            case 4:
                jd.d(string);
                break;
            case 5:
                jd.b(string);
                break;
            default:
                jd.d(string);
                break;
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        if (this.f5455a.w() != null) {
            webView2.setWebViewClient(this.f5455a.w());
        }
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        long j4 = 5242880 - j3;
        if (j4 <= 0) {
            quotaUpdater.updateQuota(j);
            return;
        }
        if (j != 0) {
            if (j2 == 0) {
                j = Math.min(Math.min(131072L, j4) + j, 1048576L);
            } else if (j2 <= Math.min(1048576 - j, j4)) {
                j += j2;
            }
            j2 = j;
        } else if (j2 > j4 || j2 > 1048576) {
            j2 = 0;
        }
        quotaUpdater.updateQuota(j2);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @Override // android.webkit.WebChromeClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onGeolocationPermissionsShowPrompt(java.lang.String r4, android.webkit.GeolocationPermissions.Callback r5) {
        /*
            r3 = this;
            r1 = 1
            if (r5 == 0) goto L29
            com.google.android.gms.ads.internal.aw.e()
            com.google.android.gms.internal.ads.qd r0 = r3.f5455a
            android.content.Context r0 = r0.getContext()
            java.lang.String r2 = "android.permission.ACCESS_FINE_LOCATION"
            boolean r0 = com.google.android.gms.internal.ads.jm.a(r0, r2)
            if (r0 != 0) goto L25
            com.google.android.gms.ads.internal.aw.e()
            com.google.android.gms.internal.ads.qd r0 = r3.f5455a
            android.content.Context r0 = r0.getContext()
            java.lang.String r2 = "android.permission.ACCESS_COARSE_LOCATION"
            boolean r0 = com.google.android.gms.internal.ads.jm.a(r0, r2)
            if (r0 == 0) goto L2a
        L25:
            r0 = r1
        L26:
            r5.invoke(r4, r0, r1)
        L29:
            return
        L2a:
            r0 = 0
            goto L26
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.pv.onGeolocationPermissionsShowPrompt(java.lang.String, android.webkit.GeolocationPermissions$Callback):void");
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        com.google.android.gms.ads.internal.overlay.c cVarR = this.f5455a.r();
        if (cVarR == null) {
            jd.e("Could not get ad overlay when hiding custom view.");
        } else {
            cVarR.b();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return a(a(webView), "alert", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return a(a(webView), "onBeforeUnload", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return a(a(webView), "confirm", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return a(a(webView), "prompt", str, str2, str3, null, jsPromptResult, true);
    }

    @Override // android.webkit.WebChromeClient
    @TargetApi(21)
    public final void onPermissionRequest(PermissionRequest permissionRequest) {
        if (com.google.android.gms.common.util.n.i()) {
            if (!((Boolean) aoo.f().a(aro.aC)).booleanValue()) {
                if (this.f5455a == null || this.f5455a.v() == null || this.f5455a.v().m() == null) {
                    super.onPermissionRequest(permissionRequest);
                    return;
                }
                String[] strArrA = this.f5455a.v().m().a(permissionRequest.getResources());
                if (strArrA.length > 0) {
                    permissionRequest.grant(strArrA);
                    return;
                } else {
                    permissionRequest.deny();
                    return;
                }
            }
        }
        super.onPermissionRequest(permissionRequest);
    }

    public final void onReachedMaxAppCacheSize(long j, long j2, WebStorage.QuotaUpdater quotaUpdater) {
        long j3 = 131072 + j;
        if (5242880 - j2 < j3) {
            quotaUpdater.updateQuota(0L);
        } else {
            quotaUpdater.updateQuota(j3);
        }
    }

    @Override // android.webkit.WebChromeClient
    @Deprecated
    public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        com.google.android.gms.ads.internal.overlay.c cVarR = this.f5455a.r();
        if (cVarR == null) {
            jd.e("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
        } else {
            cVarR.a(view, customViewCallback);
            cVarR.a(i);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, -1, customViewCallback);
    }
}
