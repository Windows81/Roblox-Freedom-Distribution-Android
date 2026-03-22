package com.roblox.client.locale.c;

import com.roblox.client.locale.f;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f6474a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONArray f6475b;

    public b(JSONObject jSONObject) throws JSONException {
        this.f6474a = jSONObject.isNull("locale") ? null : f.a(jSONObject.getString("locale"));
        this.f6475b = jSONObject.isNull("contents") ? null : jSONObject.getJSONArray("contents");
    }

    public f a() {
        return this.f6474a;
    }

    public JSONArray b() {
        return this.f6475b;
    }
}
