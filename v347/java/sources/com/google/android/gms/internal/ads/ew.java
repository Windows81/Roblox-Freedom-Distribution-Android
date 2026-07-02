package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class ew implements com.google.android.gms.ads.internal.gmsg.ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ eu f4987a;

    ew(eu euVar) {
        this.f4987a = euVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        synchronized (this.f4987a.f4983b) {
            if (this.f4987a.e.isDone()) {
                return;
            }
            fa faVar = new fa(-2, map);
            if (this.f4987a.f4984c.equals(faVar.h())) {
                String strE = faVar.e();
                if (strE == null) {
                    jd.e("URL missing in loadAdUrl GMSG.");
                    return;
                }
                if (strE.contains("%40mediation_adapters%40")) {
                    String strReplaceAll = strE.replaceAll("%40mediation_adapters%40", ix.a(this.f4987a.f4982a, map.get("check_adapters"), this.f4987a.f4985d));
                    faVar.a(strReplaceAll);
                    String strValueOf = String.valueOf(strReplaceAll);
                    jd.a(strValueOf.length() != 0 ? "Ad request URL modified to ".concat(strValueOf) : new String("Ad request URL modified to "));
                }
                this.f4987a.e.b(faVar);
            }
        }
    }
}
