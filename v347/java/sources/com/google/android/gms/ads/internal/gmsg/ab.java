package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.ads.qd;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class ab implements ae<qd> {
    ab() {
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(qd qdVar, Map map) {
        qd qdVar2 = qdVar;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            qdVar2.g_();
        } else if ("resume".equals(str)) {
            qdVar2.h_();
        }
    }
}
