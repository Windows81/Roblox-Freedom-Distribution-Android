package com.roblox.client.pushnotification.b;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class h implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f7671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f7673c;

    public h(i iVar) throws JSONException {
        this.f7671a = iVar.a();
        JSONObject jSONObjectC = iVar.c();
        this.f7672b = jSONObjectC.getString("revokedNotificationType");
        this.f7673c = jSONObjectC.getString("revokedNotificationId");
    }

    @Override // com.roblox.client.pushnotification.b.m
    public String b() {
        return this.f7671a;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public long c() {
        return 0L;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public void a(m mVar) {
        if (mVar instanceof h) {
            this.f7671a = mVar.b();
            this.f7673c = ((h) mVar).d();
            this.f7672b = ((h) mVar).a();
        }
    }

    public String a() {
        return this.f7672b;
    }

    public String d() {
        return this.f7673c;
    }
}
