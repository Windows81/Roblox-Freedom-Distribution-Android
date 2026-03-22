package e;

import c.aa;
import c.ac;
import c.ad;
import c.v;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class h<T> implements e.b<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n<T> f7841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f7842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f7843c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c.e f7844d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Throwable f7845e;
    private boolean f;

    h(n<T> nVar, Object[] objArr) {
        this.f7841a = nVar;
        this.f7842b = objArr;
    }

    @Override // e.b
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public h<T> clone() {
        return new h<>(this.f7841a, this.f7842b);
    }

    @Override // e.b
    public synchronized aa d() {
        c.e eVar = this.f7844d;
        if (eVar != null) {
            return eVar.a();
        }
        if (this.f7845e != null) {
            if (this.f7845e instanceof IOException) {
                throw new RuntimeException("Unable to create request.", this.f7845e);
            }
            throw ((RuntimeException) this.f7845e);
        }
        try {
            c.e eVarF = f();
            this.f7844d = eVarF;
            return eVarF.a();
        } catch (IOException e2) {
            this.f7845e = e2;
            throw new RuntimeException("Unable to create request.", e2);
        } catch (RuntimeException e3) {
            this.f7845e = e3;
            throw e3;
        }
    }

    @Override // e.b
    public void a(final d<T> dVar) {
        c.e eVar;
        Throwable th;
        if (dVar == null) {
            throw new NullPointerException("callback == null");
        }
        synchronized (this) {
            if (this.f) {
                throw new IllegalStateException("Already executed.");
            }
            this.f = true;
            eVar = this.f7844d;
            th = this.f7845e;
            if (eVar == null && th == null) {
                try {
                    c.e eVarF = f();
                    this.f7844d = eVarF;
                    eVar = eVarF;
                } catch (Throwable th2) {
                    th = th2;
                    this.f7845e = th;
                }
            }
        }
        if (th != null) {
            dVar.a(this, th);
            return;
        }
        if (this.f7843c) {
            eVar.c();
        }
        eVar.a(new c.f() { // from class: e.h.1
            @Override // c.f
            public void a(c.e eVar2, ac acVar) throws IOException {
                try {
                    a(h.this.a(acVar));
                } catch (Throwable th3) {
                    a(th3);
                }
            }

            @Override // c.f
            public void a(c.e eVar2, IOException iOException) {
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

    @Override // e.b
    public l<T> a() throws IOException {
        c.e eVarF;
        synchronized (this) {
            if (this.f) {
                throw new IllegalStateException("Already executed.");
            }
            this.f = true;
            if (this.f7845e != null) {
                if (this.f7845e instanceof IOException) {
                    throw ((IOException) this.f7845e);
                }
                throw ((RuntimeException) this.f7845e);
            }
            eVarF = this.f7844d;
            if (eVarF == null) {
                try {
                    eVarF = f();
                    this.f7844d = eVarF;
                } catch (IOException | RuntimeException e2) {
                    this.f7845e = e2;
                    throw e2;
                }
            }
        }
        if (this.f7843c) {
            eVarF.c();
        }
        return a(eVarF.b());
    }

    private c.e f() throws IOException {
        c.e eVarA = this.f7841a.f7906c.a(this.f7841a.a(this.f7842b));
        if (eVarA != null) {
            return eVarA;
        }
        throw new NullPointerException("Call.Factory returned null.");
    }

    l<T> a(ac acVar) throws IOException {
        ad adVarG = acVar.g();
        ac acVarA = acVar.h().a(new b(adVarG.a(), adVarG.b())).a();
        int iB = acVarA.b();
        if (iB < 200 || iB >= 300) {
            try {
                return l.a(o.a(adVarG), acVarA);
            } finally {
                adVarG.close();
            }
        }
        if (iB == 204 || iB == 205) {
            return l.a((Object) null, acVarA);
        }
        a aVar = new a(adVarG);
        try {
            return l.a(this.f7841a.a(aVar), acVarA);
        } catch (RuntimeException e2) {
            aVar.h();
            throw e2;
        }
    }

    @Override // e.b
    public boolean b() {
        return this.f7843c;
    }

    static final class b extends ad {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final v f7851a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f7852b;

        b(v vVar, long j) {
            this.f7851a = vVar;
            this.f7852b = j;
        }

        @Override // c.ad
        public v a() {
            return this.f7851a;
        }

        @Override // c.ad
        public long b() {
            return this.f7852b;
        }

        @Override // c.ad
        public d.e d() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    static final class a extends ad {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        IOException f7848a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ad f7849b;

        a(ad adVar) {
            this.f7849b = adVar;
        }

        @Override // c.ad
        public v a() {
            return this.f7849b.a();
        }

        @Override // c.ad
        public long b() {
            return this.f7849b.b();
        }

        @Override // c.ad
        public d.e d() {
            return d.l.a(new d.h(this.f7849b.d()) { // from class: e.h.a.1
                @Override // d.h, d.s
                public long a(d.c cVar, long j) throws IOException {
                    try {
                        return super.a(cVar, j);
                    } catch (IOException e2) {
                        a.this.f7848a = e2;
                        throw e2;
                    }
                }
            });
        }

        @Override // c.ad, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f7849b.close();
        }

        void h() throws IOException {
            IOException iOException = this.f7848a;
            if (iOException != null) {
                throw iOException;
            }
        }
    }
}
