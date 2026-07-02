package b;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class v extends aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u f2083a = u.a("multipart/mixed");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final u f2084b = u.a("multipart/alternative");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final u f2085c = u.a("multipart/digest");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final u f2086d = u.a("multipart/parallel");
    public static final u e = u.a("multipart/form-data");
    private static final byte[] f = {58, 32};
    private static final byte[] g = {13, 10};
    private static final byte[] h = {45, 45};
    private final c.f i;
    private final u j;
    private final u k;
    private final List<b> l;
    private long m = -1;

    v(c.f fVar, u uVar, List<b> list) {
        this.i = fVar;
        this.j = uVar;
        this.k = u.a(uVar + "; boundary=" + fVar.a());
        this.l = b.a.c.a(list);
    }

    @Override // b.aa
    public u a() {
        return this.k;
    }

    @Override // b.aa
    public long b() throws IOException {
        long j = this.m;
        if (j != -1) {
            return j;
        }
        long jA = a((c.d) null, true);
        this.m = jA;
        return jA;
    }

    @Override // b.aa
    public void a(c.d dVar) throws IOException {
        a(dVar, false);
    }

    private long a(c.d dVar, boolean z) throws IOException {
        c.c cVar;
        long j = 0;
        if (!z) {
            cVar = null;
        } else {
            c.c cVar2 = new c.c();
            cVar = cVar2;
            dVar = cVar2;
        }
        int size = this.l.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.l.get(i);
            r rVar = bVar.f2090a;
            aa aaVar = bVar.f2091b;
            dVar.c(h);
            dVar.b(this.i);
            dVar.c(g);
            if (rVar != null) {
                int iA = rVar.a();
                for (int i2 = 0; i2 < iA; i2++) {
                    dVar.b(rVar.a(i2)).c(f).b(rVar.b(i2)).c(g);
                }
            }
            u uVarA = aaVar.a();
            if (uVarA != null) {
                dVar.b("Content-Type: ").b(uVarA.toString()).c(g);
            }
            long jB = aaVar.b();
            if (jB != -1) {
                dVar.b("Content-Length: ").l(jB).c(g);
            } else if (z) {
                cVar.t();
                return -1L;
            }
            dVar.c(g);
            if (z) {
                j += jB;
            } else {
                aaVar.a(dVar);
            }
            dVar.c(g);
        }
        dVar.c(h);
        dVar.b(this.i);
        dVar.c(h);
        dVar.c(g);
        if (z) {
            long jB2 = j + cVar.b();
            cVar.t();
            return jB2;
        }
        return j;
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final r f2090a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final aa f2091b;

        public static b a(r rVar, aa aaVar) {
            if (aaVar == null) {
                throw new NullPointerException("body == null");
            }
            if (rVar != null && rVar.a("Content-Type") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }
            if (rVar != null && rVar.a("Content-Length") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Length");
            }
            return new b(rVar, aaVar);
        }

        private b(r rVar, aa aaVar) {
            this.f2090a = rVar;
            this.f2091b = aaVar;
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c.f f2087a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private u f2088b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List<b> f2089c;

        public a() {
            this(UUID.randomUUID().toString());
        }

        public a(String str) {
            this.f2088b = v.f2083a;
            this.f2089c = new ArrayList();
            this.f2087a = c.f.a(str);
        }

        public a a(u uVar) {
            if (uVar == null) {
                throw new NullPointerException("type == null");
            }
            if (!uVar.a().equals("multipart")) {
                throw new IllegalArgumentException("multipart != " + uVar);
            }
            this.f2088b = uVar;
            return this;
        }

        public a a(r rVar, aa aaVar) {
            return a(b.a(rVar, aaVar));
        }

        public a a(b bVar) {
            if (bVar == null) {
                throw new NullPointerException("part == null");
            }
            this.f2089c.add(bVar);
            return this;
        }

        public v a() {
            if (this.f2089c.isEmpty()) {
                throw new IllegalStateException("Multipart body must have at least one part.");
            }
            return new v(this.f2087a, this.f2088b, this.f2089c);
        }
    }
}
