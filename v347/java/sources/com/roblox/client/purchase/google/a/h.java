package com.roblox.client.purchase.google.a;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f7600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f7601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f7602c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f7603d;
    long e;
    int f;
    String g;
    String h;
    String i;
    String j;

    public h(String str, String str2, String str3) throws JSONException {
        this.f7600a = str;
        this.i = str2;
        JSONObject jSONObject = new JSONObject(this.i);
        this.f7601b = jSONObject.optString("orderId");
        this.f7602c = jSONObject.optString("packageName");
        this.f7603d = jSONObject.optString("productId");
        this.e = jSONObject.optLong("purchaseTime");
        this.f = jSONObject.optInt("purchaseState");
        this.g = jSONObject.optString("developerPayload");
        this.h = jSONObject.optString("token", jSONObject.optString("purchaseToken"));
        this.j = str3;
    }

    public String a() {
        return this.f7600a;
    }

    public String b() {
        return this.f7601b;
    }

    public String c() {
        return this.f7602c;
    }

    public String d() {
        return this.f7603d;
    }

    public String e() {
        return this.g;
    }

    public String f() {
        return this.h;
    }

    public String toString() {
        return "PurchaseInfo(type:" + this.f7600a + "):" + this.i;
    }
}
