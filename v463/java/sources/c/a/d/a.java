package c.a.d;

import c.aa;
import c.ab;
import c.ac;
import c.s;
import c.u;
import c.v;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c.m f2631a;

    public a(c.m mVar) {
        this.f2631a = mVar;
    }

    @Override // c.u
    public ac a(u.a aVar) throws IOException {
        aa aaVarA = aVar.a();
        aa.a aVarE = aaVarA.e();
        ab abVarD = aaVarA.d();
        if (abVarD != null) {
            v vVarA = abVarD.a();
            if (vVarA != null) {
                aVarE.a("Content-Type", vVarA.toString());
            }
            long jB = abVarD.b();
            if (jB != -1) {
                aVarE.a("Content-Length", Long.toString(jB));
                aVarE.b("Transfer-Encoding");
            } else {
                aVarE.a("Transfer-Encoding", "chunked");
                aVarE.b("Content-Length");
            }
        }
        boolean z = false;
        if (aaVarA.a("Host") == null) {
            aVarE.a("Host", c.a.c.a(aaVarA.a(), false));
        }
        if (aaVarA.a("Connection") == null) {
            aVarE.a("Connection", "Keep-Alive");
        }
        if (aaVarA.a("Accept-Encoding") == null) {
            z = true;
            aVarE.a("Accept-Encoding", "gzip");
        }
        List<c.l> listA = this.f2631a.a(aaVarA.a());
        if (!listA.isEmpty()) {
            aVarE.a("Cookie", a(listA));
        }
        if (aaVarA.a("User-Agent") == null) {
            aVarE.a("User-Agent", c.a.d.a());
        }
        ac acVarA = aVar.a(aVarE.a());
        f.a(this.f2631a, aaVarA.a(), acVarA.f());
        ac.a aVarA = acVarA.h().a(aaVarA);
        if (z && "gzip".equalsIgnoreCase(acVarA.a("Content-Encoding")) && f.b(acVarA)) {
            d.j jVar = new d.j(acVarA.g().d());
            s sVarA = acVarA.f().b().b("Content-Encoding").b("Content-Length").a();
            aVarA.a(sVarA);
            aVarA.a(new j(sVarA, d.l.a(jVar)));
        }
        return aVarA.a();
    }

    private String a(List<c.l> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append("; ");
            }
            c.l lVar = list.get(i);
            sb.append(lVar.a());
            sb.append('=');
            sb.append(lVar.b());
        }
        return sb.toString();
    }
}
