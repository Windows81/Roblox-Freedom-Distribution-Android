package com.roblox.client.h;

import com.roblox.client.h.t;
import com.roblox.platform.http.postbody.chat.AddToConversationPostBody;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<Long> f7031d = new ArrayList<>();
    private long e;
    private a f;

    public interface a {
        void a(boolean z, long j, String str);
    }

    public f(long j, List<Long> list, a aVar) {
        this.f7031d.addAll(list);
        this.e = j;
        this.f = aVar;
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
        aVar.f7075b.printStackTrace();
        b("Could not add user");
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        if (this.f7031d == null || this.f7031d.size() <= 0) {
            b("No users selected");
            return;
        }
        String strG = com.roblox.platform.g.a().b().a(new AddToConversationPostBody(this.e, this.f7031d)).a().d().g();
        com.roblox.client.util.g.a(com.roblox.client.chat.a.f6496a, "payload:" + strG);
        JSONObject jSONObject = new JSONObject(strG);
        String strOptString = jSONObject.optString("resultType");
        String strOptString2 = jSONObject.optString("statusMessage", "Could not add user");
        if ("Success".equals(strOptString)) {
            a(true, this.e, strOptString2);
        } else {
            b(strOptString2);
        }
    }

    private void b(String str) {
        a(false, this.e, str);
    }

    private void a(final boolean z, final long j, final String str) {
        if (this.f != null) {
            m().post(new Runnable() { // from class: com.roblox.client.h.f.1
                @Override // java.lang.Runnable
                public void run() {
                    f.this.f.a(z, j, str);
                }
            });
        }
    }
}
