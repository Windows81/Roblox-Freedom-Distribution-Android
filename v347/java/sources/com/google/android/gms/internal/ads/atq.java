package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class atq implements com.google.android.gms.ads.internal.gmsg.ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bq f4496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ atl f4497b;

    atq(atl atlVar, bq bqVar) {
        this.f4497b = atlVar;
        this.f4496a = bqVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            for (String str : map.keySet()) {
                jSONObject.put(str, map.get(str));
            }
            jSONObject.put("id", this.f4497b.f4486b);
            this.f4496a.a("sendMessageToNativeJs", jSONObject);
        } catch (JSONException e) {
            jd.b("Unable to dispatch sendMessageToNativeJs event", e);
        }
    }
}
