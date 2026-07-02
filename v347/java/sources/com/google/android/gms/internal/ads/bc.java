package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class bc implements com.google.android.gms.ads.internal.gmsg.ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ asx f4782a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ay f4783b;

    bc(ay ayVar, asx asxVar) {
        this.f4783b = ayVar;
        this.f4782a = asxVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        this.f4783b.a(this.f4782a, map.get("asset"));
    }
}
