package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import microsoft.aspnet.signalr.client.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class atm implements com.google.android.gms.ads.internal.gmsg.ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ atl f4487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bq f4488b;

    atm(atl atlVar, bq bqVar) {
        this.f4487a = atlVar;
        this.f4488b = bqVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, final Map<String, String> map) {
        qd qdVar = (qd) this.f4487a.f4485a.get();
        if (qdVar == null) {
            this.f4488b.b("/loadHtml", this);
            return;
        }
        rl rlVarV = qdVar.v();
        final bq bqVar = this.f4488b;
        rlVarV.a(new rm(this, map, bqVar) { // from class: com.google.android.gms.internal.ads.atn

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final atm f4489a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Map f4490b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final bq f4491c;

            {
                this.f4489a = this;
                this.f4490b = map;
                this.f4491c = bqVar;
            }

            @Override // com.google.android.gms.internal.ads.rm
            public final void a(boolean z) {
                atm atmVar = this.f4489a;
                Map map2 = this.f4490b;
                bq bqVar2 = this.f4491c;
                atmVar.f4487a.f4486b = (String) map2.get("id");
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("messageType", "htmlLoaded");
                    jSONObject.put("id", atmVar.f4487a.f4486b);
                    bqVar2.a("sendMessageToNativeJs", jSONObject);
                } catch (JSONException e) {
                    jd.b("Unable to dispatch sendMessageToNativeJs event", e);
                }
            }
        });
        String str = map.get("overlayHtml");
        String str2 = map.get("baseUrl");
        if (TextUtils.isEmpty(str2)) {
            qdVar.loadData(str, "text/html", Constants.UTF8_NAME);
        } else {
            qdVar.loadDataWithBaseURL(str2, str, "text/html", Constants.UTF8_NAME, null);
        }
    }
}
