package com.roblox.client.h;

import android.util.Log;
import com.roblox.client.h.t;
import com.roblox.platform.http.postbody.chat.SendMessagePostBody;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class h extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7039d;
    private long e;
    private a f;
    private String g;

    public interface a {
        void a(String str);

        void a(String str, String str2);
    }

    public h(long j, String str, a aVar) {
        this(j, str, aVar, null);
    }

    public h(long j, String str, a aVar, String str2) {
        super(n().a(Long.toString(j)));
        this.g = null;
        this.e = j;
        this.f7039d = str;
        this.f = aVar;
        this.g = str2;
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        String strG = com.roblox.platform.g.a().b().a(new SendMessagePostBody(this.e, this.f7039d)).a().d().g();
        Log.v(com.roblox.client.chat.a.f6496a, "CPMJ.onRun() payload:" + strG);
        JSONObject jSONObject = new JSONObject(strG);
        String string = jSONObject.getString("resultType");
        if (!"Success".equals(string)) {
            b(string, jSONObject.optString("statusMessage"));
            return;
        }
        String string2 = jSONObject.getString("messageId");
        com.roblox.client.chat.a.a.a().a(this.e).a(this.g != null ? this.g : a(), string2, jSONObject.optString("content", null), jSONObject.optBoolean("filteredForReceivers"));
        b(string2);
    }

    private void b(String str, String str2) {
        String str3 = str2 != null ? str2 : "Send Failed";
        com.roblox.client.chat.a.c cVarA = com.roblox.client.chat.a.a.a().a(this.e);
        if (str2 == null) {
            str = "Failure";
        }
        cVarA.a(this.g != null ? this.g : a(), str3, str);
        c(str, str3);
    }

    private void b(final String str) {
        if (this.f != null) {
            m().post(new Runnable() { // from class: com.roblox.client.h.h.1
                @Override // java.lang.Runnable
                public void run() {
                    h.this.f.a(str);
                }
            });
        }
    }

    private void c(final String str, final String str2) {
        if (this.f != null) {
            m().post(new Runnable() { // from class: com.roblox.client.h.h.2
                @Override // java.lang.Runnable
                public void run() {
                    h.this.f.a(str, str2);
                }
            });
        }
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
        b(null, null);
    }
}
