package com.roblox.client.purchase.google.a;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f6733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f6734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f6735c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f6736d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f6737e;
    int f;
    String g;
    String h;
    String i;
    String j;

    public h(String str, String str2, String str3) throws JSONException {
        this.f6733a = str;
        this.i = str2;
        JSONObject jSONObject = new JSONObject(this.i);
        this.f6734b = jSONObject.optString("orderId");
        this.f6735c = jSONObject.optString("packageName");
        this.f6736d = jSONObject.optString("productId");
        this.f6737e = jSONObject.optLong("purchaseTime");
        this.f = jSONObject.optInt("purchaseState");
        this.g = jSONObject.optString("developerPayload");
        this.h = jSONObject.optString("token", jSONObject.optString("purchaseToken"));
        this.j = str3;
    }

    public String a() {
        return this.f6733a;
    }

    public String b() {
        return this.f6734b;
    }

    public String c() {
        return this.f6735c;
    }

    public String d() {
        return this.f6736d;
    }

    public String e() {
        return this.g;
    }

    public String f() {
        return this.h;
    }

    public String toString() {
        return "PurchaseInfo(type:" + this.f6733a + "):" + this.i;
    }
}
