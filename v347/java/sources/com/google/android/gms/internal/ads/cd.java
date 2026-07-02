package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class cd implements mp<qd> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f4894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ JSONObject f4895b;

    cd(bu buVar, String str, JSONObject jSONObject) {
        this.f4894a = str;
        this.f4895b = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.mp
    public final /* synthetic */ void a(qd qdVar) {
        qdVar.a(this.f4894a, this.f4895b);
    }

    @Override // com.google.android.gms.internal.ads.mp
    public final void a(Throwable th) {
    }
}
