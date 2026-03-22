package c;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class w extends ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v f2842a = v.a("multipart/mixed");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final v f2843b = v.a("multipart/alternative");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final v f2844c = v.a("multipart/digest");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final v f2845d = v.a("multipart/parallel");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final v f2846e = v.a("multipart/form-data");
    private static final byte[] f = {58, 32};
    private static final byte[] g = {13, 10};
    private static final byte[] h = {45, 45};
    private final d.f i;
    private final v j;
    private final v k;
    private final List<b> l;
    private long m = -1;

    w(d.f fVar, v vVar, List<b> list) {
        this.i = fVar;
        this.j = vVar;
        this.k = v.a(vVar + "; boundary=" + fVar.a());
        this.l = c.a.c.a(list);
    }

    @Override // c.ab
    public v a() {
        return this.k;
    }

    @Override // c.ab
    public long b() throws IOException {
        long j = this.m;
        if (j != -1) {
            return j;
        }
        long jA = a((d.d) null, true);
        this.m = jA;
        return jA;
    }

    @Override // c.ab
    public void a(d.d dVar) throws IOException {
        a(dVar, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long a(d.d dVar, boolean z) throws IOException {
        d.c cVar;
        if (z) {
            dVar = new d.c();
            cVar = dVar;
        } else {
            cVar = 0;
        }
        int size = this.l.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            b bVar = this.l.get(i);
            s sVar = bVar.f2850a;
            ab abVar = bVar.f2851b;
            dVar.c(h);
            dVar.b(this.i);
            dVar.c(g);
            if (sVar != null) {
                int iA = sVar.a();
                for (int i2 = 0; i2 < iA; i2++) {
                    dVar.b(sVar.a(i2)).c(f).b(sVar.b(i2)).c(g);
                }
            }
            v vVarA = abVar.a();
            if (vVarA != null) {
                dVar.b("Content-Type: ").b(vVarA.toString()).c(g);
            }
            long jB = abVar.b();
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
                abVar.a(dVar);
            }
            dVar.c(g);
        }
        dVar.c(h);
        dVar.b(this.i);
        dVar.c(h);
        dVar.c(g);
        if (!z) {
            return j;
        }
        long jB2 = j + cVar.b();
        cVar.t();
        return jB2;
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final s f2850a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ab f2851b;

        public static b a(s sVar, ab abVar) {
            if (abVar == null) {
                throw new NullPointerException("body == null");
            }
            if (sVar != null && sVar.a("Content-Type") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }
            if (sVar != null && sVar.a("Content-Length") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Length");
            }
            return new b(sVar, abVar);
        }

        private b(s sVar, ab abVar) {
            this.f2850a = sVar;
            this.f2851b = abVar;
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d.f f2847a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private v f2848b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List<b> f2849c;

        public a() {
            this(UUID.randomUUID().toString());
        }

        public a(String str) {
            this.f2848b = w.f2842a;
            this.f2849c = new ArrayList();
            this.f2847a = d.f.a(str);
        }

        public a a(v vVar) {
            if (vVar == null) {
                throw new NullPointerException("type == null");
            }
            if (!vVar.a().equals("multipart")) {
                throw new IllegalArgumentException("multipart != " + vVar);
            }
            this.f2848b = vVar;
            return this;
        }

        public a a(s sVar, ab abVar) {
            return a(b.a(sVar, abVar));
        }

        public a a(b bVar) {
            if (bVar == null) {
                throw new NullPointerException("part == null");
            }
            this.f2849c.add(bVar);
            return this;
        }

        public w a() {
            if (this.f2849c.isEmpty()) {
                throw new IllegalStateException("Multipart body must have at least one part.");
            }
            return new w(this.f2847a, this.f2848b, this.f2849c);
        }
    }
}
