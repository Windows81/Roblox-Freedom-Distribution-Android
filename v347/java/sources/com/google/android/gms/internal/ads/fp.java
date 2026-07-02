package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class fp implements es {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private bal<JSONObject, JSONObject> f5024a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private bal<JSONObject, JSONObject> f5025b;

    public fp(Context context) {
        this.f5024a = com.google.android.gms.ads.internal.aw.s().a(context, zzang.a()).a("google.afma.request.getAdDictionary", baq.f4718a, baq.f4718a);
        this.f5025b = com.google.android.gms.ads.internal.aw.s().a(context, zzang.a()).a("google.afma.sdkConstants.getSdkConstants", baq.f4718a, baq.f4718a);
    }

    @Override // com.google.android.gms.internal.ads.es
    public final bal<JSONObject, JSONObject> a() {
        return this.f5024a;
    }

    @Override // com.google.android.gms.internal.ads.es
    public final bal<JSONObject, JSONObject> b() {
        return this.f5025b;
    }
}
