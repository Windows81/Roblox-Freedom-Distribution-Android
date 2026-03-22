package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class fa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<String> f4996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4999d;
    private final boolean e;
    private final String f;
    private final String g;
    private String h;
    private final int i;
    private final boolean j;
    private final JSONObject k;

    public fa(int i, Map<String, String> map) {
        this.h = map.get("url");
        this.f4997b = map.get("base_uri");
        this.f4998c = map.get("post_parameters");
        this.e = b(map.get("drt_include"));
        this.f = map.get("request_id");
        this.f4999d = map.get("type");
        this.f4996a = c(map.get("errors"));
        this.i = i;
        this.g = map.get("fetched_ad");
        this.j = b(map.get("render_test_ad_label"));
        this.k = new JSONObject();
    }

    public fa(JSONObject jSONObject) {
        this.h = jSONObject.optString("url");
        this.f4997b = jSONObject.optString("base_uri");
        this.f4998c = jSONObject.optString("post_parameters");
        this.e = b(jSONObject.optString("drt_include"));
        this.f = jSONObject.optString("request_id");
        this.f4999d = jSONObject.optString("type");
        this.f4996a = c(jSONObject.optString("errors"));
        this.i = jSONObject.optInt("valid", 0) == 1 ? -2 : 1;
        this.g = jSONObject.optString("fetched_ad");
        this.j = jSONObject.optBoolean("render_test_ad_label");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.k = jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject;
    }

    private static boolean b(String str) {
        return str != null && (str.equals("1") || str.equals("true"));
    }

    private static List<String> c(String str) {
        if (str == null) {
            return null;
        }
        return Arrays.asList(str.split(","));
    }

    public final int a() {
        return this.i;
    }

    public final void a(String str) {
        this.h = str;
    }

    public final List<String> b() {
        return this.f4996a;
    }

    public final String c() {
        return this.f4997b;
    }

    public final String d() {
        return this.f4998c;
    }

    public final String e() {
        return this.h;
    }

    public final String f() {
        return this.f4999d;
    }

    public final boolean g() {
        return this.e;
    }

    public final String h() {
        return this.f;
    }

    public final String i() {
        return this.g;
    }

    public final boolean j() {
        return this.j;
    }
}
