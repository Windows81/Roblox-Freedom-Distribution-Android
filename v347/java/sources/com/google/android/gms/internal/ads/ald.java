package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes.dex */
final class ald implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ akv f4157a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ WebView f4158b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ boolean f4159c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ alb f4160d;
    private ValueCallback<String> e = new ale(this);

    ald(alb albVar, akv akvVar, WebView webView, boolean z) {
        this.f4160d = albVar;
        this.f4157a = akvVar;
        this.f4158b = webView;
        this.f4159c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4158b.getSettings().getJavaScriptEnabled()) {
            try {
                this.f4158b.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.e);
            } catch (Throwable th) {
                this.e.onReceiveValue("");
            }
        }
    }
}
