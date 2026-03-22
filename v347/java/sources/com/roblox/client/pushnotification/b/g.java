package com.roblox.client.pushnotification.b;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class g implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f7667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f7669c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7670d;

    public g(i iVar) throws JSONException {
        this.f7667a = iVar.a();
        JSONObject jSONObjectC = iVar.c();
        this.f7670d = jSONObjectC.getString("category");
        this.f7668b = jSONObjectC.getString("revokedNotificationType");
        this.f7669c = jSONObjectC.getString("revokeUpToDate");
    }

    @Override // com.roblox.client.pushnotification.b.m
    public String b() {
        return this.f7667a;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public long c() {
        return com.roblox.client.util.d.b(this.f7669c);
    }

    @Override // com.roblox.client.pushnotification.b.m
    public void a(m mVar) {
        if (mVar instanceof g) {
            this.f7667a = mVar.b();
            this.f7668b = ((g) mVar).a();
            this.f7669c = ((g) mVar).d();
            this.f7670d = ((g) mVar).e();
        }
    }

    public String a() {
        return this.f7668b;
    }

    public String d() {
        return this.f7669c;
    }

    public String e() {
        return this.f7670d;
    }
}
