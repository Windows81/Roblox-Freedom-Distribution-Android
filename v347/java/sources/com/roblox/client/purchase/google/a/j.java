package com.roblox.client.purchase.google.a;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f7604a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f7605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f7606c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f7607d;
    long e;
    String f;
    String g;
    String h;
    String i;

    public j(String str, String str2) throws JSONException {
        this.f7604a = str;
        this.i = str2;
        JSONObject jSONObject = new JSONObject(this.i);
        this.f7605b = jSONObject.optString("productId");
        this.f7606c = jSONObject.optString("type");
        this.f7607d = jSONObject.optString("price");
        this.e = jSONObject.optLong("price_amount_micros");
        this.f = jSONObject.optString("title");
        this.h = jSONObject.optString("price_currency_code");
        this.g = jSONObject.optString("description");
    }

    public String a() {
        return this.f7605b;
    }

    public String b() {
        return this.h;
    }

    public String c() {
        return String.valueOf(this.e / Math.pow(10.0d, 6.0d));
    }

    public String toString() {
        return "SkuDetails:" + this.i;
    }
}
