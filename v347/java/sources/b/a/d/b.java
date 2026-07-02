package b.a.d;

import b.ab;
import b.t;
import b.z;
import java.io.IOException;
import java.net.ProtocolException;

/* JADX INFO: loaded from: classes.dex */
public final class b implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f1907a;

    public b(boolean z) {
        this.f1907a = z;
    }

    @Override // b.t
    public ab a(t.a aVar) throws IOException {
        h hVarD = ((i) aVar).d();
        b.a.b.g gVarC = ((i) aVar).c();
        z zVarA = aVar.a();
        long jCurrentTimeMillis = System.currentTimeMillis();
        hVarD.a(zVarA);
        if (g.c(zVarA.b()) && zVarA.d() != null) {
            c.d dVarA = c.l.a(hVarD.a(zVarA, zVarA.d().b()));
            zVarA.d().a(dVarA);
            dVarA.close();
        }
        hVarD.c();
        ab abVarA = hVarD.b().a(zVarA).a(gVarC.b().e()).a(jCurrentTimeMillis).b(System.currentTimeMillis()).a();
        if (!this.f1907a || abVarA.b() != 101) {
            abVarA = abVarA.h().a(hVarD.a(abVarA)).a();
        }
        if ("close".equalsIgnoreCase(abVarA.a().a("Connection")) || "close".equalsIgnoreCase(abVarA.a("Connection"))) {
            gVarC.d();
        }
        int iB = abVarA.b();
        if ((iB == 204 || iB == 205) && abVarA.g().b() > 0) {
            throw new ProtocolException("HTTP " + iB + " had non-zero Content-Length: " + abVarA.g().b());
        }
        return abVarA;
    }
}
