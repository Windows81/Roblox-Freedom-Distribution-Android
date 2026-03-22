package c.a.d;

import c.aa;
import c.ac;
import c.u;
import java.io.IOException;
import java.net.ProtocolException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class b implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f2632a;

    public b(boolean z) {
        this.f2632a = z;
    }

    @Override // c.u
    public ac a(u.a aVar) throws IOException {
        i iVar = (i) aVar;
        h hVarD = iVar.d();
        c.a.b.g gVarC = iVar.c();
        aa aaVarA = aVar.a();
        long jCurrentTimeMillis = System.currentTimeMillis();
        hVarD.a(aaVarA);
        if (g.c(aaVarA.b()) && aaVarA.d() != null) {
            d.d dVarA = d.l.a(hVarD.a(aaVarA, aaVarA.d().b()));
            aaVarA.d().a(dVarA);
            dVarA.close();
        }
        hVarD.c();
        ac acVarA = hVarD.b().a(aaVarA).a(gVarC.b().e()).a(jCurrentTimeMillis).b(System.currentTimeMillis()).a();
        if (!this.f2632a || acVarA.b() != 101) {
            acVarA = acVarA.h().a(hVarD.a(acVarA)).a();
        }
        if ("close".equalsIgnoreCase(acVarA.a().a("Connection")) || "close".equalsIgnoreCase(acVarA.a("Connection"))) {
            gVarC.d();
        }
        int iB = acVarA.b();
        if ((iB != 204 && iB != 205) || acVarA.g().b() <= 0) {
            return acVarA;
        }
        throw new ProtocolException("HTTP " + iB + " had non-zero Content-Length: " + acVarA.g().b());
    }
}
