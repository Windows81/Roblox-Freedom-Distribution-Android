package com.roblox.client.pushnotification.b;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6821c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6822d;

    public g(i iVar) throws JSONException {
        this.f6819a = iVar.a();
        JSONObject jSONObjectC = iVar.c();
        this.f6822d = jSONObjectC.getString("category");
        this.f6820b = jSONObjectC.getString("revokedNotificationType");
        this.f6821c = jSONObjectC.getString("revokeUpToDate");
    }

    @Override // com.roblox.client.pushnotification.b.m
    public String b() {
        return this.f6819a;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public long c() {
        return com.roblox.client.ae.e.b(this.f6821c);
    }

    @Override // com.roblox.client.pushnotification.b.m
    public void a(m mVar) {
        if (mVar instanceof g) {
            this.f6819a = mVar.b();
            g gVar = (g) mVar;
            this.f6820b = gVar.a();
            this.f6821c = gVar.d();
            this.f6822d = gVar.e();
        }
    }

    public String a() {
        return this.f6820b;
    }

    public String d() {
        return this.f6821c;
    }

    public String e() {
        return this.f6822d;
    }
}
