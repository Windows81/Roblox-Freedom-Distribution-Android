package c.a.a;

import c.a.a.c;
import c.a.d.f;
import c.a.d.g;
import c.a.d.j;
import c.aa;
import c.ac;
import c.ad;
import c.s;
import c.u;
import c.v;
import c.y;
import d.l;
import d.r;
import d.s;
import d.t;
import java.io.IOException;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a implements u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ad f2439b = new ad() { // from class: c.a.a.a.1
        @Override // c.ad
        public v a() {
            return null;
        }

        @Override // c.ad
        public long b() {
            return 0L;
        }

        @Override // c.ad
        public d.e d() {
            return new d.c();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final e f2440a;

    public a(e eVar) {
        this.f2440a = eVar;
    }

    @Override // c.u
    public ac a(u.a aVar) throws IOException {
        e eVar = this.f2440a;
        ac acVarA = eVar != null ? eVar.a(aVar.a()) : null;
        c cVarA = new c.a(System.currentTimeMillis(), aVar.a(), acVarA).a();
        aa aaVar = cVarA.f2446a;
        ac acVar = cVarA.f2447b;
        e eVar2 = this.f2440a;
        if (eVar2 != null) {
            eVar2.a(cVarA);
        }
        if (acVarA != null && acVar == null) {
            c.a.c.a(acVarA.g());
        }
        if (aaVar == null && acVar == null) {
            return new ac.a().a(aVar.a()).a(y.HTTP_1_1).a(504).a("Unsatisfiable Request (only-if-cached)").a(f2439b).a(-1L).b(System.currentTimeMillis()).a();
        }
        if (aaVar == null) {
            return acVar.h().b(a(acVar)).a();
        }
        try {
            ac acVarA2 = aVar.a(aaVar);
            if (acVarA2 == null && acVarA != null) {
            }
            if (acVar != null) {
                if (a(acVar, acVarA2)) {
                    ac acVarA3 = acVar.h().a(a(acVar.f(), acVarA2.f())).b(a(acVar)).a(a(acVarA2)).a();
                    acVarA2.g().close();
                    this.f2440a.a();
                    this.f2440a.a(acVar, acVarA3);
                    return acVarA3;
                }
                c.a.c.a(acVar.g());
            }
            ac acVarA4 = acVarA2.h().b(a(acVar)).a(a(acVarA2)).a();
            return f.b(acVarA4) ? a(a(acVarA4, acVarA2.a(), this.f2440a), acVarA4) : acVarA4;
        } finally {
            if (acVarA != null) {
                c.a.c.a(acVarA.g());
            }
        }
    }

    private static ac a(ac acVar) {
        return (acVar == null || acVar.g() == null) ? acVar : acVar.h().a((ad) null).a();
    }

    private b a(ac acVar, aa aaVar, e eVar) throws IOException {
        if (eVar == null) {
            return null;
        }
        if (!c.a(acVar, aaVar)) {
            if (g.a(aaVar.b())) {
                try {
                    eVar.b(aaVar);
                } catch (IOException unused) {
                }
            }
            return null;
        }
        return eVar.a(acVar);
    }

    private ac a(final b bVar, ac acVar) throws IOException {
        r rVarA;
        if (bVar == null || (rVarA = bVar.a()) == null) {
            return acVar;
        }
        final d.e eVarD = acVar.g().d();
        final d.d dVarA = l.a(rVarA);
        return acVar.h().a(new j(acVar.f(), l.a(new s() { // from class: c.a.a.a.2

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            boolean f2441a;

            @Override // d.s
            public long a(d.c cVar, long j) throws IOException {
                try {
                    long jA = eVarD.a(cVar, j);
                    if (jA == -1) {
                        if (!this.f2441a) {
                            this.f2441a = true;
                            dVarA.close();
                        }
                        return -1L;
                    }
                    cVar.a(dVarA.c(), cVar.b() - jA, jA);
                    dVarA.w();
                    return jA;
                } catch (IOException e2) {
                    if (!this.f2441a) {
                        this.f2441a = true;
                        bVar.b();
                    }
                    throw e2;
                }
            }

            @Override // d.s
            public t a() {
                return eVarD.a();
            }

            @Override // d.s, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                if (!this.f2441a && !c.a.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                    this.f2441a = true;
                    bVar.b();
                }
                eVarD.close();
            }
        }))).a();
    }

    private static boolean a(ac acVar, ac acVar2) {
        Date dateB;
        if (acVar2.b() == 304) {
            return true;
        }
        Date dateB2 = acVar.f().b("Last-Modified");
        return (dateB2 == null || (dateB = acVar2.f().b("Last-Modified")) == null || dateB.getTime() >= dateB2.getTime()) ? false : true;
    }

    private static c.s a(c.s sVar, c.s sVar2) {
        s.a aVar = new s.a();
        int iA = sVar.a();
        for (int i = 0; i < iA; i++) {
            String strA = sVar.a(i);
            String strB = sVar.b(i);
            if ((!"Warning".equalsIgnoreCase(strA) || !strB.startsWith("1")) && (!a(strA) || sVar2.a(strA) == null)) {
                c.a.a.f2438a.a(aVar, strA, strB);
            }
        }
        int iA2 = sVar2.a();
        for (int i2 = 0; i2 < iA2; i2++) {
            String strA2 = sVar2.a(i2);
            if (!"Content-Length".equalsIgnoreCase(strA2) && a(strA2)) {
                c.a.a.f2438a.a(aVar, strA2, sVar2.b(i2));
            }
        }
        return aVar.a();
    }

    static boolean a(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }
}
