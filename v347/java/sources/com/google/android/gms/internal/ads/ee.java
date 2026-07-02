package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class ee implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ JSONObject f4958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f4959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ ec f4960c;

    ee(ec ecVar, JSONObject jSONObject, String str) {
        this.f4960c = ecVar;
        this.f4958a = jSONObject;
        this.f4959b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4960c.l = ec.f4955d.b((agv) null);
        this.f4960c.l.a(new ef(this), new eg(this));
    }
}
