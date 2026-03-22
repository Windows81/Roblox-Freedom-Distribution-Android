package com.roblox.client.pushnotification.b;

import android.text.TextUtils;
import com.roblox.client.pushnotification.p;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f7674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JSONObject f7676c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f7677d;

    public i(JSONObject jSONObject) throws JSONException, com.roblox.client.pushnotification.g {
        this.f7674a = jSONObject.isNull("notificationId") ? null : jSONObject.getString("notificationId");
        this.f7675b = jSONObject.isNull("type") ? null : jSONObject.getString("type");
        this.f7676c = jSONObject.isNull("detail") ? null : jSONObject.getJSONObject("detail");
        this.f7677d = jSONObject.getBoolean("fallbackDelivered");
        d();
    }

    private void d() throws com.roblox.client.pushnotification.g {
        if (this.f7676c == null) {
            throw new com.roblox.client.pushnotification.g("PushNotificationMetadata details object is null");
        }
        if (this.f7675b == null || TextUtils.isEmpty(this.f7675b)) {
            throw new com.roblox.client.pushnotification.g("PushNotificationMetadata notificationType is null or empty");
        }
        if (!p.a(this.f7674a)) {
            throw new com.roblox.client.pushnotification.g("PushNotificationMetadata notificationId is invalid");
        }
    }

    public String a() {
        return this.f7674a;
    }

    public String b() {
        return this.f7675b;
    }

    public JSONObject c() {
        return this.f7676c;
    }
}
