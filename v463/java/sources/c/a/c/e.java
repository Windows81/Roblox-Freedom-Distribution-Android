package c.a.c;

import d.r;
import d.s;
import d.t;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final /* synthetic */ boolean f2544d = !e.class.desiredAssertionStatus();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f2546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final a f2547c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f2548e;
    private final d f;
    private final List<f> g;
    private List<f> h;
    private final b i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f2545a = 0;
    private final c j = new c();
    private final c k = new c();
    private c.a.c.a l = null;

    e(int i, d dVar, boolean z, boolean z2, List<f> list) {
        if (dVar == null) {
            throw new NullPointerException("connection == null");
        }
        if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        }
        this.f2548e = i;
        this.f = dVar;
        this.f2546b = dVar.f.f(65536);
        this.i = new b(dVar.f2507e.f(65536));
        this.f2547c = new a();
        this.i.g = z2;
        this.f2547c.f2553e = z;
        this.g = list;
    }

    public int a() {
        return this.f2548e;
    }

    public synchronized boolean b() {
        if (this.l != null) {
            return false;
        }
        if ((this.i.g || this.i.f) && (this.f2547c.f2553e || this.f2547c.f2552d)) {
            if (this.h != null) {
                return false;
            }
        }
        return true;
    }

    public boolean c() {
        return this.f.f2504b == ((this.f2548e & 1) == 1);
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
        return this.f2547c;
    }

    public void a(c.a.c.a aVar) throws IOException {
        if (d(aVar)) {
            this.f.b(this.f2548e, aVar);
        }
    }

    public void b(c.a.c.a aVar) {
        if (d(aVar)) {
            this.f.a(this.f2548e, aVar);
        }
    }

    private boolean d(c.a.c.a aVar) {
        if (!f2544d && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            if (this.l != null) {
                return false;
            }
            if (this.i.g && this.f2547c.f2553e) {
                return false;
            }
            this.l = aVar;
            notifyAll();
            this.f.b(this.f2548e);
            return true;
        }
    }

    void a(List<f> list, g gVar) {
        if (!f2544d && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        c.a.c.a aVar = null;
        boolean zB = true;
        synchronized (this) {
            if (this.h == null) {
                if (gVar.c()) {
                    aVar = c.a.c.a.PROTOCOL_ERROR;
                } else {
                    this.h = list;
                    zB = b();
                    notifyAll();
                }
            } else if (gVar.d()) {
                aVar = c.a.c.a.STREAM_IN_USE;
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.h);
                arrayList.addAll(list);
                this.h = arrayList;
            }
        }
        if (aVar != null) {
            b(aVar);
        } else {
            if (zB) {
                return;
            }
            this.f.b(this.f2548e);
        }
    }

    void a(d.e eVar, int i) throws IOException {
        if (!f2544d && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        this.i.a(eVar, i);
    }

    void i() {
        boolean zB;
        if (!f2544d && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.i.g = true;
            zB = b();
            notifyAll();
        }
        if (zB) {
            return;
        }
        this.f.b(this.f2548e);
    }

    synchronized void c(c.a.c.a aVar) {
        if (this.l == null) {
            this.l = aVar;
            notifyAll();
        }
    }

    private final class b implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ boolean f2554a = !e.class.desiredAssertionStatus();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final d.c f2556c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final d.c f2557d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final long f2558e;
        private boolean f;
        private boolean g;

        private b(long j) {
            this.f2556c = new d.c();
            this.f2557d = new d.c();
            this.f2558e = j;
        }

        @Override // d.s
        public long a(d.c cVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            synchronized (e.this) {
                b();
                c();
                if (this.f2557d.b() == 0) {
                    return -1L;
                }
                long jA = this.f2557d.a(cVar, Math.min(j, this.f2557d.b()));
                e.this.f2545a += jA;
                if (e.this.f2545a >= e.this.f.f2507e.f(65536) / 2) {
                    e.this.f.a(e.this.f2548e, e.this.f2545a);
                    e.this.f2545a = 0L;
                }
                synchronized (e.this.f) {
                    e.this.f.f2505c += jA;
                    if (e.this.f.f2505c >= e.this.f.f2507e.f(65536) / 2) {
                        e.this.f.a(0, e.this.f.f2505c);
                        e.this.f.f2505c = 0L;
                    }
                }
                return jA;
            }
        }

        private void b() throws IOException {
            e.this.j.c();
            while (this.f2557d.b() == 0 && !this.g && !this.f && e.this.l == null) {
                try {
                    e.this.l();
                } finally {
                    e.this.j.b();
                }
            }
        }

        void a(d.e eVar, long j) throws IOException {
            boolean z;
            boolean z2;
            boolean z3;
            if (!f2554a && Thread.holdsLock(e.this)) {
                throw new AssertionError();
            }
            while (j > 0) {
                synchronized (e.this) {
                    z = this.g;
                    z2 = true;
                    z3 = this.f2557d.b() + j > this.f2558e;
                }
                if (z3) {
                    eVar.h(j);
                    e.this.b(c.a.c.a.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z) {
                    eVar.h(j);
                    return;
                }
                long jA = eVar.a(this.f2556c, j);
                if (jA == -1) {
                    throw new EOFException();
                }
                j -= jA;
                synchronized (e.this) {
                    if (this.f2557d.b() != 0) {
                        z2 = false;
                    }
                    this.f2557d.a((s) this.f2556c);
                    if (z2) {
                        e.this.notifyAll();
                    }
                }
            }
        }

        @Override // d.s
        public t a() {
            return e.this.j;
        }

        @Override // d.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (e.this) {
                this.f = true;
                this.f2557d.t();
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
        if (!f2544d && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            z = !this.i.g && this.i.f && (this.f2547c.f2553e || this.f2547c.f2552d);
            zB = b();
        }
        if (z) {
            a(c.a.c.a.CANCEL);
        } else {
            if (zB) {
                return;
            }
            this.f.b(this.f2548e);
        }
    }

    final class a implements r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ boolean f2549a = !e.class.desiredAssertionStatus();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final d.c f2551c = new d.c();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f2552d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f2553e;

        a() {
        }

        @Override // d.r
        public void a_(d.c cVar, long j) throws IOException {
            if (!f2549a && Thread.holdsLock(e.this)) {
                throw new AssertionError();
            }
            this.f2551c.a_(cVar, j);
            while (this.f2551c.b() >= 16384) {
                a(false);
            }
        }

        private void a(boolean z) throws IOException {
            long jMin;
            synchronized (e.this) {
                e.this.k.c();
                while (e.this.f2546b <= 0 && !this.f2553e && !this.f2552d && e.this.l == null) {
                    try {
                        e.this.l();
                    } finally {
                    }
                }
                e.this.k.b();
                e.this.k();
                jMin = Math.min(e.this.f2546b, this.f2551c.b());
                e.this.f2546b -= jMin;
            }
            e.this.k.c();
            try {
                e.this.f.a(e.this.f2548e, z && jMin == this.f2551c.b(), this.f2551c, jMin);
            } finally {
            }
        }

        @Override // d.r, java.io.Flushable
        public void flush() throws IOException {
            if (!f2549a && Thread.holdsLock(e.this)) {
                throw new AssertionError();
            }
            synchronized (e.this) {
                e.this.k();
            }
            while (this.f2551c.b() > 0) {
                a(false);
                e.this.f.c();
            }
        }

        @Override // d.r
        public t a() {
            return e.this.k;
        }

        @Override // d.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!f2549a && Thread.holdsLock(e.this)) {
                throw new AssertionError();
            }
            synchronized (e.this) {
                if (this.f2552d) {
                    return;
                }
                if (!e.this.f2547c.f2553e) {
                    if (this.f2551c.b() > 0) {
                        while (this.f2551c.b() > 0) {
                            a(true);
                        }
                    } else {
                        e.this.f.a(e.this.f2548e, true, (d.c) null, 0L);
                    }
                }
                synchronized (e.this) {
                    this.f2552d = true;
                }
                e.this.f.c();
                e.this.j();
            }
        }
    }

    void a(long j) {
        this.f2546b += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() throws IOException {
        if (!this.f2547c.f2552d) {
            if (this.f2547c.f2553e) {
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
        } catch (InterruptedException unused) {
            throw new InterruptedIOException();
        }
    }

    class c extends d.a {
        c() {
        }

        @Override // d.a
        protected void a() {
            e.this.b(c.a.c.a.CANCEL);
        }

        @Override // d.a
        protected IOException a(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        public void b() throws IOException {
            if (r_()) {
                throw a((IOException) null);
            }
        }
    }
}
