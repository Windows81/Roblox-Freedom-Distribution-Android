package com.roblox.client.h;

import com.roblox.client.h.t;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class k extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f7051d;

    public interface a {
        void a();
    }

    public k(a aVar) {
        this.f7051d = aVar;
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
        a("Could not complete request for account notifications");
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        String strA = com.roblox.client.util.l.a(com.roblox.platform.g.a().a().a().a());
        if (!strA.isEmpty()) {
            try {
                if (com.roblox.client.q.d.a().a(com.roblox.client.q.a.b(new JSONObject(strA)))) {
                    org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.a());
                    o();
                }
            } catch (JSONException e) {
                a("Unable to parse account notifications");
            }
        }
    }

    private void o() {
        if (this.f7051d != null) {
            m().post(new Runnable() { // from class: com.roblox.client.h.k.1
                @Override // java.lang.Runnable
                public void run() {
                    k.this.f7051d.a();
                }
            });
        }
    }
}
