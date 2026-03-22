package com.roblox.a;

import android.content.Context;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JSONObject f5517c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5518d;

    public abstract void a(boolean z, JSONObject jSONObject);

    public abstract Context e();

    public String a() {
        return this.f5515a;
    }

    public void a(String str) {
        this.f5515a = str;
    }

    public String b() {
        return this.f5516b;
    }

    public void b(String str) {
        this.f5516b = str;
    }

    public JSONObject c() {
        return this.f5517c;
    }

    public void a(JSONObject jSONObject) {
        this.f5517c = jSONObject;
    }

    public String d() {
        return this.f5518d;
    }

    public void c(String str) {
        this.f5518d = str;
    }
}
