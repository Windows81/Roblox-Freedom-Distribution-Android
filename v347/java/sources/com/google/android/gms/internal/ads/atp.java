package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class atp implements com.google.android.gms.ads.internal.gmsg.ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bq f4494a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ atl f4495b;

    atp(atl atlVar, bq bqVar) {
        this.f4495b = atlVar;
        this.f4494a = bqVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        qd qdVar = (qd) this.f4495b.f4485a.get();
        if (qdVar == null) {
            this.f4494a.b("/hideOverlay", this);
        } else {
            qdVar.getView().setVisibility(8);
        }
    }
}
