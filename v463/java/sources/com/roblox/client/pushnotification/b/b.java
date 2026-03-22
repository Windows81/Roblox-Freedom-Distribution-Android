package com.roblox.client.pushnotification.b;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6800c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f6801d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f6802e;
    private long f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;

    public b(i iVar) throws JSONException, com.roblox.client.pushnotification.g {
        this.f6798a = iVar.a();
        JSONObject jSONObjectC = iVar.c();
        this.f6799b = jSONObjectC.isNull("SenderUserName") ? null : jSONObjectC.getString("SenderUserName");
        this.f6800c = jSONObjectC.isNull("SenderDisplayName") ? null : jSONObjectC.getString("SenderDisplayName");
        this.f6801d = jSONObjectC.getLong("SenderUserId");
        String string = jSONObjectC.isNull("EventDate") ? null : jSONObjectC.getString("EventDate");
        this.l = string;
        this.f6802e = string == null ? -1L : com.roblox.client.ae.e.b(string);
        this.g = jSONObjectC.isNull("ConversationTitle") ? null : jSONObjectC.getString("ConversationTitle");
        this.f = jSONObjectC.getLong("ConversationId");
        this.h = jSONObjectC.isNull("ConversationType") ? null : jSONObjectC.getString("ConversationType");
        this.i = jSONObjectC.isNull("MessageId") ? null : jSONObjectC.getString("MessageId");
        this.j = jSONObjectC.isNull("MessageContent") ? null : jSONObjectC.getString("MessageContent");
        this.k = jSONObjectC.isNull("Category") ? null : jSONObjectC.getString("Category");
        a();
    }

    public b(String str, long j, String str2, String str3) {
        this.k = str;
        this.f = j;
        this.g = str2;
        this.f6798a = str3;
    }

    private void a() throws com.roblox.client.pushnotification.g {
        String str = this.f6799b;
        if (str == null || TextUtils.isEmpty(str)) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification senderName is null or empty");
        }
        if (this.f6801d <= 0) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification senderId <= 0");
        }
        String str2 = this.k;
        if (str2 == null || TextUtils.isEmpty(str2)) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification category is null or empty");
        }
        String str3 = this.l;
        if (str3 == null || TextUtils.isEmpty(str3)) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification date is null or empty");
        }
        String str4 = this.g;
        if (str4 == null || TextUtils.isEmpty(str4)) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification conversationTitle is null or empty");
        }
        if (this.f <= 0) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification conversationId is null");
        }
        String str5 = this.i;
        if (str5 == null || TextUtils.isEmpty(str5)) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification messageId is null or empty");
        }
        String str6 = this.j;
        if (str6 == null || TextUtils.isEmpty(str6)) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification messageContent is null or empty");
        }
        String str7 = this.h;
        if (str7 == null || TextUtils.isEmpty(str7)) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification conversationType is null or empty");
        }
        if (!a(this.h)) {
            throw new com.roblox.client.pushnotification.g("ChatNewMessageNotification conversationType is invalid");
        }
    }

    private boolean a(String str) {
        return str.equals("OneToOneConversation") || str.equals("MultiUserConversation");
    }

    @Override // com.roblox.client.pushnotification.b.m
    public String b() {
        return this.f6798a;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public long c() {
        return this.f6802e;
    }

    @Override // com.roblox.client.pushnotification.b.m
    public void a(m mVar) {
        if (mVar instanceof b) {
            this.f6798a = mVar.b();
            this.f6802e = mVar.c();
            b bVar = (b) mVar;
            this.f6799b = bVar.i();
            this.f6800c = bVar.j();
            this.f6801d = bVar.e();
            this.f = bVar.d();
            this.g = bVar.f();
            this.h = bVar.l();
            this.i = bVar.g();
            this.j = bVar.h();
            this.k = bVar.m();
        }
    }

    public long d() {
        return this.f;
    }

    public long e() {
        return this.f6801d;
    }

    public String f() {
        return this.g;
    }

    public String g() {
        return this.i;
    }

    public String h() {
        return this.j;
    }

    public String i() {
        return this.f6799b;
    }

    public String j() {
        return this.f6800c;
    }

    public String k() {
        String str = this.f6800c;
        if (str == null || TextUtils.isEmpty(str)) {
            return this.f6799b;
        }
        return this.f6800c;
    }

    public String l() {
        return this.h;
    }

    public String m() {
        return this.k;
    }
}
