package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.webkit.ValueCallback;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public class se extends sb {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f5550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f5551c;

    public se(rq rqVar) {
        super(rqVar);
        com.google.android.gms.ads.internal.aw.i().i();
    }

    private final synchronized void a() {
        if (!this.f5551c) {
            this.f5551c = true;
            com.google.android.gms.ads.internal.aw.i().j();
        }
    }

    public final synchronized boolean A() {
        return this.f5550b;
    }

    public final synchronized void B() {
        jd.a("Destroying WebView!");
        a();
        nj.f5346a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.sf

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final se f5552a;

            {
                this.f5552a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5552a.L();
            }
        });
    }

    final /* synthetic */ void L() {
        super.destroy();
    }

    @Override // com.google.android.gms.internal.ads.sb, com.google.android.gms.internal.ads.sk
    public final synchronized void a(sd sdVar) {
        if (A()) {
            jd.a("Blank page loaded, 1...");
            B();
        } else {
            super.a(sdVar);
        }
    }

    @Override // android.webkit.WebView
    public synchronized void destroy() {
        if (!this.f5550b) {
            this.f5550b = true;
            f(false);
            jd.a("Initiating WebView self destruct sequence in 3...");
            jd.a("Loading blank page in WebView, 2...");
            try {
                super.loadUrl("about:blank");
            } catch (UnsatisfiedLinkError e) {
                com.google.android.gms.ads.internal.aw.i().a(e, "AdWebViewImpl.loadUrlUnsafe");
                jd.d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.webkit.WebView
    @TargetApi(19)
    public synchronized void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        if (A()) {
            jd.e("#004 The webview is destroyed. Ignoring action.");
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
            }
        } else {
            super.evaluateJavascript(str, valueCallback);
        }
    }

    @GuardedBy("this")
    protected void f(boolean z) {
    }

    protected void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!A()) {
                    f(true);
                }
                a();
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.webkit.WebView
    public synchronized void loadData(String str, String str2, String str3) {
        if (A()) {
            jd.e("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadData(str, str2, str3);
        }
    }

    @Override // android.webkit.WebView
    public synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (A()) {
            jd.e("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        }
    }

    @Override // com.google.android.gms.internal.ads.sb, android.webkit.WebView
    public synchronized void loadUrl(String str) {
        if (A()) {
            jd.e("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadUrl(str);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    @TargetApi(21)
    protected void onDraw(Canvas canvas) {
        if (A()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.qd
    public void onPause() {
        if (A()) {
            return;
        }
        super.onPause();
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.qd
    public void onResume() {
        if (A()) {
            return;
        }
        super.onResume();
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return !A() && super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.qd
    public void stopLoading() {
        if (A()) {
            return;
        }
        super.stopLoading();
    }
}
