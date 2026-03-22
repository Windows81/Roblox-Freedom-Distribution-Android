package com.roblox.client.locale.b;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f7349a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f7351c;

    public String a() {
        return this.f7349a;
    }

    public String b() {
        return this.f7351c;
    }

    public void a(String str) {
        this.f7351c = str;
    }

    private void b(String str) {
        this.f7349a = str;
    }

    public String c() {
        return this.f7350b;
    }

    private void c(String str) {
        this.f7350b = str;
    }

    public a(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = jSONObject.isNull("signupAndLogin") ? null : jSONObject.getJSONObject("signupAndLogin");
        if (jSONObject2 != null) {
            b(jSONObject2.isNull("locale") ? null : jSONObject2.getString("locale"));
        }
        JSONObject jSONObject3 = jSONObject.isNull("generalExperience") ? null : jSONObject.getJSONObject("generalExperience");
        if (jSONObject3 != null) {
            c(jSONObject3.isNull("locale") ? null : jSONObject3.getString("locale"));
        }
        JSONObject jSONObject4 = jSONObject.isNull("ugc") ? null : jSONObject.getJSONObject("ugc");
        if (jSONObject4 != null) {
            a(jSONObject4.isNull("locale") ? null : jSONObject4.getString("locale"));
        }
    }
}
