package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class bbd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<String> f4743c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4744d;
    public final String e;
    public final List<String> f;
    public final List<String> g;
    public final List<String> h;
    public final List<String> i;
    public final List<String> j;
    public final String k;
    public final List<String> l;
    public final List<String> m;
    public final List<String> n;
    public final String o;
    public final String p;
    public final String q;
    public final List<String> r;
    public final String s;
    public final long t;
    private final String u;

    public bbd(String str, String str2, List<String> list, String str3, String str4, List<String> list2, List<String> list3, List<String> list4, List<String> list5, String str5, String str6, List<String> list6, List<String> list7, List<String> list8, String str7, String str8, String str9, List<String> list9, String str10, List<String> list10, String str11, long j) {
        this.f4741a = str;
        this.f4742b = null;
        this.f4743c = list;
        this.f4744d = null;
        this.e = null;
        this.f = list2;
        this.g = list3;
        this.h = list4;
        this.i = list5;
        this.k = str5;
        this.l = list6;
        this.m = list7;
        this.n = list8;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.j = list10;
        this.u = null;
        this.t = -1L;
    }

    public bbd(JSONObject jSONObject) throws JSONException {
        List<String> listA;
        this.f4742b = jSONObject.optString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        this.f4743c = Collections.unmodifiableList(arrayList);
        this.f4744d = jSONObject.optString("allocation_id", null);
        com.google.android.gms.ads.internal.aw.x();
        this.f = bbn.a(jSONObject, "clickurl");
        com.google.android.gms.ads.internal.aw.x();
        this.g = bbn.a(jSONObject, "imp_urls");
        com.google.android.gms.ads.internal.aw.x();
        this.h = bbn.a(jSONObject, "downloaded_imp_urls");
        com.google.android.gms.ads.internal.aw.x();
        this.j = bbn.a(jSONObject, "fill_urls");
        com.google.android.gms.ads.internal.aw.x();
        this.l = bbn.a(jSONObject, "video_start_urls");
        com.google.android.gms.ads.internal.aw.x();
        this.n = bbn.a(jSONObject, "video_complete_urls");
        com.google.android.gms.ads.internal.aw.x();
        this.m = ((Boolean) aoo.f().a(aro.ax)).booleanValue() ? bbn.a(jSONObject, "video_reward_urls") : this.n;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("ad");
        if (jSONObjectOptJSONObject != null) {
            com.google.android.gms.ads.internal.aw.x();
            listA = bbn.a(jSONObjectOptJSONObject, "manual_impression_urls");
        } else {
            listA = null;
        }
        this.i = listA;
        this.f4741a = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.toString() : null;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("data");
        this.k = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.toString() : null;
        this.e = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optString("class_name") : null;
        this.o = jSONObject.optString("html_template", null);
        this.p = jSONObject.optString("ad_base_url", null);
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("assets");
        this.q = jSONObjectOptJSONObject3 != null ? jSONObjectOptJSONObject3.toString() : null;
        com.google.android.gms.ads.internal.aw.x();
        this.r = bbn.a(jSONObject, "template_ids");
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        this.s = jSONObjectOptJSONObject4 != null ? jSONObjectOptJSONObject4.toString() : null;
        this.u = jSONObject.optString("response_type", null);
        this.t = jSONObject.optLong("ad_network_timeout_millis", -1L);
    }

    public final boolean a() {
        return "banner".equalsIgnoreCase(this.u);
    }

    public final boolean b() {
        return "native".equalsIgnoreCase(this.u);
    }
}
