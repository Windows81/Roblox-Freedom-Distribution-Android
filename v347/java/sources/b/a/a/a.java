package b.a.a;

import b.a.a.c;
import b.a.d.f;
import b.a.d.g;
import b.a.d.j;
import b.ab;
import b.ac;
import b.r;
import b.t;
import b.u;
import b.x;
import b.z;
import c.l;
import c.r;
import c.s;
import java.io.IOException;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class a implements t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ac f1738b = new ac() { // from class: b.a.a.a.1
        @Override // b.ac
        public u a() {
            return null;
        }

        @Override // b.ac
        public long b() {
            return 0L;
        }

        @Override // b.ac
        public c.e d() {
            return new c.c();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final e f1739a;

    public a(e eVar) {
        this.f1739a = eVar;
    }

    @Override // b.t
    public ab a(t.a aVar) throws IOException {
        ab abVarA = this.f1739a != null ? this.f1739a.a(aVar.a()) : null;
        c cVarA = new c.a(System.currentTimeMillis(), aVar.a(), abVarA).a();
        z zVar = cVarA.f1744a;
        ab abVar = cVarA.f1745b;
        if (this.f1739a != null) {
            this.f1739a.a(cVarA);
        }
        if (abVarA != null && abVar == null) {
            b.a.c.a(abVarA.g());
        }
        if (zVar == null && abVar == null) {
            return new ab.a().a(aVar.a()).a(x.HTTP_1_1).a(504).a("Unsatisfiable Request (only-if-cached)").a(f1738b).a(-1L).b(System.currentTimeMillis()).a();
        }
        if (zVar == null) {
            return abVar.h().b(a(abVar)).a();
        }
        try {
            ab abVarA2 = aVar.a(zVar);
            if (abVarA2 == null && abVarA != null) {
                b.a.c.a(abVarA.g());
            }
            if (abVar != null) {
                if (a(abVar, abVarA2)) {
                    ab abVarA3 = abVar.h().a(a(abVar.f(), abVarA2.f())).b(a(abVar)).a(a(abVarA2)).a();
                    abVarA2.g().close();
                    this.f1739a.a();
                    this.f1739a.a(abVar, abVarA3);
                    return abVarA3;
                }
                b.a.c.a(abVar.g());
            }
            ab abVarA4 = abVarA2.h().b(a(abVar)).a(a(abVarA2)).a();
            if (f.b(abVarA4)) {
                return a(a(abVarA4, abVarA2.a(), this.f1739a), abVarA4);
            }
            return abVarA4;
        } catch (Throwable th) {
            if (0 == 0 && abVarA != null) {
                b.a.c.a(abVarA.g());
            }
            throw th;
        }
    }

    private static ab a(ab abVar) {
        if (abVar == null || abVar.g() == null) {
            return abVar;
        }
        return abVar.h().a((ac) null).a();
    }

    private b a(ab abVar, z zVar, e eVar) throws IOException {
        if (eVar == null) {
            return null;
        }
        if (!c.a(abVar, zVar)) {
            if (!g.a(zVar.b())) {
                return null;
            }
            try {
                eVar.b(zVar);
                return null;
            } catch (IOException e) {
                return null;
            }
        }
        return eVar.a(abVar);
    }

    private ab a(final b bVar, ab abVar) throws IOException {
        r rVarA;
        if (bVar != null && (rVarA = bVar.a()) != null) {
            final c.e eVarD = abVar.g().d();
            final c.d dVarA = l.a(rVarA);
            return abVar.h().a(new j(abVar.f(), l.a(new s() { // from class: b.a.a.a.2

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                boolean f1740a;

                @Override // c.s
                public long a(c.c cVar, long j) throws IOException {
                    try {
                        long jA = eVarD.a(cVar, j);
                        if (jA == -1) {
                            if (!this.f1740a) {
                                this.f1740a = true;
                                dVarA.close();
                            }
                            return -1L;
                        }
                        cVar.a(dVarA.c(), cVar.b() - jA, jA);
                        dVarA.w();
                        return jA;
                    } catch (IOException e) {
                        if (!this.f1740a) {
                            this.f1740a = true;
                            bVar.b();
                        }
                        throw e;
                    }
                }

                @Override // c.s
                public c.t a() {
                    return eVarD.a();
                }

                @Override // c.s, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    if (!this.f1740a && !b.a.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                        this.f1740a = true;
                        bVar.b();
                    }
                    eVarD.close();
                }
            }))).a();
        }
        return abVar;
    }

    private static boolean a(ab abVar, ab abVar2) {
        Date dateB;
        if (abVar2.b() == 304) {
            return true;
        }
        Date dateB2 = abVar.f().b("Last-Modified");
        return (dateB2 == null || (dateB = abVar2.f().b("Last-Modified")) == null || dateB.getTime() >= dateB2.getTime()) ? false : true;
    }

    private static b.r a(b.r rVar, b.r rVar2) {
        r.a aVar = new r.a();
        int iA = rVar.a();
        for (int i = 0; i < iA; i++) {
            String strA = rVar.a(i);
            String strB = rVar.b(i);
            if ((!"Warning".equalsIgnoreCase(strA) || !strB.startsWith("1")) && (!a(strA) || rVar2.a(strA) == null)) {
                b.a.a.f1737a.a(aVar, strA, strB);
            }
        }
        int iA2 = rVar2.a();
        for (int i2 = 0; i2 < iA2; i2++) {
            String strA2 = rVar2.a(i2);
            if (!"Content-Length".equalsIgnoreCase(strA2) && a(strA2)) {
                b.a.a.f1737a.a(aVar, strA2, rVar2.b(i2));
            }
        }
        return aVar.a();
    }

    static boolean a(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }
}
