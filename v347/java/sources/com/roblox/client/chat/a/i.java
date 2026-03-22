package com.roblox.client.chat.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f6516a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f6518c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6519d;
    private boolean e;

    public i(JSONObject jSONObject) {
        this.f6516a = jSONObject.optInt("UserPresenceType");
        this.f6517b = jSONObject.optString("LastLocation");
        this.f6518c = jSONObject.optLong("PlaceId");
        this.f6519d = jSONObject.optString("GameId");
        this.e = jSONObject.optBoolean("IsGamePlayableOnCurrentDevice");
    }

    public int a() {
        return this.f6516a;
    }

    public String b() {
        return this.f6517b;
    }

    public long c() {
        return this.f6518c;
    }

    public String d() {
        return this.f6519d;
    }

    public boolean e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f6516a == iVar.a() && this.f6517b.equals(iVar.b()) && this.f6519d == iVar.d() && this.e == iVar.e() && this.f6518c == iVar.c();
    }
}
