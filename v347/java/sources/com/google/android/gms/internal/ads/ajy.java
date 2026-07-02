package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class ajy implements nt<bah> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ JSONObject f4103a;

    ajy(ajv ajvVar, JSONObject jSONObject) {
        this.f4103a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.nt
    public final /* synthetic */ void a(bah bahVar) {
        bahVar.b("AFMA_updateActiveView", this.f4103a);
    }
}
