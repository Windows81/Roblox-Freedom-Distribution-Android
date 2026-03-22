package com.roblox.client.pushnotification.b;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f6816c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6817d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f6818e;
    private long f;
    private String g;

    public f(i iVar) throws JSONException, com.roblox.client.pushnotification.g {
        this.f6814a = iVar.a();
        JSONObject jSONObjectC = iVar.c();
        this.f6817d = jSONObjectC.isNull("AuthorUserName") ? null : jSONObjectC.getString("AuthorUserName");
        this.f6818e = jSONObjectC.getLong("AuthorUserId");
        this.f6815b = jSONObjectC.isNull("BodyPreview") ? null : jSONObjectC.getString("BodyPreview");
        this.f6816c = jSONObjectC.getLong("MessageId");
        String string = jSONObjectC.isNull("EventDate") ? null : jSONObjectC.getString("EventDate");
        this.g = string;
        this.f = string == null ? -1L : com.roblox.client.ae.e.b(string);
        f();
    }

    private void f() throws com.roblox.client.pushnotification.g {
        String str = this.f6817d;
        if (str == null || TextUtils.isEmpty(str)) {
            throw new com.roblox.client.pushnotification.g("PrivateMessageNotification authorUserName is null or empty");
        }
        if (this.f6818e <= 0) {
            throw new com.roblox.client.pushnotification.g("PrivateMessageNotification authorUserId <= 0");
        }
        String str2 = this.g;
        if (str2 == null || TextUtils.isEmpty(str2)) {
            throw new com.roblox.client.pushnotification.g("PrivateMessageNotification date is null or empty");
        }
        String str3 = this.f6815b;
        if (str3 == null || TextUtils.isEmpty(str3)) {
            throw new com.roblox.client.pushnotification.g("PrivateMessageNotification bodyPreview is null or empty");
        }
        if (this.f6816c <= 0) {
            throw new com.roblox.client.pushnotification.g("PrivateMessageNotification messageId <= 0");
        }
    }

    @Override // com.roblox.client.pushnotification.b.m
    public String b() {
        return this.f6814a;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public long c() {
        return this.f;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public void a(m mVar) {
        if (mVar instanceof f) {
            this.f6814a = mVar.b();
            f fVar = (f) mVar;
            this.f6817d = fVar.d();
            this.f6818e = fVar.e();
            this.f6815b = fVar.g();
            this.f6816c = fVar.a();
            this.f = mVar.c();
        }
    }

    public long a() {
        return this.f6816c;
    }

    public String d() {
        return this.f6817d;
    }

    public long e() {
        return this.f6818e;
    }

    private String g() {
        return this.f6815b;
    }
}
