package com.roblox.client.pushnotification.b;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6830a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONObject f6831b;

    public j(JSONObject jSONObject) throws JSONException {
        this.f6830a = jSONObject.getString("statusMessage");
        this.f6831b = jSONObject.getJSONObject("metadata");
    }

    public JSONObject a() {
        return this.f6831b;
    }
}
