package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.File;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@cm
@TargetApi(11)
public class rc extends qe {
    public rc(qd qdVar, boolean z) {
        super(qdVar, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected final WebResourceResponse a(WebView webView, String str, Map<String, String> map) {
        String str2;
        if (!(webView instanceof qd)) {
            jd.e("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        qd qdVar = (qd) webView;
        if (this.f5466a != null) {
            this.f5466a.a(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            if (map == null) {
                map = Collections.emptyMap();
            }
            return super.a(str, map);
        }
        if (qdVar.v() != null) {
            qdVar.v().n();
        }
        if (qdVar.t().d()) {
            str2 = (String) aoo.f().a(aro.K);
        } else if (qdVar.z()) {
            str2 = (String) aoo.f().a(aro.J);
        } else {
            str2 = (String) aoo.f().a(aro.I);
        }
        com.google.android.gms.ads.internal.aw.e();
        return jm.c(qdVar.getContext(), qdVar.k().f5784a, str2);
    }
}
