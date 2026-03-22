package com.roblox.client.k;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f7317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f7319c;

    public e(JSONObject jSONObject) throws JSONException {
        this.f7317a = jSONObject.getString("title");
        this.f7318b = jSONObject.getString("url");
        this.f7319c = jSONObject.getString("suffix");
    }

    public String a() {
        return this.f7317a;
    }

    public String b() {
        return this.f7318b;
    }

    public String c() {
        return "SETTINGS_GROUP_TAG_" + this.f7319c;
    }
}
