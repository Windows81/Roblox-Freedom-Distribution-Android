package com.roblox.client.d;

import android.content.Context;
import android.content.SharedPreferences;
import com.roblox.client.util.m;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6856a = "configure_dev_settings";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f6857b = "config_json";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SharedPreferences f6858c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private JSONObject f6859d;

    public a(Context context) {
        this.f6858c = m.a(context, "configure_dev_settings");
        try {
            this.f6859d = new JSONObject(this.f6858c.getString("config_json", "{}"));
        } catch (JSONException e) {
            this.f6859d = new JSONObject();
        }
    }

    public JSONObject a() {
        return this.f6859d;
    }

    public static JSONObject a(Context context) {
        if (context != null) {
            return new a(context).a();
        }
        return null;
    }
}
