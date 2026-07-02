package com.google.ads.interactivemedia.v3.impl;

import android.content.Context;
import android.os.Message;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.interactivemedia.v3.impl.data.CompanionData;

/* JADX INFO: loaded from: classes.dex */
public class q extends WebView {
    public q(final Context context, final x xVar, CompanionData companionData) {
        super(context);
        getSettings().setSupportMultipleWindows(true);
        setWebChromeClient(new WebChromeClient() { // from class: com.google.ads.interactivemedia.v3.impl.q.1
            @Override // android.webkit.WebChromeClient
            public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
                WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport) message.obj;
                webViewTransport.setWebView(new WebView(context));
                webViewTransport.getWebView().setWebViewClient(new WebViewClient() { // from class: com.google.ads.interactivemedia.v3.impl.q.1.1
                    @Override // android.webkit.WebViewClient
                    public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                        xVar.d(str);
                        return true;
                    }
                });
                message.sendToTarget();
                return true;
            }
        });
        if (companionData.type() == CompanionData.a.Html) {
            loadData(companionData.src(), "text/html", null);
        } else if (companionData.type() == CompanionData.a.IFrame) {
            loadUrl(companionData.src());
        } else {
            String strValueOf = String.valueOf(companionData.type());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 51).append("Companion type ").append(strValueOf).append(" is not valid for a CompanionWebView").toString());
        }
    }
}
