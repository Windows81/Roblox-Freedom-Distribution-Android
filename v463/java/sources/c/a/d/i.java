package c.a.d;

import c.aa;
import c.ac;
import c.t;
import c.u;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class i implements u.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<u> f2663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c.a.b.g f2664b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h f2665c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c.i f2666d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f2667e;
    private final aa f;
    private int g;

    public i(List<u> list, c.a.b.g gVar, h hVar, c.i iVar, int i, aa aaVar) {
        this.f2663a = list;
        this.f2666d = iVar;
        this.f2664b = gVar;
        this.f2665c = hVar;
        this.f2667e = i;
        this.f = aaVar;
    }

    @Override // c.u.a
    public c.i b() {
        return this.f2666d;
    }

    public c.a.b.g c() {
        return this.f2664b;
    }

    public h d() {
        return this.f2665c;
    }

    @Override // c.u.a
    public aa a() {
        return this.f;
    }

    @Override // c.u.a
    public ac a(aa aaVar) throws IOException {
        return a(aaVar, this.f2664b, this.f2665c, this.f2666d);
    }

    public ac a(aa aaVar, c.a.b.g gVar, h hVar, c.i iVar) throws IOException {
        if (this.f2667e >= this.f2663a.size()) {
            throw new AssertionError();
        }
        this.g++;
        if (this.f2665c != null && !a(aaVar.a())) {
            throw new IllegalStateException("network interceptor " + this.f2663a.get(this.f2667e - 1) + " must retain the same host and port");
        }
        if (this.f2665c != null && this.g > 1) {
            throw new IllegalStateException("network interceptor " + this.f2663a.get(this.f2667e - 1) + " must call proceed() exactly once");
        }
        i iVar2 = new i(this.f2663a, gVar, hVar, iVar, this.f2667e + 1, aaVar);
        u uVar = this.f2663a.get(this.f2667e);
        ac acVarA = uVar.a(iVar2);
        if (hVar != null && this.f2667e + 1 < this.f2663a.size() && iVar2.g != 1) {
            throw new IllegalStateException("network interceptor " + uVar + " must call proceed() exactly once");
        }
        if (acVarA != null) {
            return acVarA;
        }
        throw new NullPointerException("interceptor " + uVar + " returned null");
    }

    private boolean a(t tVar) {
        return tVar.f().equals(this.f2666d.a().a().a().f()) && tVar.g() == this.f2666d.a().a().a().g();
    }
}
