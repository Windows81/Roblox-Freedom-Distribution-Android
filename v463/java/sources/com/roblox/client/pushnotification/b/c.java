package com.roblox.client.pushnotification.b;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f6805c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f6806d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6807e;

    public c(i iVar) throws JSONException, com.roblox.client.pushnotification.g {
        this.f6803a = iVar.a();
        JSONObject jSONObjectC = iVar.c();
        this.f6804b = jSONObjectC.isNull("AccepterUserName") ? null : jSONObjectC.getString("AccepterUserName");
        this.f6805c = jSONObjectC.getLong("AccepterUserId");
        String string = jSONObjectC.isNull("EventDate") ? null : jSONObjectC.getString("EventDate");
        this.f6807e = string;
        this.f6806d = string == null ? -1L : com.roblox.client.ae.e.b(string);
        e();
    }

    private void e() throws com.roblox.client.pushnotification.g {
        String str = this.f6804b;
        if (str == null || TextUtils.isEmpty(str)) {
            throw new com.roblox.client.pushnotification.g("FriendRequestAcceptedNotification username is null or empty");
        }
        if (this.f6805c <= 0) {
            throw new com.roblox.client.pushnotification.g("FriendRequestAcceptedNotification userId <= 0");
        }
        String str2 = this.f6807e;
        if (str2 == null || TextUtils.isEmpty(str2)) {
            throw new com.roblox.client.pushnotification.g("FriendRequestAcceptedNotification date is null or empty");
        }
    }

    @Override // com.roblox.client.pushnotification.b.m
    public String b() {
        return this.f6803a;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public long c() {
        return this.f6806d;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public void a(m mVar) {
        if (mVar instanceof c) {
            this.f6803a = mVar.b();
            c cVar = (c) mVar;
            this.f6804b = cVar.d();
            this.f6805c = cVar.a();
            this.f6806d = mVar.c();
        }
    }

    public long a() {
        return this.f6805c;
    }

    public String d() {
        return this.f6804b;
    }
}
