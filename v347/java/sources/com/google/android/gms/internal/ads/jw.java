package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class jw implements Callable<Boolean> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Context f5196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ WebSettings f5197b;

    jw(jv jvVar, Context context, WebSettings webSettings) {
        this.f5196a = context;
        this.f5197b = webSettings;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Boolean call() throws Exception {
        if (this.f5196a.getCacheDir() != null) {
            this.f5197b.setAppCachePath(this.f5196a.getCacheDir().getAbsolutePath());
            this.f5197b.setAppCacheMaxSize(0L);
            this.f5197b.setAppCacheEnabled(true);
        }
        this.f5197b.setDatabasePath(this.f5196a.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
        this.f5197b.setDatabaseEnabled(true);
        this.f5197b.setDomStorageEnabled(true);
        this.f5197b.setDisplayZoomControls(false);
        this.f5197b.setBuiltInZoomControls(true);
        this.f5197b.setSupportZoom(true);
        this.f5197b.setAllowContentAccess(false);
        return true;
    }
}
