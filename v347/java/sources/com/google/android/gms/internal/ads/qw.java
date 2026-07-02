package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import com.google.android.gms.internal.ads.qz;
import com.google.android.gms.internal.ads.rh;
import com.google.android.gms.internal.ads.rk;

/* JADX INFO: loaded from: classes.dex */
@cm
@TargetApi(17)
public final class qw<WebViewT extends qz & rh & rk> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final qy f5504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WebViewT f5505b;

    private qw(WebViewT webviewt, qy qyVar) {
        this.f5504a = qyVar;
        this.f5505b = webviewt;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.qx, com.google.android.gms.internal.ads.qy] */
    public static qw<qd> a(final qd qdVar) {
        return new qw<>(qdVar, new Object(qdVar) { // from class: com.google.android.gms.internal.ads.qx

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final qd f5506a;

            {
                this.f5506a = qdVar;
            }
        });
    }
}
