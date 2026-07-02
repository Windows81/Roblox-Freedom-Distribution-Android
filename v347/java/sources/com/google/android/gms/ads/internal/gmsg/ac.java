package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.ads.qd;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class ac implements ae<qd> {
    ac() {
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(qd qdVar, Map map) {
        qd qdVar2 = qdVar;
        if (map.keySet().contains("start")) {
            qdVar2.v().h();
        } else if (map.keySet().contains("stop")) {
            qdVar2.v().i();
        } else if (map.keySet().contains("cancel")) {
            qdVar2.v().j();
        }
    }
}
