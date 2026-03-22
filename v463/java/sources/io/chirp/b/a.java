package io.chirp.b;

import c.aa;
import c.ab;
import c.ac;
import c.n;
import c.t;
import c.u;
import c.v;
import c.x;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v f7947a = v.a("application/json; charset=utf-8");

    /* JADX INFO: renamed from: io.chirp.b.a$a, reason: collision with other inner class name */
    private class C0191a implements u {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f7949b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f7950c;

        public C0191a(String str, String str2) {
            this.f7949b = str;
            this.f7950c = str2;
        }

        @Override // c.u
        public ac a(u.a aVar) {
            String strA = n.a(this.f7949b, this.f7950c);
            aa.a aVarE = aVar.a().e();
            aVarE.a("Authorization", strA);
            return aVar.a(aVarE.a());
        }
    }

    private static ac a(x xVar, aa aaVar) throws b, IOException {
        ac acVarB = xVar.a(aaVar).b();
        if (acVarB.c()) {
            return acVarB;
        }
        if (acVarB.b() == 403 || acVarB.b() == 401 || acVarB.b() == 400) {
            throw new b("ChirpNetwork invalid credentials.", 42);
        }
        if (acVarB.b() == 402) {
            if (acVarB.a("X-Chirp-API").equals("3")) {
                throw new b("Your account has been disabled due to an unpaid license. Please contact sales@chirp.io.", 110);
            }
            throw new b("Network error.", 105);
        }
        if (acVarB.b() == 404) {
            throw new b("ChirpNetwork missing config.", 45);
        }
        if (acVarB.b() >= 500) {
            throw new b("Network error.", 105);
        }
        throw new b("Couldn't reach the server, please check your network connection.", 106);
    }

    private x b(String str, String str2) {
        return new x.a().a(new C0191a(str, str2)).b(30L, TimeUnit.SECONDS).a();
    }

    public t a(String str, String str2) {
        return new t.a().a("https").b(str).c(str2).c();
    }

    public String a(String str, String str2, String str3) {
        return a(b(str, str2), new aa.a().a(a("config.chirp.io", "v3/" + str3)).a()).g().g();
    }

    public void a(String str, String str2, String str3, String str4, String str5) throws b, IOException {
        a(b(str, str2), new aa.a().a(a("analytics.chirp.io", "/v3/" + str3 + "/" + str4)).a(ab.a(this.f7947a, str5)).a());
    }

    public String b(String str, String str2, String str3) throws b, IOException {
        ac acVarA = a(b(str, str2), new aa.a().a(a("auth.chirp.io", "v3/" + str3)).a());
        String strA = acVarA.a("X-Chirp-API");
        if (strA == null || !strA.equals("3")) {
            throw new b("Couldn't reach the server, please check your network connection.", 106);
        }
        return acVarA.g().g();
    }
}
