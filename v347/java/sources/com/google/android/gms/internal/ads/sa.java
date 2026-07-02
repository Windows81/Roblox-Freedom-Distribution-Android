package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class sa implements com.google.android.gms.ads.internal.gmsg.ae<qd> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ rz f5537a;

    sa(rz rzVar) {
        this.f5537a = rzVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(qd qdVar, Map map) {
        if (map != null) {
            String str = (String) map.get("height");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int i = Integer.parseInt(str);
                synchronized (this.f5537a) {
                    if (this.f5537a.v != i) {
                        this.f5537a.v = i;
                        this.f5537a.requestLayout();
                    }
                }
            } catch (Exception e) {
                jd.c("Exception occurred while getting webview content height", e);
            }
        }
    }
}
