package com.roblox.client.pushnotification.b;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class f implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f7663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7664b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f7665c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7666d;
    private long e;
    private long f;
    private String g;

    public f(i iVar) throws JSONException, com.roblox.client.pushnotification.g {
        this.f7663a = iVar.a();
        JSONObject jSONObjectC = iVar.c();
        this.f7666d = jSONObjectC.isNull("AuthorUserName") ? null : jSONObjectC.getString("AuthorUserName");
        this.e = jSONObjectC.getLong("AuthorUserId");
        this.f7664b = jSONObjectC.isNull("BodyPreview") ? null : jSONObjectC.getString("BodyPreview");
        this.f7665c = jSONObjectC.getLong("MessageId");
        this.g = jSONObjectC.isNull("EventDate") ? null : jSONObjectC.getString("EventDate");
        this.f = this.g == null ? -1L : com.roblox.client.util.d.b(this.g);
        f();
    }

    private void f() throws com.roblox.client.pushnotification.g {
        if (this.f7666d == null || TextUtils.isEmpty(this.f7666d)) {
            throw new com.roblox.client.pushnotification.g("PrivateMessageNotification authorUserName is null or empty");
        }
        if (this.e <= 0) {
            throw new com.roblox.client.pushnotification.g("PrivateMessageNotification authorUserId <= 0");
        }
        if (this.g == null || TextUtils.isEmpty(this.g)) {
            throw new com.roblox.client.pushnotification.g("PrivateMessageNotification date is null or empty");
        }
        if (this.f7664b == null || TextUtils.isEmpty(this.f7664b)) {
            throw new com.roblox.client.pushnotification.g("PrivateMessageNotification bodyPreview is null or empty");
        }
        if (this.f7665c <= 0) {
            throw new com.roblox.client.pushnotification.g("PrivateMessageNotification messageId <= 0");
        }
    }

    @Override // com.roblox.client.pushnotification.b.m
    public String b() {
        return this.f7663a;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public long c() {
        return this.f;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public void a(m mVar) {
        if (mVar instanceof f) {
            this.f7663a = mVar.b();
            this.f7666d = ((f) mVar).d();
            this.e = ((f) mVar).e();
            this.f7664b = ((f) mVar).g();
            this.f7665c = ((f) mVar).a();
            this.f = mVar.c();
        }
    }

    public long a() {
        return this.f7665c;
    }

    public String d() {
        return this.f7666d;
    }

    public long e() {
        return this.e;
    }

    private String g() {
        return this.f7664b;
    }
}
