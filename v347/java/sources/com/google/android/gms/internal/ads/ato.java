package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class ato implements com.google.android.gms.ads.internal.gmsg.ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bq f4492a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ atl f4493b;

    ato(atl atlVar, bq bqVar) {
        this.f4493b = atlVar;
        this.f4492a = bqVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        qd qdVar = (qd) this.f4493b.f4485a.get();
        if (qdVar == null) {
            this.f4492a.b("/showOverlay", this);
        } else {
            qdVar.getView().setVisibility(0);
        }
    }
}
