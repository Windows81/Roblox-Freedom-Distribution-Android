package b.a.d;

import b.ab;
import b.ac;
import b.r;
import b.w;
import b.z;
import c.r;
import c.s;
import c.t;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class c implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final w f1908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b.a.b.g f1909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c.e f1910c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c.d f1911d;
    private int e = 0;

    public c(w wVar, b.a.b.g gVar, c.e eVar, c.d dVar) {
        this.f1908a = wVar;
        this.f1909b = gVar;
        this.f1910c = eVar;
        this.f1911d = dVar;
    }

    @Override // b.a.d.h
    public r a(z zVar, long j) {
        if ("chunked".equalsIgnoreCase(zVar.a("Transfer-Encoding"))) {
            return f();
        }
        if (j != -1) {
            return a(j);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // b.a.d.h
    public void a() {
        b.a.b.c cVarB = this.f1909b.b();
        if (cVarB != null) {
            cVarB.c();
        }
    }

    @Override // b.a.d.h
    public void a(z zVar) throws IOException {
        a(zVar.c(), k.a(zVar, this.f1909b.b().a().b().type()));
    }

    @Override // b.a.d.h
    public ab.a b() throws IOException {
        return d();
    }

    @Override // b.a.d.h
    public ac a(ab abVar) throws IOException {
        return new j(abVar.f(), c.l.a(b(abVar)));
    }

    private s b(ab abVar) throws IOException {
        if (!b.a.d.f.b(abVar)) {
            return b(0L);
        }
        if ("chunked".equalsIgnoreCase(abVar.a("Transfer-Encoding"))) {
            return a(abVar.a().a());
        }
        long jA = b.a.d.f.a(abVar);
        if (jA != -1) {
            return b(jA);
        }
        return g();
    }

    @Override // b.a.d.h
    public void c() throws IOException {
        this.f1911d.flush();
    }

    public void a(b.r rVar, String str) throws IOException {
        if (this.e != 0) {
            throw new IllegalStateException("state: " + this.e);
        }
        this.f1911d.b(str).b("\r\n");
        int iA = rVar.a();
        for (int i = 0; i < iA; i++) {
            this.f1911d.b(rVar.a(i)).b(": ").b(rVar.b(i)).b("\r\n");
        }
        this.f1911d.b("\r\n");
        this.e = 1;
    }

    public ab.a d() throws IOException {
        m mVarA;
        ab.a aVarA;
        if (this.e != 1 && this.e != 3) {
            throw new IllegalStateException("state: " + this.e);
        }
        do {
            try {
                mVarA = m.a(this.f1910c.q());
                aVarA = new ab.a().a(mVarA.f1943a).a(mVarA.f1944b).a(mVarA.f1945c).a(e());
            } catch (EOFException e2) {
                IOException iOException = new IOException("unexpected end of stream on " + this.f1909b);
                iOException.initCause(e2);
                throw iOException;
            }
        } while (mVarA.f1944b == 100);
        this.e = 4;
        return aVarA;
    }

    public b.r e() throws IOException {
        r.a aVar = new r.a();
        while (true) {
            String strQ = this.f1910c.q();
            if (strQ.length() != 0) {
                b.a.a.f1737a.a(aVar, strQ);
            } else {
                return aVar.a();
            }
        }
    }

    public c.r f() {
        if (this.e != 1) {
            throw new IllegalStateException("state: " + this.e);
        }
        this.e = 2;
        return new b();
    }

    public c.r a(long j) {
        if (this.e != 1) {
            throw new IllegalStateException("state: " + this.e);
        }
        this.e = 2;
        return new d(j);
    }

    public s b(long j) throws IOException {
        if (this.e != 4) {
            throw new IllegalStateException("state: " + this.e);
        }
        this.e = 5;
        return new e(j);
    }

    public s a(b.s sVar) throws IOException {
        if (this.e != 4) {
            throw new IllegalStateException("state: " + this.e);
        }
        this.e = 5;
        return new C0039c(sVar);
    }

    public s g() throws IOException {
        if (this.e != 4) {
            throw new IllegalStateException("state: " + this.e);
        }
        if (this.f1909b == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.e = 5;
        this.f1909b.d();
        return new f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c.i iVar) {
        t tVarA = iVar.a();
        iVar.a(t.f2168b);
        tVarA.f();
        tVarA.A_();
    }

    private final class d implements c.r {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final c.i f1920b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f1921c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f1922d;

        private d(long j) {
            this.f1920b = new c.i(c.this.f1911d.a());
            this.f1922d = j;
        }

        @Override // c.r
        public t a() {
            return this.f1920b;
        }

        @Override // c.r
        public void a_(c.c cVar, long j) throws IOException {
            if (this.f1921c) {
                throw new IllegalStateException("closed");
            }
            b.a.c.a(cVar.b(), 0L, j);
            if (j <= this.f1922d) {
                c.this.f1911d.a_(cVar, j);
                this.f1922d -= j;
                return;
            }
            throw new ProtocolException("expected " + this.f1922d + " bytes but received " + j);
        }

        @Override // c.r, java.io.Flushable
        public void flush() throws IOException {
            if (!this.f1921c) {
                c.this.f1911d.flush();
            }
        }

        @Override // c.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f1921c) {
                this.f1921c = true;
                if (this.f1922d > 0) {
                    throw new ProtocolException("unexpected end of stream");
                }
                c.this.a(this.f1920b);
                c.this.e = 3;
            }
        }
    }

    private final class b implements c.r {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final c.i f1916b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f1917c;

        private b() {
            this.f1916b = new c.i(c.this.f1911d.a());
        }

        @Override // c.r
        public t a() {
            return this.f1916b;
        }

        @Override // c.r
        public void a_(c.c cVar, long j) throws IOException {
            if (this.f1917c) {
                throw new IllegalStateException("closed");
            }
            if (j != 0) {
                c.this.f1911d.k(j);
                c.this.f1911d.b("\r\n");
                c.this.f1911d.a_(cVar, j);
                c.this.f1911d.b("\r\n");
            }
        }

        @Override // c.r, java.io.Flushable
        public synchronized void flush() throws IOException {
            if (!this.f1917c) {
                c.this.f1911d.flush();
            }
        }

        @Override // c.r, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            if (!this.f1917c) {
                this.f1917c = true;
                c.this.f1911d.b("0\r\n\r\n");
                c.this.a(this.f1916b);
                c.this.e = 3;
            }
        }
    }

    private abstract class a implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final c.i f1912a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected boolean f1913b;

        private a() {
            this.f1912a = new c.i(c.this.f1910c.a());
        }

        @Override // c.s
        public t a() {
            return this.f1912a;
        }

        protected final void a(boolean z) throws IOException {
            if (c.this.e != 6) {
                if (c.this.e != 5) {
                    throw new IllegalStateException("state: " + c.this.e);
                }
                c.this.a(this.f1912a);
                c.this.e = 6;
                if (c.this.f1909b != null) {
                    c.this.f1909b.a(!z, c.this);
                }
            }
        }
    }

    private class e extends a {
        private long e;

        public e(long j) throws IOException {
            super();
            this.e = j;
            if (this.e == 0) {
                a(true);
            }
        }

        @Override // c.s
        public long a(c.c cVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.f1913b) {
                throw new IllegalStateException("closed");
            }
            if (this.e == 0) {
                return -1L;
            }
            long jA = c.this.f1910c.a(cVar, Math.min(this.e, j));
            if (jA == -1) {
                a(false);
                throw new ProtocolException("unexpected end of stream");
            }
            this.e -= jA;
            if (this.e == 0) {
                a(true);
            }
            return jA;
        }

        @Override // c.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f1913b) {
                if (this.e != 0 && !b.a.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                    a(false);
                }
                this.f1913b = true;
            }
        }
    }

    /* JADX INFO: renamed from: b.a.d.c$c, reason: collision with other inner class name */
    private class C0039c extends a {
        private final b.s e;
        private long f;
        private boolean g;

        C0039c(b.s sVar) {
            super();
            this.f = -1L;
            this.g = true;
            this.e = sVar;
        }

        @Override // c.s
        public long a(c.c cVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.f1913b) {
                throw new IllegalStateException("closed");
            }
            if (!this.g) {
                return -1L;
            }
            if (this.f == 0 || this.f == -1) {
                b();
                if (!this.g) {
                    return -1L;
                }
            }
            long jA = c.this.f1910c.a(cVar, Math.min(j, this.f));
            if (jA == -1) {
                a(false);
                throw new ProtocolException("unexpected end of stream");
            }
            this.f -= jA;
            return jA;
        }

        private void b() throws IOException {
            if (this.f != -1) {
                c.this.f1910c.q();
            }
            try {
                this.f = c.this.f1910c.n();
                String strTrim = c.this.f1910c.q().trim();
                if (this.f < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f + strTrim + "\"");
                }
                if (this.f == 0) {
                    this.g = false;
                    b.a.d.f.a(c.this.f1908a.f(), this.e, c.this.e());
                    a(true);
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        @Override // c.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f1913b) {
                if (this.g && !b.a.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                    a(false);
                }
                this.f1913b = true;
            }
        }
    }

    private class f extends a {
        private boolean e;

        private f() {
            super();
        }

        @Override // c.s
        public long a(c.c cVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.f1913b) {
                throw new IllegalStateException("closed");
            }
            if (this.e) {
                return -1L;
            }
            long jA = c.this.f1910c.a(cVar, j);
            if (jA != -1) {
                return jA;
            }
            this.e = true;
            a(true);
            return -1L;
        }

        @Override // c.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f1913b) {
                if (!this.e) {
                    a(false);
                }
                this.f1913b = true;
            }
        }
    }
}
