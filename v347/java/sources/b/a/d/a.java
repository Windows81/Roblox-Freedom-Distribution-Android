package b.a.d;

import b.aa;
import b.ab;
import b.r;
import b.t;
import b.u;
import b.z;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b.m f1906a;

    public a(b.m mVar) {
        this.f1906a = mVar;
    }

    @Override // b.t
    public ab a(t.a aVar) throws IOException {
        boolean z = false;
        z zVarA = aVar.a();
        z.a aVarE = zVarA.e();
        aa aaVarD = zVarA.d();
        if (aaVarD != null) {
            u uVarA = aaVarD.a();
            if (uVarA != null) {
                aVarE.a("Content-Type", uVarA.toString());
            }
            long jB = aaVarD.b();
            if (jB != -1) {
                aVarE.a("Content-Length", Long.toString(jB));
                aVarE.b("Transfer-Encoding");
            } else {
                aVarE.a("Transfer-Encoding", "chunked");
                aVarE.b("Content-Length");
            }
        }
        if (zVarA.a("Host") == null) {
            aVarE.a("Host", b.a.c.a(zVarA.a(), false));
        }
        if (zVarA.a("Connection") == null) {
            aVarE.a("Connection", "Keep-Alive");
        }
        if (zVarA.a("Accept-Encoding") == null) {
            z = true;
            aVarE.a("Accept-Encoding", "gzip");
        }
        List<b.l> listA = this.f1906a.a(zVarA.a());
        if (!listA.isEmpty()) {
            aVarE.a("Cookie", a(listA));
        }
        if (zVarA.a("User-Agent") == null) {
            aVarE.a("User-Agent", b.a.d.a());
        }
        ab abVarA = aVar.a(aVarE.a());
        f.a(this.f1906a, zVarA.a(), abVarA.f());
        ab.a aVarA = abVarA.h().a(zVarA);
        if (z && "gzip".equalsIgnoreCase(abVarA.a("Content-Encoding")) && f.b(abVarA)) {
            c.j jVar = new c.j(abVarA.g().d());
            r rVarA = abVarA.f().b().b("Content-Encoding").b("Content-Length").a();
            aVarA.a(rVarA);
            aVarA.a(new j(rVarA, c.l.a(jVar)));
        }
        return aVarA.a();
    }

    private String a(List<b.l> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append("; ");
            }
            b.l lVar = list.get(i);
            sb.append(lVar.a()).append('=').append(lVar.b());
        }
        return sb.toString();
    }
}
