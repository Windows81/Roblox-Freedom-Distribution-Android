package com.roblox.client.pushnotification.b;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f7654a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f7656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f7657d;
    private String e;

    public c(i iVar) throws JSONException, com.roblox.client.pushnotification.g {
        this.f7654a = iVar.a();
        JSONObject jSONObjectC = iVar.c();
        this.f7655b = jSONObjectC.isNull("AccepterUserName") ? null : jSONObjectC.getString("AccepterUserName");
        this.f7656c = jSONObjectC.getLong("AccepterUserId");
        this.e = jSONObjectC.isNull("EventDate") ? null : jSONObjectC.getString("EventDate");
        this.f7657d = this.e == null ? -1L : com.roblox.client.util.d.b(this.e);
        e();
    }

    private void e() throws com.roblox.client.pushnotification.g {
        if (this.f7655b == null || TextUtils.isEmpty(this.f7655b)) {
            throw new com.roblox.client.pushnotification.g("FriendRequestAcceptedNotification username is null or empty");
        }
        if (this.f7656c <= 0) {
            throw new com.roblox.client.pushnotification.g("FriendRequestAcceptedNotification userId <= 0");
        }
        if (this.e == null || TextUtils.isEmpty(this.e)) {
            throw new com.roblox.client.pushnotification.g("FriendRequestAcceptedNotification date is null or empty");
        }
    }

    @Override // com.roblox.client.pushnotification.b.m
    public String b() {
        return this.f7654a;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public long c() {
        return this.f7657d;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public void a(m mVar) {
        if (mVar instanceof c) {
            this.f7654a = mVar.b();
            this.f7655b = ((c) mVar).d();
            this.f7656c = ((c) mVar).a();
            this.f7657d = mVar.c();
        }
    }

    public long a() {
        return this.f7656c;
    }

    public String d() {
        return this.f7655b;
    }
}
