package com.roblox.client.f;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f6008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6009b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6010c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6011d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6012e;
    private String f;

    public interface a {
        d a();

        void a(String str);

        void b(String str);

        void c(String str);

        void d(String str);
    }

    public d(String str, String str2, String str3, String str4, String str5, String str6) {
        this.f6009b = str;
        this.f6010c = str2;
        a(str3);
        this.f6011d = str4;
        this.f6012e = str5;
        this.f = str6;
    }

    public void a(String str) {
        if (str != null && str.length() >= 2) {
            try {
                this.f6008a = new JSONObject(str);
            } catch (JSONException unused) {
                b.a("rbx.config", "Settings parse error");
            }
        }
        if (this.f6008a == null) {
            this.f6008a = new JSONObject();
        }
    }

    public void b(String str) {
        this.f6009b = str;
    }

    public String a() {
        return this.f6009b;
    }

    public String b() {
        return this.f6010c;
    }

    public String c() {
        return this.f6008a.toString();
    }

    public JSONObject d() {
        return this.f6008a;
    }

    public String e() {
        return this.f6011d;
    }

    public void c(String str) {
        this.f6011d = str;
    }

    public String f() {
        return this.f6012e;
    }

    public void d(String str) {
        this.f = str;
    }

    public String g() {
        return this.f;
    }
}
