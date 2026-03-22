package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.DownloadManager;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@TargetApi(9)
public class ju extends js {
    public ju() {
        super();
    }

    @Override // com.google.android.gms.internal.ads.js
    public final int a() {
        return 6;
    }

    @Override // com.google.android.gms.internal.ads.js
    public boolean a(DownloadManager.Request request) {
        request.setShowRunningNotification(true);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.js
    public final int b() {
        return 7;
    }
}
