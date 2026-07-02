package com.roblox.client.h;

import com.roblox.client.e.x;
import com.roblox.client.h.t;
import com.roblox.platform.http.postbody.chat.MarkAsReadPostBody;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class g extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7036d;
    private long e;
    private a f;

    public interface a {
        void a(boolean z);
    }

    public g(long j, String str, a aVar) {
        this.e = j;
        this.f7036d = str;
        this.f = aVar;
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        String strG = com.roblox.platform.g.a().b().a(new MarkAsReadPostBody(this.e, this.f7036d)).a().d().g();
        com.roblox.client.util.g.a(com.roblox.client.chat.a.f6496a, "payload:" + strG);
        String strOptString = new JSONObject(strG).optString("resultType");
        boolean z = false;
        if ("Success".equals(strOptString)) {
            com.roblox.client.chat.a.h hVarB = com.roblox.client.chat.a.a.a().a(this.e).b(this.f7036d);
            if (hVarB != null) {
                hVarB.a(true);
                com.roblox.client.chat.a.h hVarD = com.roblox.client.chat.a.a.a().d(this.e);
                if (hVarD != null && hVarD.e().equals(hVarB.e())) {
                    hVarD.a(true);
                    org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.o(this.e));
                    org.greenrobot.eventbus.c.a().c(new x(com.roblox.client.chat.a.a.a().d()));
                }
            }
            z = true;
        }
        a(z);
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
        a(false);
    }

    private void a(final boolean z) {
        if (this.f != null) {
            m().post(new Runnable() { // from class: com.roblox.client.h.g.1
                @Override // java.lang.Runnable
                public void run() {
                    g.this.f.a(z);
                }
            });
        }
    }
}
