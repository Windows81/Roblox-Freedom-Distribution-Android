package com.roblox.client;

import android.content.Context;
import com.roblox.client.ae.v;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class w {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static w f7537e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f7539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v.a f7540c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c f7538a = new c();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f7541d = d.UnKnown;

    public static abstract class a implements b {
        @Override // com.roblox.client.w.b
        public void b(c cVar) {
        }
    }

    public interface b {
        void a(c cVar);

        void b(c cVar);
    }

    public enum d {
        UnKnown,
        Recommended,
        Required,
        NotRequired
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public d f7544a = d.UnKnown;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f7545b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f7546c;

        public boolean a() {
            return this.f7544a == d.Required;
        }

        public boolean b() {
            return this.f7544a == d.Recommended;
        }

        public void c() {
            this.f7544a = d.Required;
        }

        public void d() {
            this.f7544a = d.Recommended;
        }

        public void e() {
            this.f7544a = d.NotRequired;
        }
    }

    public static w a() {
        if (f7537e == null) {
            synchronized (w.class) {
                if (f7537e == null) {
                    f7537e = new w(new v.b());
                }
            }
        }
        return f7537e;
    }

    w(v.a aVar) {
        this.f7540c = aVar;
    }

    public void a(c cVar) {
        com.roblox.client.ae.k.b("UpgradeCheckHelper", "Set upgrade-status (from Init) = " + cVar.f7544a);
        this.f7541d = cVar.f7544a;
    }

    public boolean b() {
        boolean z = this.f7541d == d.Required;
        boolean z2 = this.f7538a.f7544a == d.Required;
        com.roblox.client.ae.k.a("UpgradeCheckHelper", "isUpgradeRequired: [" + z + ", " + z2 + "]");
        return z || z2;
    }

    public c c() {
        return this.f7538a;
    }

    public void a(final b bVar) {
        Context contextB;
        if (com.roblox.client.ae.l.b() && !com.roblox.client.b.bX() && bVar != null && (contextB = RobloxApplication.b()) != null && com.roblox.client.i.b.a()) {
            com.roblox.client.d.b bVar2 = new com.roblox.client.d.b();
            bVar2.a(contextB);
            if (bVar2.a()) {
                bVar.a(bVar2.b());
                return;
            }
        }
        if (this.f7541d != d.UnKnown) {
            com.roblox.client.ae.k.b("UpgradeCheckHelper", "Rely on the upgrade-status set by the Init process: " + this.f7541d);
            this.f7538a.f7544a = this.f7541d;
            this.f7541d = d.UnKnown;
            this.f7539b = this.f7540c.a();
            if (bVar != null) {
                bVar.a(this.f7538a);
                return;
            }
            return;
        }
        if (this.f7538a.f7544a != d.UnKnown) {
            long jA = this.f7540c.a() - this.f7539b;
            if (jA < 3600000) {
                com.roblox.client.ae.k.c("UpgradeCheckHelper", "Skip upgrade check because it was completed not long ago: " + jA + " ms.");
                if (bVar != null) {
                    bVar.b(this.f7538a);
                    return;
                }
                return;
            }
        }
        this.f7538a.f7544a = d.UnKnown;
        com.roblox.client.ae.k.b("UpgradeCheckHelper", "Perform upgrade check with the server...");
        com.roblox.client.http.c cVarA = com.roblox.client.http.g.a().a(u.Q(), null, new com.roblox.client.http.l() { // from class: com.roblox.client.w.1
            @Override // com.roblox.client.http.l
            public void b(com.roblox.client.http.j jVar) {
            }

            @Override // com.roblox.client.http.l
            public void a(com.roblox.client.http.j jVar) {
                w.this.a(jVar);
                b bVar3 = bVar;
                if (bVar3 != null) {
                    bVar3.a(w.this.f7538a);
                }
            }
        });
        cVarA.a(new com.roblox.client.http.a.b());
        cVarA.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.http.j jVar) {
        try {
            JSONObject jSONObject = new JSONObject(jVar.a());
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            if (jSONObject2 == null) {
                return;
            }
            String string = jSONObject2.getString("UpgradeAction");
            byte b2 = -1;
            int iHashCode = string.hashCode();
            if (iHashCode != -1189181893) {
                if (iHashCode == -328495169 && string.equals("Required")) {
                    b2 = 0;
                }
            } else if (string.equals("Recommended")) {
                b2 = 1;
            }
            if (b2 == 0) {
                this.f7538a.f7544a = d.Required;
            } else if (b2 == 1) {
                this.f7538a.f7544a = d.Recommended;
            } else {
                this.f7538a.f7544a = d.NotRequired;
            }
            this.f7538a.f7545b = jSONObject.optString("upgradeSource", "");
            this.f7538a.f7546c = jSONObject.optString("MD5Sum", "");
            this.f7539b = this.f7540c.a();
        } catch (Exception e2) {
            com.roblox.client.ae.k.d("UpgradeCheckHelper", "evaluateResponse: Exception caught: " + e2);
        }
    }
}
