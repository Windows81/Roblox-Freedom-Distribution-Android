package com.roblox.platform.http.returntypes;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7727a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f7728b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f7729c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f7730d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f7731e;

    public a(String str) {
        JSONObject jSONObject;
        String strOptString;
        JSONObject jSONObjectOptJSONObject;
        this.f7730d = str;
        String str2 = null;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException unused) {
            jSONObject = null;
        }
        int i = -1;
        if (jSONObject != null) {
            this.f7731e = true;
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("errors");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0 && (jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(0)) != null) {
                int iOptInt = jSONObjectOptJSONObject.optInt("code", -1);
                String strOptString2 = jSONObjectOptJSONObject.optString("message");
                strOptString = jSONObjectOptJSONObject.optString("userFacingMessage");
                i = iOptInt;
                str2 = strOptString2;
            }
            this.f7727a = i;
            this.f7728b = str2;
            this.f7729c = strOptString;
        }
        this.f7731e = false;
        strOptString = null;
        this.f7727a = i;
        this.f7728b = str2;
        this.f7729c = strOptString;
    }

    public boolean a() {
        return this.f7731e;
    }
}
