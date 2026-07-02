package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.qd;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class aa implements ae<qd> {
    aa() {
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(qd qdVar, Map map) {
        qd qdVar2 = qdVar;
        if (((Boolean) aoo.f().a(aro.bt)).booleanValue()) {
            qdVar2.d(!Boolean.parseBoolean((String) map.get("disabled")));
        }
    }
}
