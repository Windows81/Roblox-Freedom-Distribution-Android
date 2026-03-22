package com.roblox.client.q;

import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f7719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f7720c;

    public a() {
    }

    public static a a(JSONObject jSONObject) {
        return new a(jSONObject.optInt("NotificationCount", 0), jSONObject.optBoolean("EmailNotificationEnabled", false), jSONObject.optBoolean("PasswordNotificationEnabled", false));
    }

    public static a b(JSONObject jSONObject) {
        return new a(jSONObject.optInt("Count", 0), jSONObject.optBoolean("EmailNotificationEnabled", false), jSONObject.optBoolean("PasswordNotificationEnabled", false));
    }

    public a(int i, boolean z, boolean z2) {
        this.f7718a = i;
        this.f7719b = z;
        this.f7720c = z2;
    }

    public void a() {
        this.f7718a = 0;
        this.f7719b = false;
        this.f7720c = false;
    }

    public int b() {
        return this.f7718a;
    }

    public boolean c() {
        return this.f7719b;
    }

    public boolean d() {
        return this.f7720c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (aVar.f7718a == this.f7718a && aVar.f7719b == this.f7719b && aVar.f7720c == this.f7720c) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "AccountNotifications{count=" + this.f7718a + ", hasEmailNotification=" + this.f7719b + ", hasPasswordNotification=" + this.f7720c + '}';
    }
}
