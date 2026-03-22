package com.roblox.client.r;

import android.util.Log;
import com.roblox.client.r.f;
import com.roblox.platform.http.postbody.chat.SendMessagePostBody;
import com.roblox.platform.i;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f6905e;
    private a f;

    public interface a {
        void a(String str);

        void a(String str, String str2);
    }

    public b(long j, String str, a aVar) {
        super(n().a(Long.toString(j)));
        this.f6905e = j;
        this.f6904d = str;
        this.f = aVar;
    }

    @Override // com.birbit.android.jobqueue.g
    public void g() throws Throwable {
        String strG = i.a().b().a(new SendMessagePostBody(this.f6905e, this.f6904d)).a().e().g();
        Log.v(com.roblox.client.e.a.f5984a, "CPMJ.onRun() payload:" + strG);
        JSONObject jSONObject = new JSONObject(strG);
        String string = jSONObject.getString("resultType");
        if (!"Success".equals(string)) {
            a(string, jSONObject.optString("statusMessage"));
        } else {
            a(jSONObject.getString("messageId"));
        }
    }

    private void a(String str, String str2) {
        String str3 = str2 != null ? str2 : "Send Failed";
        if (str2 == null) {
            str = "Failure";
        }
        b(str, str3);
    }

    private void a(final String str) {
        if (this.f != null) {
            m().post(new Runnable() { // from class: com.roblox.client.r.b.1
                @Override // java.lang.Runnable
                public void run() {
                    b.this.f.a(str);
                }
            });
        }
    }

    private void b(final String str, final String str2) {
        if (this.f != null) {
            m().post(new Runnable() { // from class: com.roblox.client.r.b.2
                @Override // java.lang.Runnable
                public void run() {
                    b.this.f.a(str, str2);
                }
            });
        }
    }

    @Override // com.roblox.client.r.f
    protected void a(f.a aVar) {
        a((String) null, (String) null);
    }
}
