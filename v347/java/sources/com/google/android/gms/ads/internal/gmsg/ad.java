package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.ads.qd;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class ad implements ae<qd> {
    ad() {
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(qd qdVar, Map map) {
        qd qdVar2 = qdVar;
        if (map.keySet().contains("start")) {
            qdVar2.e(true);
        }
        if (map.keySet().contains("stop")) {
            qdVar2.e(false);
        }
    }
}
