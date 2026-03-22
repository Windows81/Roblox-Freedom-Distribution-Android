package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.DownloadManager;
import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.Window;
import android.webkit.WebSettings;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@TargetApi(11)
public class jv extends ju {
    @Override // com.google.android.gms.internal.ads.js
    public qe a(qd qdVar, boolean z) {
        return new rb(qdVar, z);
    }

    @Override // com.google.android.gms.internal.ads.js
    public final Set<String> a(Uri uri) {
        return uri.getQueryParameterNames();
    }

    @Override // com.google.android.gms.internal.ads.ju, com.google.android.gms.internal.ads.js
    public final boolean a(DownloadManager.Request request) {
        request.allowScanningByMediaScanner();
        request.setNotificationVisibility(1);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.js
    public boolean a(Context context, WebSettings webSettings) {
        super.a(context, webSettings);
        return ((Boolean) lp.a(context, new jw(this, context, webSettings))).booleanValue();
    }

    @Override // com.google.android.gms.internal.ads.js
    public final boolean a(Window window) {
        window.setFlags(16777216, 16777216);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.js
    public final boolean b(View view) {
        view.setLayerType(0, null);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.js
    public final boolean c(View view) {
        view.setLayerType(1, null);
        return true;
    }
}
