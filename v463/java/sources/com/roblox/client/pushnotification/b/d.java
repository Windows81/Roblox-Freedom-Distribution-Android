package com.roblox.client.pushnotification.b;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6808a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f6810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f6811d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6812e;

    public d(i iVar) throws JSONException, com.roblox.client.pushnotification.g {
        this.f6808a = iVar.a();
        JSONObject jSONObjectC = iVar.c();
        this.f6809b = jSONObjectC.isNull("SenderUserName") ? null : jSONObjectC.getString("SenderUserName");
        this.f6810c = jSONObjectC.getLong("SenderUserId");
        String string = jSONObjectC.isNull("EventDate") ? null : jSONObjectC.getString("EventDate");
        this.f6812e = string;
        this.f6811d = string == null ? -1L : com.roblox.client.ae.e.b(string);
        e();
    }

    private void e() throws com.roblox.client.pushnotification.g {
        String str = this.f6809b;
        if (str == null || TextUtils.isEmpty(str)) {
            throw new com.roblox.client.pushnotification.g("FriendRequestReceivedNotification username is null or empty");
        }
        String str2 = this.f6812e;
        if (str2 == null || TextUtils.isEmpty(str2)) {
            throw new com.roblox.client.pushnotification.g("FriendRequestReceivedNotification date is null or empty");
        }
        if (this.f6810c <= 0) {
            throw new com.roblox.client.pushnotification.g("FriendRequestReceivedNotification userId <= 0");
        }
    }

    @Override // com.roblox.client.pushnotification.b.m
    public String b() {
        return this.f6808a;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public long c() {
        return this.f6811d;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public void a(m mVar) {
        if (mVar instanceof d) {
            this.f6808a = mVar.b();
            d dVar = (d) mVar;
            this.f6809b = dVar.d();
            this.f6810c = dVar.a();
            this.f6811d = mVar.c();
        }
    }

    public long a() {
        return this.f6810c;
    }

    public String d() {
        return this.f6809b;
    }
}
