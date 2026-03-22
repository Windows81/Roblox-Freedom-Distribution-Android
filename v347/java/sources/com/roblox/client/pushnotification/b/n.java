package com.roblox.client.pushnotification.b;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f7687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f7689c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7690d;
    private String e;
    private int f;

    public n(JSONObject jSONObject) throws JSONException {
        this.f7689c = jSONObject.getString("statusMessage");
        JSONObject jSONObject2 = jSONObject.getJSONObject("registration");
        this.f7687a = jSONObject2.getString("platform");
        this.f7688b = jSONObject2.getString("name");
        this.f7690d = jSONObject2.getString("notificationToken");
        this.e = jSONObject2.getString("application");
        this.f = jSONObject2.getInt("userPushNotificationDestinationId");
    }

    public String a() {
        return this.f7687a;
    }
}
