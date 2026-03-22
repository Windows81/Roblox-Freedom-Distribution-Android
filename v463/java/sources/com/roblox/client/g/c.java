package com.roblox.client.g;

import com.roblox.client.ae.k;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final c f6207d = new c("", "", "");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f6210c;

    public c(String str, String str2) {
        this(str, str2, "");
    }

    public c(String str, String str2, String str3) {
        this.f6208a = str;
        this.f6209b = str2;
        this.f6210c = str3;
    }

    public String a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cvalue", this.f6208a).put("password", this.f6209b);
        } catch (JSONException unused) {
            k.e("rbx.RbxCredential", "Failed to convert to JSON");
        }
        return jSONObject.toString();
    }
}
