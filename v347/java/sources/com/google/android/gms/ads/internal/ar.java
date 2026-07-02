package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.jd;

/* JADX INFO: loaded from: classes.dex */
final class ar extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ aq f3022a;

    ar(aq aqVar) {
        this.f3022a = aqVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        if (this.f3022a.g != null) {
            try {
                this.f3022a.g.a(0);
            } catch (RemoteException e) {
                jd.d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.startsWith(this.f3022a.d())) {
            return false;
        }
        if (str.startsWith((String) aoo.f().a(aro.cu))) {
            if (this.f3022a.g != null) {
                try {
                    this.f3022a.g.a(3);
                } catch (RemoteException e) {
                    jd.d("#007 Could not call remote method.", e);
                }
            }
            this.f3022a.a(0);
            return true;
        }
        if (str.startsWith((String) aoo.f().a(aro.cv))) {
            if (this.f3022a.g != null) {
                try {
                    this.f3022a.g.a(0);
                } catch (RemoteException e2) {
                    jd.d("#007 Could not call remote method.", e2);
                }
            }
            this.f3022a.a(0);
            return true;
        }
        if (str.startsWith((String) aoo.f().a(aro.cw))) {
            if (this.f3022a.g != null) {
                try {
                    this.f3022a.g.c();
                } catch (RemoteException e3) {
                    jd.d("#007 Could not call remote method.", e3);
                }
            }
            this.f3022a.a(this.f3022a.b(str));
            return true;
        }
        if (str.startsWith("gmsg://")) {
            return true;
        }
        if (this.f3022a.g != null) {
            try {
                this.f3022a.g.b();
            } catch (RemoteException e4) {
                jd.d("#007 Could not call remote method.", e4);
            }
        }
        this.f3022a.d(this.f3022a.c(str));
        return true;
    }
}
