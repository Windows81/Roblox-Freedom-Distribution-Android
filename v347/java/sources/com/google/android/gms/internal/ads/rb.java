package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@cm
@TargetApi(11)
public final class rb extends rc {
    public rb(qd qdVar, boolean z) {
        super(qdVar, z);
    }

    @Override // com.google.android.gms.internal.ads.qe, android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return a(webView, str, (Map<String, String>) null);
    }
}
