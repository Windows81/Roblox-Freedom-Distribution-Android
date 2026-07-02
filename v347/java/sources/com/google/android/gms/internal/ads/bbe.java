package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bbe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<bbd> f4745a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f4746b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<String> f4747c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<String> f4748d;
    public final List<String> e;
    public final List<String> f;
    public final List<String> g;
    public final boolean h;
    public final String i;
    public final long j;
    public final String k;
    public final int l;
    public final int m;
    public final long n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public int r;
    public int s;
    public boolean t;

    public bbe(String str) throws JSONException {
        this(new JSONObject(str));
    }

    public bbe(List<bbd> list, long j, List<String> list2, List<String> list3, List<String> list4, List<String> list5, List<String> list6, boolean z, String str, long j2, int i, int i2, String str2, int i3, int i4, long j3, boolean z2) {
        this.f4745a = list;
        this.f4746b = j;
        this.f4747c = list2;
        this.f4748d = list3;
        this.e = list4;
        this.f = list5;
        this.g = list6;
        this.h = z;
        this.i = str;
        this.j = -1L;
        this.r = 0;
        this.s = 1;
        this.k = null;
        this.l = 0;
        this.m = -1;
        this.n = -1L;
        this.o = false;
        this.p = false;
        this.q = false;
        this.t = false;
    }

    public bbe(JSONObject jSONObject) throws JSONException {
        boolean z;
        if (jd.a(2)) {
            String strValueOf = String.valueOf(jSONObject.toString(2));
            jd.a(strValueOf.length() != 0 ? "Mediation Response JSON: ".concat(strValueOf) : new String("Mediation Response JSON: "));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i = -1;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            bbd bbdVar = new bbd(jSONArray.getJSONObject(i2));
            if (bbdVar.a()) {
                this.t = true;
            }
            arrayList.add(bbdVar);
            if (i < 0) {
                Iterator<String> it = bbdVar.f4743c.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    i = i2;
                }
            }
        }
        this.r = i;
        this.s = jSONArray.length();
        this.f4745a = Collections.unmodifiableList(arrayList);
        this.i = jSONObject.optString("qdata");
        this.m = jSONObject.optInt("fs_model_type", -1);
        this.n = jSONObject.optLong("timeout_ms", -1L);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("settings");
        if (jSONObjectOptJSONObject == null) {
            this.f4746b = -1L;
            this.f4747c = null;
            this.f4748d = null;
            this.e = null;
            this.f = null;
            this.g = null;
            this.j = -1L;
            this.k = null;
            this.l = 0;
            this.o = false;
            this.h = false;
            this.p = false;
            this.q = false;
            return;
        }
        this.f4746b = jSONObjectOptJSONObject.optLong("ad_network_timeout_millis", -1L);
        com.google.android.gms.ads.internal.aw.x();
        this.f4747c = bbn.a(jSONObjectOptJSONObject, "click_urls");
        com.google.android.gms.ads.internal.aw.x();
        this.f4748d = bbn.a(jSONObjectOptJSONObject, "imp_urls");
        com.google.android.gms.ads.internal.aw.x();
        this.e = bbn.a(jSONObjectOptJSONObject, "downloaded_imp_urls");
        com.google.android.gms.ads.internal.aw.x();
        this.f = bbn.a(jSONObjectOptJSONObject, "nofill_urls");
        com.google.android.gms.ads.internal.aw.x();
        this.g = bbn.a(jSONObjectOptJSONObject, "remote_ping_urls");
        this.h = jSONObjectOptJSONObject.optBoolean("render_in_browser", false);
        long jOptLong = jSONObjectOptJSONObject.optLong("refresh", -1L);
        this.j = jOptLong > 0 ? jOptLong * 1000 : -1L;
        zzaig zzaigVarA = zzaig.a(jSONObjectOptJSONObject.optJSONArray("rewards"));
        if (zzaigVarA == null) {
            this.k = null;
            this.l = 0;
        } else {
            this.k = zzaigVarA.f5778a;
            this.l = zzaigVarA.f5779b;
        }
        this.o = jSONObjectOptJSONObject.optBoolean("use_displayed_impression", false);
        this.p = jSONObjectOptJSONObject.optBoolean("allow_pub_rendered_attribution", false);
        this.q = jSONObjectOptJSONObject.optBoolean("allow_pub_owned_ad_view", false);
    }
}
