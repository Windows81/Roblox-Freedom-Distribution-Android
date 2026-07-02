package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class qr implements com.google.android.gms.ads.internal.gmsg.ae<qd> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ qq f5492a;

    qr(qq qqVar) {
        this.f5492a = qqVar;
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
                synchronized (this.f5492a) {
                    if (this.f5492a.B != i) {
                        this.f5492a.B = i;
                        this.f5492a.requestLayout();
                    }
                }
            } catch (Exception e) {
                jd.c("Exception occurred while getting webview content height", e);
            }
        }
    }
}
