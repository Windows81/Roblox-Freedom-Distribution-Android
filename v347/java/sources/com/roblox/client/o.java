package com.roblox.client;

import com.roblox.client.util.p;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static o f7497d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f7498a = c.UnKnown;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f7499b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final p.a f7500c;

    public interface b {
        void a(c cVar);

        void b(c cVar);
    }

    public enum c {
        UnKnown,
        Recommended,
        Required,
        NotRequired
    }

    public static o a() {
        if (f7497d == null) {
            synchronized (o.class) {
                if (f7497d == null) {
                    f7497d = new o(new p.b());
                }
            }
        }
        return f7497d;
    }

    o(p.a aVar) {
        this.f7500c = aVar;
    }

    public void a(final b bVar) {
        if (this.f7498a != c.UnKnown) {
            long jA = this.f7500c.a() - this.f7499b;
            if (jA < 3600000) {
                com.roblox.client.util.g.c("UpgradeCheckHelper", "Skip upgrade check because it was completed not long ago: " + jA + " ms.");
                if (bVar != null) {
                    bVar.b(this.f7498a);
                    return;
                }
                return;
            }
        }
        this.f7498a = c.UnKnown;
        com.roblox.client.http.c cVarA = com.roblox.client.http.g.a().a(RobloxSettings.upgradeCheckUrl(), null, new com.roblox.client.http.l() { // from class: com.roblox.client.o.1
            @Override // com.roblox.client.http.l
            public void a(com.roblox.client.http.j jVar) {
                o.this.a(jVar);
                if (bVar != null) {
                    bVar.a(o.this.f7498a);
                }
            }

            @Override // com.roblox.client.http.l
            public void b(com.roblox.client.http.j jVar) {
            }
        });
        cVarA.a(new com.roblox.client.http.a.b());
        cVarA.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.http.j jVar) {
        try {
            JSONObject jSONObject = new JSONObject(jVar.a()).getJSONObject("data");
            if (jSONObject != null) {
                switch (jSONObject.getString("UpgradeAction")) {
                    case "Required":
                        this.f7498a = c.Required;
                        break;
                    case "Recommended":
                        this.f7498a = c.Recommended;
                        break;
                    default:
                        this.f7498a = c.NotRequired;
                        break;
                }
                this.f7499b = this.f7500c.a();
            }
        } catch (Exception e) {
            com.roblox.client.util.g.d("UpgradeCheckHelper", "evaluateResponse: Exception caught: " + e);
        }
    }

    public static abstract class a implements b {
        @Override // com.roblox.client.o.b
        public void b(c cVar) {
        }
    }
}
