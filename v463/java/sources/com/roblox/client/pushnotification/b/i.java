package com.roblox.client.pushnotification.b;

import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import com.roblox.client.pushnotification.p;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JSONObject f6828c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6829d;

    public i(JSONObject jSONObject) throws JSONException, com.roblox.client.pushnotification.g {
        this.f6826a = jSONObject.isNull("notificationId") ? null : jSONObject.getString("notificationId");
        this.f6827b = jSONObject.isNull(Payload.TYPE) ? null : jSONObject.getString(Payload.TYPE);
        this.f6828c = jSONObject.isNull("detail") ? null : jSONObject.getJSONObject("detail");
        this.f6829d = jSONObject.getBoolean("fallbackDelivered");
        d();
    }

    private void d() throws com.roblox.client.pushnotification.g {
        if (this.f6828c == null) {
            throw new com.roblox.client.pushnotification.g("PushNotificationMetadata details object is null");
        }
        String str = this.f6827b;
        if (str == null || TextUtils.isEmpty(str)) {
            throw new com.roblox.client.pushnotification.g("PushNotificationMetadata notificationType is null or empty");
        }
        if (!p.a(this.f6826a)) {
            throw new com.roblox.client.pushnotification.g("PushNotificationMetadata notificationId is invalid");
        }
    }

    public String a() {
        return this.f6826a;
    }

    public String b() {
        return this.f6827b;
    }

    public JSONObject c() {
        return this.f6828c;
    }
}
