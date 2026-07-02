package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.qd;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class w implements ae<qd> {
    w() {
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(qd qdVar, Map map) {
        qd qdVar2 = qdVar;
        com.google.android.gms.ads.internal.overlay.c cVarR = qdVar2.r();
        if (cVarR != null) {
            cVarR.a();
            return;
        }
        com.google.android.gms.ads.internal.overlay.c cVarS = qdVar2.s();
        if (cVarS != null) {
            cVarS.a();
        } else {
            jd.e("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
