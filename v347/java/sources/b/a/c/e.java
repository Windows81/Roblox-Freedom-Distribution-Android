package b.a.c;

import c.r;
import c.s;
import c.t;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final /* synthetic */ boolean f1829d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f1831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final a f1832c;
    private final int e;
    private final d f;
    private final List<f> g;
    private List<f> h;
    private final b i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f1830a = 0;
    private final c j = new c();
    private final c k = new c();
    private b.a.c.a l = null;

    static {
        f1829d = !e.class.desiredAssertionStatus();
    }

    e(int i, d dVar, boolean z, boolean z2, List<f> list) {
        if (dVar == null) {
            throw new NullPointerException("connection == null");
        }
        if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        }
        this.e = i;
        this.f = dVar;
        this.f1831b = dVar.f.f(65536);
        this.i = new b(dVar.e.f(65536));
        this.f1832c = new a();
        this.i.g = z2;
        this.f1832c.e = z;
        this.g = list;
    }

    public int a() {
        return this.e;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean b() {
        /*
            r2 = this;
            r0 = 0
            monitor-enter(r2)
            b.a.c.a r1 = r2.l     // Catch: java.lang.Throwable -> L2e
            if (r1 == 0) goto L8
        L6:
            monitor-exit(r2)
            return r0
        L8:
            b.a.c.e$b r1 = r2.i     // Catch: java.lang.Throwable -> L2e
            boolean r1 = b.a.c.e.b.a(r1)     // Catch: java.lang.Throwable -> L2e
            if (r1 != 0) goto L18
            b.a.c.e$b r1 = r2.i     // Catch: java.lang.Throwable -> L2e
            boolean r1 = b.a.c.e.b.b(r1)     // Catch: java.lang.Throwable -> L2e
            if (r1 == 0) goto L2c
        L18:
            b.a.c.e$a r1 = r2.f1832c     // Catch: java.lang.Throwable -> L2e
            boolean r1 = b.a.c.e.a.a(r1)     // Catch: java.lang.Throwable -> L2e
            if (r1 != 0) goto L28
            b.a.c.e$a r1 = r2.f1832c     // Catch: java.lang.Throwable -> L2e
            boolean r1 = b.a.c.e.a.b(r1)     // Catch: java.lang.Throwable -> L2e
            if (r1 == 0) goto L2c
        L28:
            java.util.List<b.a.c.f> r1 = r2.h     // Catch: java.lang.Throwable -> L2e
            if (r1 != 0) goto L6
        L2c:
            r0 = 1
            goto L6
        L2e:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b.a.c.e.b():boolean");
    }

    public boolean c() {
        return this.f.f1794b == ((this.e & 1) == 1);
    }

    public synchronized List<f> d() throws IOException {
        this.j.c();
        while (this.h == null && this.l == null) {
            try {
                l();
            } catch (Throwable th) {
                this.j.b();
                throw th;
            }
        }
        this.j.b();
        if (this.h == null) {
            throw new p(this.l);
        }
        return this.h;
    }

    public t e() {
        return this.j;
    }

    public t f() {
        return this.k;
    }

    public s g() {
        return this.i;
    }

    public r h() {
        synchronized (this) {
            if (this.h == null && !c()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f1832c;
    }

    public void a(b.a.c.a aVar) throws IOException {
        if (d(aVar)) {
            this.f.b(this.e, aVar);
        }
    }

    public void b(b.a.c.a aVar) {
        if (d(aVar)) {
            this.f.a(this.e, aVar);
        }
    }

    private boolean d(b.a.c.a aVar) {
        if (!f1829d && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            if (this.l != null) {
                return false;
            }
            if (this.i.g && this.f1832c.e) {
                return false;
            }
            this.l = aVar;
            notifyAll();
            this.f.b(this.e);
            return true;
        }
    }

    void a(List<f> list, g gVar) {
        if (!f1829d && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        b.a.c.a aVar = null;
        boolean zB = true;
        synchronized (this) {
            if (this.h == null) {
                if (gVar.c()) {
                    aVar = b.a.c.a.PROTOCOL_ERROR;
                } else {
                    this.h = list;
                    zB = b();
                    notifyAll();
                }
            } else if (gVar.d()) {
                aVar = b.a.c.a.STREAM_IN_USE;
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.h);
                arrayList.addAll(list);
                this.h = arrayList;
            }
        }
        if (aVar != null) {
            b(aVar);
        } else if (!zB) {
            this.f.b(this.e);
        }
    }

    void a(c.e eVar, int i) throws IOException {
        if (!f1829d && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        this.i.a(eVar, i);
    }

    void i() {
        boolean zB;
        if (!f1829d && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.i.g = true;
            zB = b();
            notifyAll();
        }
        if (!zB) {
            this.f.b(this.e);
        }
    }

    synchronized void c(b.a.c.a aVar) {
        if (this.l == null) {
            this.l = aVar;
            notifyAll();
        }
    }

    private final class b implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ boolean f1837a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c.c f1839c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final c.c f1840d;
        private final long e;
        private boolean f;
        private boolean g;

        static {
            f1837a = !e.class.desiredAssertionStatus();
        }

        private b(long j) {
            this.f1839c = new c.c();
            this.f1840d = new c.c();
            this.e = j;
        }

        @Override // c.s
        public long a(c.c cVar, long j) throws IOException {
            long jA;
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            synchronized (e.this) {
                b();
                c();
                if (this.f1840d.b() == 0) {
                    jA = -1;
                } else {
                    jA = this.f1840d.a(cVar, Math.min(j, this.f1840d.b()));
                    e.this.f1830a += jA;
                    if (e.this.f1830a >= e.this.f.e.f(65536) / 2) {
                        e.this.f.a(e.this.e, e.this.f1830a);
                        e.this.f1830a = 0L;
                    }
                    synchronized (e.this.f) {
                        e.this.f.f1795c += jA;
                        if (e.this.f.f1795c >= e.this.f.e.f(65536) / 2) {
                            e.this.f.a(0, e.this.f.f1795c);
                            e.this.f.f1795c = 0L;
                        }
                    }
                }
            }
            return jA;
        }

        private void b() throws IOException {
            e.this.j.c();
            while (this.f1840d.b() == 0 && !this.g && !this.f && e.this.l == null) {
                try {
                    e.this.l();
                } finally {
                    e.this.j.b();
                }
            }
        }

        void a(c.e eVar, long j) throws IOException {
            boolean z;
            boolean z2;
            if (!f1837a && Thread.holdsLock(e.this)) {
                throw new AssertionError();
            }
            while (j > 0) {
                synchronized (e.this) {
                    z = this.g;
                    z2 = this.f1840d.b() + j > this.e;
                }
                if (z2) {
                    eVar.h(j);
                    e.this.b(b.a.c.a.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z) {
                    eVar.h(j);
                    return;
                }
                long jA = eVar.a(this.f1839c, j);
                if (jA == -1) {
                    throw new EOFException();
                }
                j -= jA;
                synchronized (e.this) {
                    boolean z3 = this.f1840d.b() == 0;
                    this.f1840d.a((s) this.f1839c);
                    if (z3) {
                        e.this.notifyAll();
                    }
                }
            }
        }

        @Override // c.s
        public t a() {
            return e.this.j;
        }

        @Override // c.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (e.this) {
                this.f = true;
                this.f1840d.t();
                e.this.notifyAll();
            }
            e.this.j();
        }

        private void c() throws IOException {
            if (!this.f) {
                if (e.this.l != null) {
                    throw new p(e.this.l);
                }
                return;
            }
            throw new IOException("stream closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() throws IOException {
        boolean z;
        boolean zB;
        if (!f1829d && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            z = !this.i.g && this.i.f && (this.f1832c.e || this.f1832c.f1836d);
            zB = b();
        }
        if (z) {
            a(b.a.c.a.CANCEL);
        } else if (!zB) {
            this.f.b(this.e);
        }
    }

    final class a implements r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ boolean f1833a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c.c f1835c = new c.c();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1836d;
        private boolean e;

        static {
            f1833a = !e.class.desiredAssertionStatus();
        }

        a() {
        }

        @Override // c.r
        public void a_(c.c cVar, long j) throws IOException {
            if (!f1833a && Thread.holdsLock(e.this)) {
                throw new AssertionError();
            }
            this.f1835c.a_(cVar, j);
            while (this.f1835c.b() >= 16384) {
                a(false);
            }
        }

        private void a(boolean z) throws IOException {
            long jMin;
            synchronized (e.this) {
                e.this.k.c();
                while (e.this.f1831b <= 0 && !this.e && !this.f1836d && e.this.l == null) {
                    try {
                        e.this.l();
                    } finally {
                    }
                }
                e.this.k.b();
                e.this.k();
                jMin = Math.min(e.this.f1831b, this.f1835c.b());
                e.this.f1831b -= jMin;
            }
            e.this.k.c();
            try {
                e.this.f.a(e.this.e, z && jMin == this.f1835c.b(), this.f1835c, jMin);
            } finally {
            }
        }

        @Override // c.r, java.io.Flushable
        public void flush() throws IOException {
            if (!f1833a && Thread.holdsLock(e.this)) {
                throw new AssertionError();
            }
            synchronized (e.this) {
                e.this.k();
            }
            while (this.f1835c.b() > 0) {
                a(false);
                e.this.f.c();
            }
        }

        @Override // c.r
        public t a() {
            return e.this.k;
        }

        @Override // c.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!f1833a && Thread.holdsLock(e.this)) {
                throw new AssertionError();
            }
            synchronized (e.this) {
                if (!this.f1836d) {
                    if (!e.this.f1832c.e) {
                        if (this.f1835c.b() > 0) {
                            while (this.f1835c.b() > 0) {
                                a(true);
                            }
                        } else {
                            e.this.f.a(e.this.e, true, (c.c) null, 0L);
                        }
                    }
                    synchronized (e.this) {
                        this.f1836d = true;
                    }
                    e.this.f.c();
                    e.this.j();
                }
            }
        }
    }

    void a(long j) {
        this.f1831b += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() throws IOException {
        if (!this.f1832c.f1836d) {
            if (this.f1832c.e) {
                throw new IOException("stream finished");
            }
            if (this.l != null) {
                throw new p(this.l);
            }
            return;
        }
        throw new IOException("stream closed");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException e) {
            throw new InterruptedIOException();
        }
    }

    class c extends c.a {
        c() {
        }

        @Override // c.a
        protected void a() {
            e.this.b(b.a.c.a.CANCEL);
        }

        @Override // c.a
        protected IOException a(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        public void b() throws IOException {
            if (x_()) {
                throw a((IOException) null);
            }
        }
    }
}
