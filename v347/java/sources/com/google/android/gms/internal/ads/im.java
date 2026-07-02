package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class im {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f5127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<String> f5128b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<String> f5129c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, bbe> f5130d = new HashMap();
    private String e;
    private String f;
    private boolean g;

    public im(String str, long j) {
        JSONObject jSONObjectOptJSONObject;
        this.g = false;
        this.f = str;
        this.f5127a = j;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt("status", -1) != 1) {
                this.g = false;
                jd.e("App settings could not be fetched successfully.");
                return;
            }
            this.g = true;
            this.e = jSONObject.optString("app_id");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ad_unit_id_settings");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                    String strOptString = jSONObject2.optString("format");
                    String strOptString2 = jSONObject2.optString("ad_unit_id");
                    if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                        if ("interstitial".equalsIgnoreCase(strOptString)) {
                            this.f5129c.add(strOptString2);
                        } else if ("rewarded".equalsIgnoreCase(strOptString) && (jSONObjectOptJSONObject = jSONObject2.optJSONObject("mediation_config")) != null) {
                            this.f5130d.put(strOptString2, new bbe(jSONObjectOptJSONObject));
                        }
                    }
                }
            }
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("persistable_banner_ad_unit_ids");
            if (jSONArrayOptJSONArray2 != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                    this.f5128b.add(jSONArrayOptJSONArray2.optString(i2));
                }
            }
        } catch (JSONException e) {
            jd.c("Exception occurred while processing app setting json", e);
            com.google.android.gms.ads.internal.aw.i().a(e, "AppSettings.parseAppSettingsJson");
        }
    }

    public final long a() {
        return this.f5127a;
    }

    public final boolean b() {
        return this.g;
    }

    public final String c() {
        return this.f;
    }

    public final String d() {
        return this.e;
    }

    public final Map<String, bbe> e() {
        return this.f5130d;
    }
}
