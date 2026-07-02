package d;

import b.ab;
import b.ac;
import b.u;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class h<T> implements d.b<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n<T> f8095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f8096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f8097c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b.e f8098d;
    private Throwable e;
    private boolean f;

    h(n<T> nVar, Object[] objArr) {
        this.f8095a = nVar;
        this.f8096b = objArr;
    }

    @Override // d.b
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public h<T> clone() {
        return new h<>(this.f8095a, this.f8096b);
    }

    @Override // d.b
    public void a(final d<T> dVar) {
        Throwable th;
        b.e eVarE;
        if (dVar == null) {
            throw new NullPointerException("callback == null");
        }
        synchronized (this) {
            if (this.f) {
                throw new IllegalStateException("Already executed.");
            }
            this.f = true;
            b.e eVar = this.f8098d;
            th = this.e;
            if (eVar == null && th == null) {
                try {
                    eVarE = e();
                    this.f8098d = eVarE;
                } catch (Throwable th2) {
                    th = th2;
                    this.e = th;
                    eVarE = eVar;
                }
            } else {
                eVarE = eVar;
            }
        }
        if (th != null) {
            dVar.a(this, th);
            return;
        }
        if (this.f8097c) {
            eVarE.b();
        }
        eVarE.a(new b.f() { // from class: d.h.1
            @Override // b.f
            public void a(b.e eVar2, ab abVar) throws IOException {
                try {
                    a(h.this.a(abVar));
                } catch (Throwable th3) {
                    a(th3);
                }
            }

            @Override // b.f
            public void a(b.e eVar2, IOException iOException) {
                try {
                    dVar.a(h.this, iOException);
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            }

            private void a(Throwable th3) {
                try {
                    dVar.a(h.this, th3);
                } catch (Throwable th4) {
                    th4.printStackTrace();
                }
            }

            private void a(l<T> lVar) {
                try {
                    dVar.a(h.this, lVar);
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            }
        });
    }

    @Override // d.b
    public l<T> a() throws IOException {
        b.e eVarE;
        synchronized (this) {
            if (this.f) {
                throw new IllegalStateException("Already executed.");
            }
            this.f = true;
            if (this.e != null) {
                if (this.e instanceof IOException) {
                    throw ((IOException) this.e);
                }
                throw ((RuntimeException) this.e);
            }
            eVarE = this.f8098d;
            if (eVarE == null) {
                try {
                    eVarE = e();
                    this.f8098d = eVarE;
                } catch (IOException | RuntimeException e) {
                    this.e = e;
                    throw e;
                }
            }
        }
        if (this.f8097c) {
            eVarE.b();
        }
        return a(eVarE.a());
    }

    private b.e e() throws IOException {
        b.e eVarA = this.f8095a.f8156c.a(this.f8095a.a(this.f8096b));
        if (eVarA == null) {
            throw new NullPointerException("Call.Factory returned null.");
        }
        return eVarA;
    }

    l<T> a(ab abVar) throws IOException {
        ac acVarG = abVar.g();
        ab abVarA = abVar.h().a(new b(acVarG.a(), acVarG.b())).a();
        int iB = abVarA.b();
        if (iB < 200 || iB >= 300) {
            try {
                return l.a(o.a(acVarG), abVarA);
            } finally {
                acVarG.close();
            }
        }
        if (iB == 204 || iB == 205) {
            return l.a((Object) null, abVarA);
        }
        a aVar = new a(acVarG);
        try {
            return l.a(this.f8095a.a(aVar), abVarA);
        } catch (RuntimeException e) {
            aVar.h();
            throw e;
        }
    }

    @Override // d.b
    public boolean b() {
        return this.f8097c;
    }

    static final class b extends ac {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final u f8104a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f8105b;

        b(u uVar, long j) {
            this.f8104a = uVar;
            this.f8105b = j;
        }

        @Override // b.ac
        public u a() {
            return this.f8104a;
        }

        @Override // b.ac
        public long b() {
            return this.f8105b;
        }

        @Override // b.ac
        public c.e d() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    static final class a extends ac {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        IOException f8101a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ac f8102b;

        a(ac acVar) {
            this.f8102b = acVar;
        }

        @Override // b.ac
        public u a() {
            return this.f8102b.a();
        }

        @Override // b.ac
        public long b() {
            return this.f8102b.b();
        }

        @Override // b.ac
        public c.e d() {
            return c.l.a(new c.h(this.f8102b.d()) { // from class: d.h.a.1
                @Override // c.h, c.s
                public long a(c.c cVar, long j) throws IOException {
                    try {
                        return super.a(cVar, j);
                    } catch (IOException e) {
                        a.this.f8101a = e;
                        throw e;
                    }
                }
            });
        }

        @Override // b.ac, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f8102b.close();
        }

        void h() throws IOException {
            if (this.f8101a != null) {
                throw this.f8101a;
            }
        }
    }
}
