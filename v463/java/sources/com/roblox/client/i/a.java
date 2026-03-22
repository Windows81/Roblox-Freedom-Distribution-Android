package com.roblox.client.i;

import android.content.Context;
import com.roblox.client.f.e;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6387a = "configure_dev_settings";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f6388b = "config_json";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f6389c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private JSONObject f6390d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f6391e;

    public a(Context context) {
        this.f6391e = context;
        e eVar = new e(context);
        this.f6389c = eVar;
        com.roblox.client.f.d dVarA = eVar.a(context);
        this.f6390d = dVarA != null ? dVarA.d() : new JSONObject();
    }

    public JSONObject a() {
        return this.f6390d;
    }

    public static JSONObject a(Context context) {
        if (context != null) {
            return new a(context).a();
        }
        return null;
    }
}
