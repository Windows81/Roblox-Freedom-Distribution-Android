package com.roblox.client.pushnotification.b;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f7650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f7652c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f7653d;
    private long e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;

    public b(i iVar) throws JSONException, com.roblox.client.pushnotification.g {
        this.f7650a = iVar.a();
        JSONObject jSONObjectC = iVar.c();
        this.f7651b = jSONObjectC.isNull("SenderUserName") ? null : jSONObjectC.getString("SenderUserName");
        this.f7652c = jSONObjectC.getLong("SenderUserId");
        this.k = jSONObjectC.isNull("EventDate") ? null : jSONObjectC.getString("EventDate");
        this.f7653d = this.k == null ? -1L : com.roblox.client.util.d.b(this.k);
        this.f = jSONObjectC.isNull("ConversationTitle") ? null : jSONObjectC.getString("ConversationTitle");
        this.e = jSONObjectC.getLong("ConversationId");
        this.g = jSONObjectC.isNull("ConversationType") ? null : jSONObjectC.getString("ConversationType");
        this.h = jSONObjectC.isNull("MessageId") ? null : jSONObjectC.getString("MessageId");
        this.i = jSONObjectC.isNull("MessageContent") ? null : jSONObjectC.getString("MessageContent");
        this.j = jSONObjectC.isNull("Category") ? null : jSONObjectC.getString("Category");
        a();
    }

    public b(String str, long j, String str2, String str3) {
        this.j = str;
        this.e = j;
        this.f = str2;
        this.f7650a = str3;
    }

    private void a() throws com.roblox.client.pushnotification.g {
        if (this.f7651b == null || TextUtils.isEmpty(this.f7651b)) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification senderName is null or empty");
        }
        if (this.f7652c <= 0) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification senderId <= 0");
        }
        if (this.j == null || TextUtils.isEmpty(this.j)) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification category is null or empty");
        }
        if (this.k == null || TextUtils.isEmpty(this.k)) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification date is null or empty");
        }
        if (this.f == null || TextUtils.isEmpty(this.f)) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification conversationTitle is null or empty");
        }
        if (this.e <= 0) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification conversationId is null");
        }
        if (this.h == null || TextUtils.isEmpty(this.h)) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification messageId is null or empty");
        }
        if (this.i == null || TextUtils.isEmpty(this.i)) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification messageContent is null or empty");
        }
        if (this.g == null || TextUtils.isEmpty(this.g)) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification conversationType is null or empty");
        }
        if (!a(this.g)) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification conversationType is invalid");
        }
    }

    private boolean a(String str) {
        return str.equals("OneToOneConversation") || str.equals("MultiUserConversation");
    }

    @Override // com.roblox.client.pushnotification.b.m
    public String b() {
        return this.f7650a;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public long c() {
        return this.f7653d;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public void a(m mVar) {
        if (mVar instanceof b) {
            this.f7650a = mVar.b();
            this.f7653d = mVar.c();
            this.f7651b = ((b) mVar).i();
            this.f7652c = ((b) mVar).e();
            this.e = ((b) mVar).d();
            this.f = ((b) mVar).f();
            this.g = ((b) mVar).j();
            this.h = ((b) mVar).g();
            this.i = ((b) mVar).h();
            this.j = ((b) mVar).k();
        }
    }

    public long d() {
        return this.e;
    }

    public long e() {
        return this.f7652c;
    }

    public String f() {
        return this.f;
    }

    public String g() {
        return this.h;
    }

    public String h() {
        return this.i;
    }

    public String i() {
        return this.f7651b;
    }

    public String j() {
        return this.g;
    }

    public String k() {
        return this.j;
    }
}
