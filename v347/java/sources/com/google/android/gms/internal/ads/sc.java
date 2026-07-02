package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.http.SslError;
import android.view.KeyEvent;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
final class sc extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final sg f5542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final sl f5543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final si f5544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final sk f5545d;
    private final sm e = new sm();

    sc(sg sgVar, sl slVar, si siVar, sk skVar) {
        this.f5542a = sgVar;
        this.f5543b = slVar;
        this.f5544c = siVar;
        this.f5545d = skVar;
    }

    private final boolean a(sd sdVar) {
        return this.f5542a.c(sdVar);
    }

    private final WebResourceResponse b(sd sdVar) {
        return this.f5543b.d(sdVar);
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        if (str == null) {
            return;
        }
        String strValueOf = String.valueOf(str);
        jd.a(strValueOf.length() != 0 ? "Loading resource: ".concat(strValueOf) : new String("Loading resource: "));
        this.f5544c.b(new sd(str));
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        if (str == null) {
            return;
        }
        this.f5545d.a(new sd(str));
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.e.a(i, str2);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        this.e.a(sslError);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(24)
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
            return null;
        }
        return b(new sd(webResourceRequest));
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        if (str == null) {
            return null;
        }
        return b(new sd(str));
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
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
    @TargetApi(24)
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
            return false;
        }
        return a(new sd(webResourceRequest));
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str == null) {
            return false;
        }
        return a(new sd(str));
    }
}
