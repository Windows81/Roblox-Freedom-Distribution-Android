package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ek implements com.google.android.gms.ads.internal.gmsg.ae<Object> {
    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get("request_id");
        String strValueOf = String.valueOf(map.get("errors"));
        jd.e(strValueOf.length() != 0 ? "Invalid request: ".concat(strValueOf) : new String("Invalid request: "));
        ec.f.b(str);
    }
}
