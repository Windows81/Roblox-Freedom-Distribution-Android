package com.roblox.client.ab.a;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5591a;

    public b(JSONObject jSONObject) throws JSONException {
        this.f5591a = jSONObject.isNull("themeType") ? null : jSONObject.getString("themeType");
    }

    public String a() {
        return this.f5591a;
    }
}
