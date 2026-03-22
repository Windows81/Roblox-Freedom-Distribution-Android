package com.google.ads.interactivemedia.v3.impl;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.interactivemedia.v3.impl.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@SuppressLint({"SetJavaScriptEnabled", "NewApi"})
public class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f2926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WebView f2927b;

    public interface a {
        void a(w wVar);
    }

    public y(Context context, a aVar) {
        this(new WebView(context), aVar);
    }

    public y(WebView webView, a aVar) {
        this.f2926a = aVar;
        this.f2927b = webView;
        this.f2927b.setBackgroundColor(0);
        if (Build.VERSION.SDK_INT == 15) {
            this.f2927b.setLayerType(1, null);
        }
        if (Build.VERSION.SDK_INT > 19) {
            webView.getSettings().setMixedContentMode(0);
        }
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebViewClient(new WebViewClient() { // from class: com.google.ads.interactivemedia.v3.impl.y.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                if (!str.startsWith("gmsg://")) {
                    return false;
                }
                y.this.b(str);
                return true;
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView2, String str, Bitmap bitmap) {
                String strValueOf = String.valueOf(str);
                y.c(strValueOf.length() != 0 ? "Started ".concat(strValueOf) : new String("Started "));
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                String strValueOf = String.valueOf(str);
                y.c(strValueOf.length() != 0 ? "Finished ".concat(strValueOf) : new String("Finished "));
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView2, int i, String str, String str2) {
                y.c(new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length()).append("Error: ").append(i).append(" ").append(str).append(" ").append(str2).toString());
            }
        });
        webView.setWebChromeClient(new WebChromeClient());
        com.google.ads.interactivemedia.v3.impl.b.a.a(webView.getSettings());
    }

    public WebView a() {
        return this.f2927b;
    }

    public void a(String str) {
        this.f2927b.loadUrl(str);
    }

    @TargetApi(19)
    public void a(w wVar) {
        String strE = wVar.e();
        a(true, wVar, strE);
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                this.f2927b.evaluateJavascript(strE, null);
                return;
            } catch (IllegalStateException e) {
                this.f2927b.loadUrl(strE);
                return;
            }
        }
        this.f2927b.loadUrl(strE);
    }

    protected void b(String str) {
        try {
            w wVarA = w.a(str);
            a(false, wVarA, str);
            this.f2926a.a(wVarA);
        } catch (IllegalArgumentException e) {
            String strValueOf = String.valueOf(str);
            Log.w("IMASDK", strValueOf.length() != 0 ? "Invalid internal message, ignoring. Please make sure the Google IMA SDK library is up to date. Message: ".concat(strValueOf) : new String("Invalid internal message, ignoring. Please make sure the Google IMA SDK library is up to date. Message: "));
        } catch (Exception e2) {
            String strValueOf2 = String.valueOf(str);
            Log.e("IMASDK", strValueOf2.length() != 0 ? "An internal error occured parsing message from javascript.  Message to be parsed: ".concat(strValueOf2) : new String("An internal error occured parsing message from javascript.  Message to be parsed: "), e2);
        }
    }

    static final void a(boolean z, w wVar, String str) {
        String str2 = z ? "Sending javascript msg: " : "Received msg: ";
        if (u.a.a(u.a.VERBOSE)) {
            String strValueOf = String.valueOf(wVar);
            Log.d("IMASDK", new StringBuilder(String.valueOf(str2).length() + 7 + String.valueOf(strValueOf).length() + String.valueOf(str).length()).append(str2).append(strValueOf).append("; URL: ").append(str).toString());
        } else if (u.a.a(u.a.ABRIDGED)) {
            String strValueOf2 = String.valueOf(wVar.a().name());
            String strValueOf3 = String.valueOf(wVar.b().name());
            Log.d("IMASDK", new StringBuilder(String.valueOf(str2).length() + 17 + String.valueOf(strValueOf2).length() + String.valueOf(strValueOf3).length()).append(str2).append("Channel: ").append(strValueOf2).append("; type: ").append(strValueOf3).toString());
        }
    }

    static final void c(String str) {
        if (u.a.a(u.a.LIFECYCLE)) {
            Log.d("IMASDK", str);
        }
    }
}
