package com.roblox.client.h;

import b.ac;
import com.roblox.client.h.t;
import com.roblox.platform.http.postbody.chat.StartGroupConversationPostBody;
import com.roblox.platform.http.postbody.chat.StartOneToOneConversationPostBody;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class j extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<Long> f7046d;
    private a e;

    public interface a {
        void a(boolean z, long j, String str);
    }

    public j(long j, a aVar) {
        this((ArrayList<Long>) new ArrayList(), aVar);
        this.f7046d.add(Long.valueOf(j));
    }

    public j(ArrayList<Long> arrayList, a aVar) {
        this.f7046d = arrayList;
        this.e = aVar;
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        d.l<ac> lVarA;
        if (this.f7046d == null || this.f7046d.size() <= 0) {
            b("No users selected");
            return;
        }
        if (this.f7046d.size() > 1) {
            lVarA = com.roblox.platform.g.a().b().a(new StartGroupConversationPostBody(this.f7046d)).a();
        } else {
            lVarA = com.roblox.platform.g.a().b().a(new StartOneToOneConversationPostBody(this.f7046d.get(0).longValue())).a();
        }
        String strG = lVarA.d().g();
        com.roblox.client.util.g.a(com.roblox.client.chat.a.f6496a, "payload:" + strG);
        JSONObject jSONObject = new JSONObject(strG);
        String strOptString = jSONObject.optString("resultType");
        String strOptString2 = jSONObject.optString("statusMessage", "Could not start conversation");
        if ("Success".equals(strOptString)) {
            com.roblox.client.chat.a.d dVar = new com.roblox.client.chat.a.d(jSONObject.getJSONObject("conversation"));
            com.roblox.client.chat.a.a.a().a(dVar, true);
            a(true, dVar.c(), strOptString2);
            org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.g(dVar));
            return;
        }
        b("Could not start conversation");
    }

    private void b(String str) {
        a(false, -1L, str);
        org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.g(null));
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
        b("Could not start conversation");
    }

    private void a(final boolean z, final long j, final String str) {
        if (this.e != null) {
            m().post(new Runnable() { // from class: com.roblox.client.h.j.1
                @Override // java.lang.Runnable
                public void run() {
                    j.this.e.a(z, j, str);
                }
            });
        }
    }
}
