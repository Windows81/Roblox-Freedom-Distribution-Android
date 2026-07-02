package b.a.d;

import b.ab;
import b.s;
import b.t;
import b.z;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class i implements t.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<t> f1933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b.a.b.g f1934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h f1935c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b.i f1936d;
    private final int e;
    private final z f;
    private int g;

    public i(List<t> list, b.a.b.g gVar, h hVar, b.i iVar, int i, z zVar) {
        this.f1933a = list;
        this.f1936d = iVar;
        this.f1934b = gVar;
        this.f1935c = hVar;
        this.e = i;
        this.f = zVar;
    }

    @Override // b.t.a
    public b.i b() {
        return this.f1936d;
    }

    public b.a.b.g c() {
        return this.f1934b;
    }

    public h d() {
        return this.f1935c;
    }

    @Override // b.t.a
    public z a() {
        return this.f;
    }

    @Override // b.t.a
    public ab a(z zVar) throws IOException {
        return a(zVar, this.f1934b, this.f1935c, this.f1936d);
    }

    public ab a(z zVar, b.a.b.g gVar, h hVar, b.i iVar) throws IOException {
        if (this.e >= this.f1933a.size()) {
            throw new AssertionError();
        }
        this.g++;
        if (this.f1935c != null && !a(zVar.a())) {
            throw new IllegalStateException("network interceptor " + this.f1933a.get(this.e - 1) + " must retain the same host and port");
        }
        if (this.f1935c != null && this.g > 1) {
            throw new IllegalStateException("network interceptor " + this.f1933a.get(this.e - 1) + " must call proceed() exactly once");
        }
        i iVar2 = new i(this.f1933a, gVar, hVar, iVar, this.e + 1, zVar);
        t tVar = this.f1933a.get(this.e);
        ab abVarA = tVar.a(iVar2);
        if (hVar != null && this.e + 1 < this.f1933a.size() && iVar2.g != 1) {
            throw new IllegalStateException("network interceptor " + tVar + " must call proceed() exactly once");
        }
        if (abVarA == null) {
            throw new NullPointerException("interceptor " + tVar + " returned null");
        }
        return abVarA;
    }

    private boolean a(s sVar) {
        return sVar.f().equals(this.f1936d.a().a().a().f()) && sVar.g() == this.f1936d.a().a().a().g();
    }
}
