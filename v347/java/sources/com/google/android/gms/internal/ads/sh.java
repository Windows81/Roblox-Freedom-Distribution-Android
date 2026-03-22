package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebView;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
final class sh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("InvokeJavascriptWorkaround.class")
    private static Boolean f5553a;

    private sh() {
    }

    @TargetApi(19)
    static void a(WebView webView, String str) {
        if (com.google.android.gms.common.util.n.g() && a(webView)) {
            webView.evaluateJavascript(str, null);
        } else {
            String strValueOf = String.valueOf(str);
            webView.loadUrl(strValueOf.length() != 0 ? "javascript:".concat(strValueOf) : new String("javascript:"));
        }
    }

    @TargetApi(19)
    private static boolean a(WebView webView) {
        boolean zBooleanValue;
        synchronized (sh.class) {
            if (f5553a == null) {
                try {
                    webView.evaluateJavascript("(function(){})()", null);
                    f5553a = true;
                } catch (IllegalStateException e) {
                    f5553a = false;
                }
                zBooleanValue = f5553a.booleanValue();
            } else {
                zBooleanValue = f5553a.booleanValue();
            }
        }
        return zBooleanValue;
    }
}
