package com.roblox.a;

import android.content.Context;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6343a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JSONObject f6345c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6346d;

    public abstract void a(boolean z, JSONObject jSONObject);

    public abstract Context e();

    public String a() {
        return this.f6343a;
    }

    public void a(String str) {
        this.f6343a = str;
    }

    public String b() {
        return this.f6344b;
    }

    public void b(String str) {
        this.f6344b = str;
    }

    public JSONObject c() {
        return this.f6345c;
    }

    public void a(JSONObject jSONObject) {
        this.f6345c = jSONObject;
    }

    public String d() {
        return this.f6346d;
    }

    public void c(String str) {
        this.f6346d = str;
    }
}
