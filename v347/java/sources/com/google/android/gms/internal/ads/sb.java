package com.google.android.gms.internal.ads;

import android.os.Build;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public class sb extends WebView implements sg, si, sk, sl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final WebViewClient f5538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<sg> f5539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<sl> f5540c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<si> f5541d;
    private final List<sk> e;
    private final rq f;

    public sb(rq rqVar) {
        super(rqVar);
        this.f5539b = new CopyOnWriteArrayList();
        this.f5540c = new CopyOnWriteArrayList();
        this.f5541d = new CopyOnWriteArrayList();
        this.e = new CopyOnWriteArrayList();
        this.f = rqVar;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        com.google.android.gms.ads.internal.aw.g().a(getContext(), settings);
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        try {
            getSettings().setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            jd.b("Unable to enable Javascript.", e);
        }
        setLayerType(1, null);
        this.f5538a = new sc(this, this, this, this);
        super.setWebViewClient(this.f5538a);
    }

    protected final rq K() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.sk
    public void a(sd sdVar) {
        Iterator<sk> it = this.e.iterator();
        while (it.hasNext()) {
            it.next().a(sdVar);
        }
    }

    public final void a(sg sgVar) {
        this.f5539b.add(sgVar);
    }

    public final void a(si siVar) {
        this.f5541d.add(siVar);
    }

    public final void a(sk skVar) {
        this.e.add(skVar);
    }

    public final void a(sl slVar) {
        this.f5540c.add(slVar);
    }

    @Override // android.webkit.WebView
    public void addJavascriptInterface(Object obj, String str) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.addJavascriptInterface(obj, str);
        } else {
            jd.a("Ignore addJavascriptInterface due to low Android version.");
        }
    }

    @Override // com.google.android.gms.internal.ads.si
    public final void b(sd sdVar) {
        Iterator<si> it = this.f5541d.iterator();
        while (it.hasNext()) {
            it.next().b(sdVar);
        }
    }

    public void b(String str) {
        sh.a(this, str);
    }

    @Override // com.google.android.gms.internal.ads.sg
    public final boolean c(sd sdVar) {
        Iterator<sg> it = this.f5539b.iterator();
        while (it.hasNext()) {
            if (it.next().c(sdVar)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.sl
    public final WebResourceResponse d(sd sdVar) {
        Iterator<sl> it = this.f5540c.iterator();
        while (it.hasNext()) {
            WebResourceResponse webResourceResponseD = it.next().d(sdVar);
            if (webResourceResponseD != null) {
                return webResourceResponseD;
            }
        }
        return null;
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        try {
            super.loadUrl(str);
        } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e) {
            com.google.android.gms.ads.internal.aw.i().a(e, "CoreWebView.loadUrl");
            jd.d("#007 Could not call remote method.", e);
        }
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
    }
}
