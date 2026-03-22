package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.http.SslError;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@TargetApi(14)
public class jx extends jv {
    @Override // com.google.android.gms.internal.ads.js
    public final String a(SslError sslError) {
        return sslError.getUrl();
    }

    @Override // com.google.android.gms.internal.ads.js
    public int f() {
        return 1;
    }
}
