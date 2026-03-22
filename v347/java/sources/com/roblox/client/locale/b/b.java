package com.roblox.client.locale.b;

import com.roblox.client.locale.c;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f7352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONArray f7353b;

    public b(JSONObject jSONObject) throws JSONException {
        this.f7352a = jSONObject.isNull("locale") ? null : c.a(jSONObject.getString("locale"));
        this.f7353b = jSONObject.isNull("contents") ? null : jSONObject.getJSONArray("contents");
    }

    public c a() {
        return this.f7352a;
    }

    public JSONArray b() {
        return this.f7353b;
    }
}
