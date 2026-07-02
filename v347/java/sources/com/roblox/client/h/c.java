package com.roblox.client.h;

import b.ac;
import com.roblox.client.h.t;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f7022d;
    private Integer e;

    public interface a {
        void a(int i);
    }

    public c() {
        this(t.n(), null, null);
    }

    public c(com.b.a.a.o oVar, Integer num, a aVar) {
        super(oVar);
        this.f7022d = aVar;
        this.e = num;
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        d.l<ac> lVarA = com.roblox.platform.g.a().b().b().a();
        String strG = lVarA.d().g();
        com.roblox.client.util.g.a(com.roblox.client.chat.a.f6496a, "onRun() payload:" + strG);
        com.roblox.client.e.h hVar = new com.roblox.client.e.h();
        if (lVarA.a() == 200) {
            JSONObject jSONObject = new JSONObject(strG);
            if (jSONObject.has("chatEnabled")) {
                hVar.f6891d = jSONObject.getBoolean("chatEnabled") ? com.roblox.client.e.h.f6889b : com.roblox.client.e.h.f6890c;
            } else {
                hVar.f6891d = com.roblox.client.e.h.f6888a;
            }
        } else {
            hVar.f6891d = com.roblox.client.e.h.f6888a;
        }
        a(hVar);
    }

    private void a(final com.roblox.client.e.h hVar) {
        boolean zA = false;
        if (hVar.f6891d == com.roblox.client.e.h.f6889b) {
            zA = com.roblox.client.chat.a.a.a().a(true);
        } else if (hVar.f6891d == com.roblox.client.e.h.f6890c) {
            zA = com.roblox.client.chat.a.a.a().a(false);
        }
        if (this.f7022d != null) {
            m().post(new Runnable() { // from class: com.roblox.client.h.c.1
                @Override // java.lang.Runnable
                public void run() {
                    c.this.f7022d.a(hVar.f6891d);
                }
            });
        }
        if (zA) {
            org.greenrobot.eventbus.c.a().c(hVar);
        }
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
        a(new com.roblox.client.e.h());
    }
}
