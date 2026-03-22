package com.roblox.client.pushnotification.b;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6842c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6843d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6844e;
    private int f;

    public n(JSONObject jSONObject) throws JSONException {
        this.f6842c = jSONObject.getString("statusMessage");
        JSONObject jSONObject2 = jSONObject.getJSONObject("registration");
        this.f6840a = jSONObject2.getString("platform");
        this.f6841b = jSONObject2.getString("name");
        this.f6843d = jSONObject2.getString("notificationToken");
        this.f6844e = jSONObject2.getString("application");
        this.f = jSONObject2.getInt("userPushNotificationDestinationId");
    }

    public String a() {
        return this.f6840a;
    }
}
