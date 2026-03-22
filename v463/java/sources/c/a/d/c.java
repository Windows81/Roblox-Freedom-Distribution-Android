package c.a.d;

import c.aa;
import c.ac;
import c.ad;
import c.s;
import c.t;
import c.x;
import d.r;
import d.s;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class c implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x f2633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c.a.b.g f2634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d.e f2635c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d.d f2636d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2637e = 0;

    public c(x xVar, c.a.b.g gVar, d.e eVar, d.d dVar) {
        this.f2633a = xVar;
        this.f2634b = gVar;
        this.f2635c = eVar;
        this.f2636d = dVar;
    }

    @Override // c.a.d.h
    public r a(aa aaVar, long j) {
        if ("chunked".equalsIgnoreCase(aaVar.a("Transfer-Encoding"))) {
            return f();
        }
        if (j != -1) {
            return a(j);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // c.a.d.h
    public void a() {
        c.a.b.c cVarB = this.f2634b.b();
        if (cVarB != null) {
            cVarB.c();
        }
    }

    @Override // c.a.d.h
    public void a(aa aaVar) throws IOException {
        a(aaVar.c(), k.a(aaVar, this.f2634b.b().a().b().type()));
    }

    @Override // c.a.d.h
    public ac.a b() throws IOException {
        return d();
    }

    @Override // c.a.d.h
    public ad a(ac acVar) throws IOException {
        return new j(acVar.f(), d.l.a(b(acVar)));
    }

    private s b(ac acVar) throws IOException {
        if (!c.a.d.f.b(acVar)) {
            return b(0L);
        }
        if ("chunked".equalsIgnoreCase(acVar.a("Transfer-Encoding"))) {
            return a(acVar.a().a());
        }
        long jA = c.a.d.f.a(acVar);
        if (jA != -1) {
            return b(jA);
        }
        return g();
    }

    @Override // c.a.d.h
    public void c() throws IOException {
        this.f2636d.flush();
    }

    public void a(c.s sVar, String str) throws IOException {
        if (this.f2637e != 0) {
            throw new IllegalStateException("state: " + this.f2637e);
        }
        this.f2636d.b(str).b("\r\n");
        int iA = sVar.a();
        for (int i = 0; i < iA; i++) {
            this.f2636d.b(sVar.a(i)).b(": ").b(sVar.b(i)).b("\r\n");
        }
        this.f2636d.b("\r\n");
        this.f2637e = 1;
    }

    public ac.a d() throws IOException {
        m mVarA;
        ac.a aVarA;
        int i = this.f2637e;
        if (i != 1 && i != 3) {
            throw new IllegalStateException("state: " + this.f2637e);
        }
        do {
            try {
                mVarA = m.a(this.f2635c.q());
                aVarA = new ac.a().a(mVarA.f2674a).a(mVarA.f2675b).a(mVarA.f2676c).a(e());
            } catch (EOFException e2) {
                IOException iOException = new IOException("unexpected end of stream on " + this.f2634b);
                iOException.initCause(e2);
                throw iOException;
            }
        } while (mVarA.f2675b == 100);
        this.f2637e = 4;
        return aVarA;
    }

    public c.s e() throws IOException {
        s.a aVar = new s.a();
        while (true) {
            String strQ = this.f2635c.q();
            if (strQ.length() != 0) {
                c.a.a.f2438a.a(aVar, strQ);
            } else {
                return aVar.a();
            }
        }
    }

    public r f() {
        if (this.f2637e != 1) {
            throw new IllegalStateException("state: " + this.f2637e);
        }
        this.f2637e = 2;
        return new b();
    }

    public r a(long j) {
        if (this.f2637e != 1) {
            throw new IllegalStateException("state: " + this.f2637e);
        }
        this.f2637e = 2;
        return new d(j);
    }

    public d.s b(long j) throws IOException {
        if (this.f2637e != 4) {
            throw new IllegalStateException("state: " + this.f2637e);
        }
        this.f2637e = 5;
        return new e(j);
    }

    public d.s a(t tVar) throws IOException {
        if (this.f2637e != 4) {
            throw new IllegalStateException("state: " + this.f2637e);
        }
        this.f2637e = 5;
        return new C0057c(tVar);
    }

    public d.s g() throws IOException {
        if (this.f2637e != 4) {
            throw new IllegalStateException("state: " + this.f2637e);
        }
        c.a.b.g gVar = this.f2634b;
        if (gVar == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f2637e = 5;
        gVar.d();
        return new f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(d.i iVar) {
        d.t tVarA = iVar.a();
        iVar.a(d.t.f7804b);
        tVarA.f();
        tVarA.u_();
    }

    private final class d implements r {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d.i f2647b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f2648c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f2649d;

        private d(long j) {
            this.f2647b = new d.i(c.this.f2636d.a());
            this.f2649d = j;
        }

        @Override // d.r
        public d.t a() {
            return this.f2647b;
        }

        @Override // d.r
        public void a_(d.c cVar, long j) throws IOException {
            if (this.f2648c) {
                throw new IllegalStateException("closed");
            }
            c.a.c.a(cVar.b(), 0L, j);
            if (j <= this.f2649d) {
                c.this.f2636d.a_(cVar, j);
                this.f2649d -= j;
                return;
            }
            throw new ProtocolException("expected " + this.f2649d + " bytes but received " + j);
        }

        @Override // d.r, java.io.Flushable
        public void flush() throws IOException {
            if (this.f2648c) {
                return;
            }
            c.this.f2636d.flush();
        }

        @Override // d.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f2648c) {
                return;
            }
            this.f2648c = true;
            if (this.f2649d <= 0) {
                c.this.a(this.f2647b);
                c.this.f2637e = 3;
                return;
            }
            throw new ProtocolException("unexpected end of stream");
        }
    }

    private final class b implements r {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d.i f2642b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f2643c;

        private b() {
            this.f2642b = new d.i(c.this.f2636d.a());
        }

        @Override // d.r
        public d.t a() {
            return this.f2642b;
        }

        @Override // d.r
        public void a_(d.c cVar, long j) throws IOException {
            if (this.f2643c) {
                throw new IllegalStateException("closed");
            }
            if (j == 0) {
                return;
            }
            c.this.f2636d.k(j);
            c.this.f2636d.b("\r\n");
            c.this.f2636d.a_(cVar, j);
            c.this.f2636d.b("\r\n");
        }

        @Override // d.r, java.io.Flushable
        public synchronized void flush() throws IOException {
            if (this.f2643c) {
                return;
            }
            c.this.f2636d.flush();
        }

        @Override // d.r, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            if (this.f2643c) {
                return;
            }
            this.f2643c = true;
            c.this.f2636d.b("0\r\n\r\n");
            c.this.a(this.f2642b);
            c.this.f2637e = 3;
        }
    }

    private abstract class a implements d.s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final d.i f2638a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected boolean f2639b;

        private a() {
            this.f2638a = new d.i(c.this.f2635c.a());
        }

        @Override // d.s
        public d.t a() {
            return this.f2638a;
        }

        protected final void a(boolean z) throws IOException {
            if (c.this.f2637e == 6) {
                return;
            }
            if (c.this.f2637e == 5) {
                c.this.a(this.f2638a);
                c.this.f2637e = 6;
                if (c.this.f2634b != null) {
                    c.this.f2634b.a(!z, c.this);
                    return;
                }
                return;
            }
            throw new IllegalStateException("state: " + c.this.f2637e);
        }
    }

    private class e extends a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f2651e;

        public e(long j) throws IOException {
            super();
            this.f2651e = j;
            if (j == 0) {
                a(true);
            }
        }

        @Override // d.s
        public long a(d.c cVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.f2639b) {
                throw new IllegalStateException("closed");
            }
            if (this.f2651e == 0) {
                return -1L;
            }
            long jA = c.this.f2635c.a(cVar, Math.min(this.f2651e, j));
            if (jA == -1) {
                a(false);
                throw new ProtocolException("unexpected end of stream");
            }
            long j2 = this.f2651e - jA;
            this.f2651e = j2;
            if (j2 == 0) {
                a(true);
            }
            return jA;
        }

        @Override // d.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f2639b) {
                return;
            }
            if (this.f2651e != 0 && !c.a.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false);
            }
            this.f2639b = true;
        }
    }

    /* JADX INFO: renamed from: c.a.d.c$c, reason: collision with other inner class name */
    private class C0057c extends a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final t f2645e;
        private long f;
        private boolean g;

        C0057c(t tVar) {
            super();
            this.f = -1L;
            this.g = true;
            this.f2645e = tVar;
        }

        @Override // d.s
        public long a(d.c cVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.f2639b) {
                throw new IllegalStateException("closed");
            }
            if (!this.g) {
                return -1L;
            }
            long j2 = this.f;
            if (j2 == 0 || j2 == -1) {
                b();
                if (!this.g) {
                    return -1L;
                }
            }
            long jA = c.this.f2635c.a(cVar, Math.min(j, this.f));
            if (jA == -1) {
                a(false);
                throw new ProtocolException("unexpected end of stream");
            }
            this.f -= jA;
            return jA;
        }

        private void b() throws IOException {
            if (this.f != -1) {
                c.this.f2635c.q();
            }
            try {
                this.f = c.this.f2635c.n();
                String strTrim = c.this.f2635c.q().trim();
                if (this.f < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f + strTrim + "\"");
                }
                if (this.f == 0) {
                    this.g = false;
                    c.a.d.f.a(c.this.f2633a.f(), this.f2645e, c.this.e());
                    a(true);
                }
            } catch (NumberFormatException e2) {
                throw new ProtocolException(e2.getMessage());
            }
        }

        @Override // d.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f2639b) {
                return;
            }
            if (this.g && !c.a.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false);
            }
            this.f2639b = true;
        }
    }

    private class f extends a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f2653e;

        private f() {
            super();
        }

        @Override // d.s
        public long a(d.c cVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.f2639b) {
                throw new IllegalStateException("closed");
            }
            if (this.f2653e) {
                return -1L;
            }
            long jA = c.this.f2635c.a(cVar, j);
            if (jA != -1) {
                return jA;
            }
            this.f2653e = true;
            a(true);
            return -1L;
        }

        @Override // d.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f2639b) {
                return;
            }
            if (!this.f2653e) {
                a(false);
            }
            this.f2639b = true;
        }
    }
}
