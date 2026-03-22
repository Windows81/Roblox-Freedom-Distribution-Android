package com.roblox.client.pushnotification.b;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f7658a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f7660c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f7661d;
    private String e;

    public d(i iVar) throws JSONException, com.roblox.client.pushnotification.g {
        this.f7658a = iVar.a();
        JSONObject jSONObjectC = iVar.c();
        this.f7659b = jSONObjectC.isNull("SenderUserName") ? null : jSONObjectC.getString("SenderUserName");
        this.f7660c = jSONObjectC.getLong("SenderUserId");
        this.e = jSONObjectC.isNull("EventDate") ? null : jSONObjectC.getString("EventDate");
        this.f7661d = this.e == null ? -1L : com.roblox.client.util.d.b(this.e);
        e();
    }

    private void e() throws com.roblox.client.pushnotification.g {
        if (this.f7659b == null || TextUtils.isEmpty(this.f7659b)) {
            throw new com.roblox.client.pushnotification.g("FriendRequestReceivedNotification username is null or empty");
        }
        if (this.e == null || TextUtils.isEmpty(this.e)) {
            throw new com.roblox.client.pushnotification.g("FriendRequestReceivedNotification date is null or empty");
        }
        if (this.f7660c <= 0) {
            throw new com.roblox.client.pushnotification.g("FriendRequestReceivedNotification userId <= 0");
        }
    }

    @Override // com.roblox.client.pushnotification.b.m
    public String b() {
        return this.f7658a;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public long c() {
        return this.f7661d;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public void a(m mVar) {
        if (mVar instanceof d) {
            this.f7658a = mVar.b();
            this.f7659b = ((d) mVar).d();
            this.f7660c = ((d) mVar).a();
            this.f7661d = mVar.c();
        }
    }

    public long a() {
        return this.f7660c;
    }

    public String d() {
        return this.f7659b;
    }
}
