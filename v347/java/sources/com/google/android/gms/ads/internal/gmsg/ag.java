package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.ads.jd;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ag implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ JSONObject f3102a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ af f3103b;

    ag(af afVar, JSONObject jSONObject) {
        this.f3103b = afVar;
        this.f3102a = jSONObject;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3103b.f3099a.a("fetchHttpRequestCompleted", this.f3102a);
        jd.b("Dispatched http response.");
    }
}
