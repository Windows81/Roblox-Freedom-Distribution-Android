package com.roblox.client.pushnotification.b;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6823a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6825c;

    @Override // com.roblox.client.pushnotification.b.m
    public long c() {
        return 0L;
    }

    public h(i iVar) throws JSONException {
        this.f6823a = iVar.a();
        JSONObject jSONObjectC = iVar.c();
        this.f6824b = jSONObjectC.getString("revokedNotificationType");
        this.f6825c = jSONObjectC.getString("revokedNotificationId");
    }

    @Override // com.roblox.client.pushnotification.b.m
    public String b() {
        return this.f6823a;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public void a(m mVar) {
        if (mVar instanceof h) {
            this.f6823a = mVar.b();
            h hVar = (h) mVar;
            this.f6825c = hVar.d();
            this.f6824b = hVar.a();
        }
    }

    public String a() {
        return this.f6824b;
    }

    public String d() {
        return this.f6825c;
    }
}
