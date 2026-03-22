package com.roblox.client.l;

import com.roblox.client.u;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f6425a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f6426b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f6427c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6428d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JSONObject f6429e;
    private boolean f;

    public j(String str) {
        this.f6425a = str;
    }

    public void a(String str) {
        this.f6426b = str;
    }

    public void b(String str) {
        this.f6428d = str;
    }

    public String a() {
        return this.f6428d;
    }

    public void a(JSONObject jSONObject) {
        this.f6429e = jSONObject;
    }

    public JSONObject b() {
        return this.f6429e;
    }

    public void a(boolean z) {
        this.f = z;
    }

    public boolean c() {
        return this.f;
    }

    public static String a(long j) {
        if (j != -1) {
            return u.d() + "users/" + j + "/profile/";
        }
        return u.P();
    }

    public static j a(String str, String str2) {
        j jVar = new j(str);
        jVar.b(str2);
        return jVar;
    }

    public static j c(String str) {
        j jVar = new j(str);
        jVar.f6427c = true;
        return jVar;
    }
}
