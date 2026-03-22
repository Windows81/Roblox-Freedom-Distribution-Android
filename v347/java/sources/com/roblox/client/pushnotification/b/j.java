package com.roblox.client.pushnotification.b;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f7678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONObject f7679b;

    public j(JSONObject jSONObject) throws JSONException {
        this.f7678a = jSONObject.getString("statusMessage");
        this.f7679b = jSONObject.getJSONObject("metadata");
    }

    public JSONObject a() {
        return this.f7679b;
    }
}
