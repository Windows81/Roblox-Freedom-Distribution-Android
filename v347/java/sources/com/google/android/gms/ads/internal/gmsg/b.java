package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.no;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class b implements ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<String, no<JSONObject>> f3105a = new HashMap<>();

    public final Future<JSONObject> a(String str) {
        no<JSONObject> noVar = new no<>();
        this.f3105a.put(str, noVar);
        return noVar;
    }

    public final void b(String str) {
        no<JSONObject> noVar = this.f3105a.get(str);
        if (noVar == null) {
            jd.c("Could not find the ad request for the corresponding ad response.");
            return;
        }
        if (!noVar.isDone()) {
            noVar.cancel(true);
        }
        this.f3105a.remove(str);
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get("request_id");
        String str2 = map.get("fetched_ad");
        jd.b("Received ad from the cache.");
        no<JSONObject> noVar = this.f3105a.get(str);
        if (noVar == null) {
            jd.c("Could not find the ad request for the corresponding ad response.");
            return;
        }
        try {
            noVar.b(new JSONObject(str2));
        } catch (JSONException e) {
            jd.b("Failed constructing JSON object from value passed from javascript", e);
            noVar.b(null);
        } finally {
            this.f3105a.remove(str);
        }
    }
}
