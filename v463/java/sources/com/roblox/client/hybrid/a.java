package com.roblox.client.hybrid;

import android.content.Context;
import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.roblox.client.ae.k;
import com.roblox.engine.jni.memstorage.Callback;
import com.roblox.engine.jni.memstorage.Connection;
import com.roblox.engine.jni.memstorage.MemStorage;
import java.util.Iterator;
import java.util.Vector;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends RBHybridWebView {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f6366d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Vector<String> f6367e;
    private boolean f;
    private Connection g;

    @Override // com.roblox.client.hybrid.RBHybridWebView, com.roblox.a.d
    protected void a(Context context) {
    }

    public a(Context context) {
        super(context);
        this.f6366d = "rbx.browserservice";
        this.f6367e = null;
        this.f = false;
    }

    @Override // com.roblox.client.hybrid.RBHybridWebView
    public void a() {
        k.c("rbx.browserservice", "create -> bindBrowserService");
        e();
    }

    @Override // com.roblox.client.hybrid.RBHybridWebView
    public void b() {
        k.c("rbx.browserservice", "destroy -> unbindBrowserService");
        d();
    }

    @Override // com.roblox.a.d
    protected void a(String str) {
        MemStorage.fire("BrowserService.JavaScriptCallback", str);
    }

    @Override // com.roblox.a.d
    public void b(String str) {
        if (this.f) {
            super.b(str);
            return;
        }
        if (this.f6367e == null) {
            this.f6367e = new Vector<>();
        }
        this.f6367e.add(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Vector<String> vector = this.f6367e;
        if (vector != null) {
            Iterator<String> it = vector.iterator();
            while (it.hasNext()) {
                super.b(it.next());
            }
            this.f6367e.clear();
        }
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(new C0152a(webViewClient));
    }

    /* JADX INFO: renamed from: com.roblox.client.hybrid.a$a, reason: collision with other inner class name */
    private class C0152a extends WebViewClient {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private WebViewClient f6372b;

        C0152a(WebViewClient webViewClient) {
            this.f6372b = webViewClient;
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            a.this.f = false;
            WebViewClient webViewClient = this.f6372b;
            if (webViewClient != null) {
                webViewClient.onPageStarted(webView, str, bitmap);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            a.this.f = true;
            WebViewClient webViewClient = this.f6372b;
            if (webViewClient != null) {
                webViewClient.onPageFinished(webView, str);
            }
            a.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Runnable runnable) {
        this.f5527b.post(runnable);
    }

    private void d() {
        Connection connection = this.g;
        if (connection != null) {
            connection.disconnect();
        }
    }

    private void e() {
        this.g = MemStorage.bind("BrowserService.ExecuteJavaScript", new Callback() { // from class: com.roblox.client.hybrid.a.1
            public void onItemSet(final String str) {
                k.c("rbx.browserservice", "BrowserService.ExecuteJavaScript : " + str);
                a.this.a(new Runnable() { // from class: com.roblox.client.hybrid.a.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b(str);
                    }
                });
            }
        });
    }
}
