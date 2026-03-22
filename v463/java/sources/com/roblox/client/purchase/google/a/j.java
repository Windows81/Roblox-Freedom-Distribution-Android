package com.roblox.client.purchase.google.a;

import com.appsflyer.internal.referrer.Payload;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f6738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f6739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f6740c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f6741d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f6742e;
    String f;
    String g;
    String h;
    String i;

    public j(String str, String str2) throws JSONException {
        this.f6738a = str;
        this.i = str2;
        JSONObject jSONObject = new JSONObject(this.i);
        this.f6739b = jSONObject.optString("productId");
        this.f6740c = jSONObject.optString(Payload.TYPE);
        this.f6741d = jSONObject.optString("price");
        this.f6742e = jSONObject.optLong("price_amount_micros");
        this.f = jSONObject.optString("title");
        this.h = jSONObject.optString("price_currency_code");
        this.g = jSONObject.optString("description");
    }

    public String a() {
        return this.f6739b;
    }

    public String b() {
        return this.h;
    }

    public String c() {
        double d2 = this.f6742e;
        double dPow = Math.pow(10.0d, 6.0d);
        Double.isNaN(d2);
        return String.valueOf(d2 / dPow);
    }

    public String toString() {
        return "SkuDetails:" + this.i;
    }
}
