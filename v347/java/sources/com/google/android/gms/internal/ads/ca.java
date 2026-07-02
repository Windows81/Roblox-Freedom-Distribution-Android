package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class ca implements com.google.android.gms.ads.internal.gmsg.ae<qd> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ qd f4887a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ no f4888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ bu f4889c;

    ca(bu buVar, qd qdVar, no noVar) {
        this.f4889c = buVar;
        this.f4887a = qdVar;
        this.f4888b = noVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(qd qdVar, Map map) {
        JSONObject jSONObject;
        boolean z;
        try {
            String str = (String) map.get("success");
            String str2 = (String) map.get("failure");
            if (TextUtils.isEmpty(str2)) {
                jSONObject = new JSONObject(str);
                z = true;
            } else {
                z = false;
                jSONObject = new JSONObject(str2);
            }
            if (this.f4889c.h.equals(jSONObject.optString("ads_id", ""))) {
                this.f4887a.b("/nativeAdPreProcess", this);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("success", z);
                jSONObject2.put("json", jSONObject);
                this.f4888b.b(jSONObject2);
            }
        } catch (Throwable th) {
            jd.b("Error while preprocessing json.", th);
            this.f4888b.a(th);
        }
    }
}
