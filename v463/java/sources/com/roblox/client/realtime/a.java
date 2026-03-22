package com.roblox.client.realtime;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static boolean f6945a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    protected static long f6946b = -1;

    public abstract void a(String str, g gVar);

    public abstract void a(boolean z);

    public abstract void c();

    public boolean d() {
        return false;
    }

    public boolean e() {
        return true;
    }

    public static boolean a() {
        return f6945a;
    }

    @Deprecated
    public static long b() {
        return f6946b;
    }

    protected String a(String str) {
        try {
            return new JSONObject(str).optString("Type");
        } catch (JSONException unused) {
            return "";
        }
    }
}
