package c.a.c;

import c.a.c.b;
import c.y;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class d implements Closeable {
    static final /* synthetic */ boolean k = !d.class.desiredAssertionStatus();
    private static final ExecutorService l = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), c.a.c.a("OkHttp FramedConnection", true));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final y f2503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final boolean f2504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f2505c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f2506d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    n f2507e;
    final n f;
    final q g;
    final Socket h;
    final c.a.c.c i;
    final c j;
    private final b m;
    private final Map<Integer, e> n;
    private final String o;
    private int p;
    private int q;
    private boolean r;
    private final ExecutorService s;
    private Map<Integer, l> t;
    private final m u;
    private int v;
    private boolean w;
    private final Set<Integer> x;

    public static abstract class b {
        public static final b j = new b() { // from class: c.a.c.d.b.1
            @Override // c.a.c.d.b
            public void a(e eVar) throws IOException {
                eVar.a(c.a.c.a.REFUSED_STREAM);
            }
        };

        public void a(d dVar) {
        }

        public abstract void a(e eVar) throws IOException;
    }

    private d(a aVar) {
        this.n = new HashMap();
        this.f2505c = 0L;
        this.f2507e = new n();
        this.f = new n();
        this.w = false;
        this.x = new LinkedHashSet();
        this.f2503a = aVar.f;
        this.u = aVar.g;
        this.f2504b = aVar.h;
        this.m = aVar.f2536e;
        this.q = aVar.h ? 1 : 2;
        if (aVar.h && this.f2503a == y.HTTP_2) {
            this.q += 2;
        }
        this.v = aVar.h ? 1 : 2;
        if (aVar.h) {
            this.f2507e.a(7, 0, 16777216);
        }
        this.o = aVar.f2533b;
        if (this.f2503a == y.HTTP_2) {
            this.g = new i();
            this.s = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), c.a.c.a(c.a.c.a("OkHttp %s Push Observer", this.o), true));
            this.f.a(7, 0, 65535);
            this.f.a(5, 0, 16384);
        } else if (this.f2503a == y.SPDY_3) {
            this.g = new o();
            this.s = null;
        } else {
            throw new AssertionError(this.f2503a);
        }
        this.f2506d = this.f.f(65536);
        this.h = aVar.f2532a;
        this.i = this.g.a(aVar.f2535d, this.f2504b);
        this.j = new c(this.g.a(aVar.f2534c, this.f2504b));
    }

    public y a() {
        return this.f2503a;
    }

    synchronized e a(int i) {
        return this.n.get(Integer.valueOf(i));
    }

    synchronized e b(int i) {
        e eVarRemove;
        eVarRemove = this.n.remove(Integer.valueOf(i));
        notifyAll();
        return eVarRemove;
    }

    public synchronized int b() {
        return this.f.d(Integer.MAX_VALUE);
    }

    public e a(List<f> list, boolean z, boolean z2) throws IOException {
        return a(0, list, z, z2);
    }

    private e a(int i, List<f> list, boolean z, boolean z2) throws IOException {
        int i2;
        e eVar;
        boolean z3 = !z;
        boolean z4 = true;
        boolean z5 = !z2;
        synchronized (this.i) {
            synchronized (this) {
                if (this.r) {
                    throw new IOException("shutdown");
                }
                i2 = this.q;
                this.q += 2;
                eVar = new e(i2, this, z3, z5, list);
                if (z && this.f2506d != 0 && eVar.f2546b != 0) {
                    z4 = false;
                }
                if (eVar.b()) {
                    this.n.put(Integer.valueOf(i2), eVar);
                }
            }
            if (i == 0) {
                this.i.a(z3, z5, i2, i, list);
            } else {
                if (this.f2504b) {
                    throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                }
                this.i.a(i, i2, list);
            }
        }
        if (z4) {
            this.i.b();
        }
        return eVar;
    }

    public void a(int i, boolean z, d.c cVar, long j) throws IOException {
        int iMin;
        long j2;
        if (j == 0) {
            this.i.a(z, i, cVar, 0);
            return;
        }
        while (j > 0) {
            synchronized (this) {
                while (this.f2506d <= 0) {
                    try {
                        if (!this.n.containsKey(Integer.valueOf(i))) {
                            throw new IOException("stream closed");
                        }
                        wait();
                    } catch (InterruptedException unused) {
                        throw new InterruptedIOException();
                    }
                }
                iMin = Math.min((int) Math.min(j, this.f2506d), this.i.c());
                j2 = iMin;
                this.f2506d -= j2;
            }
            j -= j2;
            this.i.a(z && j == 0, i, cVar, iMin);
        }
    }

    void a(long j) {
        this.f2506d += j;
        if (j > 0) {
            notifyAll();
        }
    }

    void a(final int i, final c.a.c.a aVar) {
        l.submit(new c.a.b("OkHttp %s stream %d", new Object[]{this.o, Integer.valueOf(i)}) { // from class: c.a.c.d.1
            @Override // c.a.b
            public void b() {
                try {
                    d.this.b(i, aVar);
                } catch (IOException unused) {
                }
            }
        });
    }

    void b(int i, c.a.c.a aVar) throws IOException {
        this.i.a(i, aVar);
    }

    void a(final int i, final long j) {
        l.execute(new c.a.b("OkHttp Window Update %s stream %d", new Object[]{this.o, Integer.valueOf(i)}) { // from class: c.a.c.d.2
            @Override // c.a.b
            public void b() {
                try {
                    d.this.i.a(i, j);
                } catch (IOException unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final boolean z, final int i, final int i2, final l lVar) {
        l.execute(new c.a.b("OkHttp %s ping %08x%08x", new Object[]{this.o, Integer.valueOf(i), Integer.valueOf(i2)}) { // from class: c.a.c.d.3
            @Override // c.a.b
            public void b() {
                try {
                    d.this.b(z, i, i2, lVar);
                } catch (IOException unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z, int i, int i2, l lVar) throws IOException {
        synchronized (this.i) {
            if (lVar != null) {
                lVar.a();
                this.i.a(z, i, i2);
            } else {
                this.i.a(z, i, i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized l c(int i) {
        return this.t != null ? this.t.remove(Integer.valueOf(i)) : null;
    }

    public void c() throws IOException {
        this.i.b();
    }

    public void a(c.a.c.a aVar) throws IOException {
        synchronized (this.i) {
            synchronized (this) {
                if (this.r) {
                    return;
                }
                this.r = true;
                this.i.a(this.p, aVar, c.a.c.f2491a);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a(c.a.c.a.NO_ERROR, c.a.c.a.CANCEL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c.a.c.a aVar, c.a.c.a aVar2) throws IOException {
        e[] eVarArr;
        if (!k && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        l[] lVarArr = null;
        try {
            a(aVar);
            e = null;
        } catch (IOException e2) {
            e = e2;
        }
        synchronized (this) {
            if (this.n.isEmpty()) {
                eVarArr = null;
            } else {
                eVarArr = (e[]) this.n.values().toArray(new e[this.n.size()]);
                this.n.clear();
            }
            if (this.t != null) {
                l[] lVarArr2 = (l[]) this.t.values().toArray(new l[this.t.size()]);
                this.t = null;
                lVarArr = lVarArr2;
            }
        }
        if (eVarArr != null) {
            for (e eVar : eVarArr) {
                try {
                    eVar.a(aVar2);
                } catch (IOException e3) {
                    if (e != null) {
                        e = e3;
                    }
                }
            }
        }
        if (lVarArr != null) {
            for (l lVar : lVarArr) {
                lVar.c();
            }
        }
        try {
            this.i.close();
        } catch (IOException e4) {
            if (e == null) {
                e = e4;
            }
        }
        try {
            this.h.close();
        } catch (IOException e5) {
            e = e5;
        }
        if (e != null) {
            throw e;
        }
    }

    public void d() throws IOException {
        a(true);
    }

    void a(boolean z) throws IOException {
        if (z) {
            this.i.a();
            this.i.b(this.f2507e);
            if (this.f2507e.f(65536) != 65536) {
                this.i.a(0, r6 - 65536);
            }
        }
        new Thread(this.j).start();
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Socket f2532a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f2533b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private d.e f2534c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private d.d f2535d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private b f2536e = b.j;
        private y f = y.SPDY_3;
        private m g = m.f2616a;
        private boolean h;

        public a(boolean z) {
            this.h = z;
        }

        public a a(Socket socket, String str, d.e eVar, d.d dVar) {
            this.f2532a = socket;
            this.f2533b = str;
            this.f2534c = eVar;
            this.f2535d = dVar;
            return this;
        }

        public a a(b bVar) {
            this.f2536e = bVar;
            return this;
        }

        public a a(y yVar) {
            this.f = yVar;
            return this;
        }

        public d a() throws IOException {
            return new d(this);
        }
    }

    class c extends c.a.b implements b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final c.a.c.b f2537a;

        @Override // c.a.c.b.a
        public void a() {
        }

        @Override // c.a.c.b.a
        public void a(int i, int i2, int i3, boolean z) {
        }

        private c(c.a.c.b bVar) {
            super("OkHttp %s", d.this.o);
            this.f2537a = bVar;
        }

        @Override // c.a.b
        protected void b() {
            c.a.c.a aVar;
            d dVar;
            c.a.c.a aVar2 = c.a.c.a.INTERNAL_ERROR;
            c.a.c.a aVar3 = c.a.c.a.INTERNAL_ERROR;
            try {
                try {
                    try {
                        if (!d.this.f2504b) {
                            this.f2537a.a();
                        }
                        while (this.f2537a.a(this)) {
                        }
                        aVar2 = c.a.c.a.NO_ERROR;
                        aVar = c.a.c.a.CANCEL;
                        dVar = d.this;
                    } catch (IOException unused) {
                    }
                } catch (IOException unused2) {
                    aVar2 = c.a.c.a.PROTOCOL_ERROR;
                    aVar = c.a.c.a.PROTOCOL_ERROR;
                    dVar = d.this;
                }
                dVar.a(aVar2, aVar);
                c.a.c.a(this.f2537a);
            } catch (Throwable th) {
                try {
                    d.this.a(aVar2, aVar3);
                } catch (IOException unused3) {
                }
                c.a.c.a(this.f2537a);
                throw th;
            }
        }

        @Override // c.a.c.b.a
        public void a(boolean z, int i, d.e eVar, int i2) throws IOException {
            if (d.this.d(i)) {
                d.this.a(i, eVar, i2, z);
                return;
            }
            e eVarA = d.this.a(i);
            if (eVarA == null) {
                d.this.a(i, c.a.c.a.INVALID_STREAM);
                eVar.h(i2);
            } else {
                eVarA.a(eVar, i2);
                if (z) {
                    eVarA.i();
                }
            }
        }

        @Override // c.a.c.b.a
        public void a(boolean z, boolean z2, int i, int i2, List<f> list, g gVar) {
            if (d.this.d(i)) {
                d.this.a(i, list, z2);
                return;
            }
            synchronized (d.this) {
                if (d.this.r) {
                    return;
                }
                e eVarA = d.this.a(i);
                if (eVarA == null) {
                    if (!gVar.a()) {
                        if (i <= d.this.p) {
                            return;
                        }
                        if (i % 2 == d.this.q % 2) {
                            return;
                        }
                        final e eVar = new e(i, d.this, z, z2, list);
                        d.this.p = i;
                        d.this.n.put(Integer.valueOf(i), eVar);
                        d.l.execute(new c.a.b("OkHttp %s stream %d", new Object[]{d.this.o, Integer.valueOf(i)}) { // from class: c.a.c.d.c.1
                            @Override // c.a.b
                            public void b() {
                                try {
                                    d.this.m.a(eVar);
                                } catch (IOException e2) {
                                    c.a.f.e.b().a(4, "FramedConnection.Listener failure for " + d.this.o, e2);
                                    try {
                                        eVar.a(c.a.c.a.PROTOCOL_ERROR);
                                    } catch (IOException unused) {
                                    }
                                }
                            }
                        });
                        return;
                    }
                    d.this.a(i, c.a.c.a.INVALID_STREAM);
                    return;
                }
                if (gVar.b()) {
                    eVarA.b(c.a.c.a.PROTOCOL_ERROR);
                    d.this.b(i);
                } else {
                    eVarA.a(list, gVar);
                    if (z2) {
                        eVarA.i();
                    }
                }
            }
        }

        @Override // c.a.c.b.a
        public void a(int i, c.a.c.a aVar) {
            if (d.this.d(i)) {
                d.this.c(i, aVar);
                return;
            }
            e eVarB = d.this.b(i);
            if (eVarB != null) {
                eVarB.c(aVar);
            }
        }

        @Override // c.a.c.b.a
        public void a(boolean z, n nVar) {
            e[] eVarArr;
            long j;
            int i;
            synchronized (d.this) {
                int iF = d.this.f.f(65536);
                if (z) {
                    d.this.f.a();
                }
                d.this.f.a(nVar);
                if (d.this.a() == y.HTTP_2) {
                    a(nVar);
                }
                int iF2 = d.this.f.f(65536);
                eVarArr = null;
                if (iF2 == -1 || iF2 == iF) {
                    j = 0;
                } else {
                    j = iF2 - iF;
                    if (!d.this.w) {
                        d.this.a(j);
                        d.this.w = true;
                    }
                    if (!d.this.n.isEmpty()) {
                        eVarArr = (e[]) d.this.n.values().toArray(new e[d.this.n.size()]);
                    }
                }
                d.l.execute(new c.a.b("OkHttp %s settings", d.this.o) { // from class: c.a.c.d.c.2
                    @Override // c.a.b
                    public void b() {
                        d.this.m.a(d.this);
                    }
                });
            }
            if (eVarArr == null || j == 0) {
                return;
            }
            for (e eVar : eVarArr) {
                synchronized (eVar) {
                    eVar.a(j);
                }
            }
        }

        private void a(final n nVar) {
            d.l.execute(new c.a.b("OkHttp %s ACK Settings", new Object[]{d.this.o}) { // from class: c.a.c.d.c.3
                @Override // c.a.b
                public void b() {
                    try {
                        d.this.i.a(nVar);
                    } catch (IOException unused) {
                    }
                }
            });
        }

        @Override // c.a.c.b.a
        public void a(boolean z, int i, int i2) {
            if (z) {
                l lVarC = d.this.c(i);
                if (lVarC != null) {
                    lVarC.b();
                    return;
                }
                return;
            }
            d.this.a(true, i, i2, (l) null);
        }

        @Override // c.a.c.b.a
        public void a(int i, c.a.c.a aVar, d.f fVar) {
            e[] eVarArr;
            fVar.e();
            synchronized (d.this) {
                eVarArr = (e[]) d.this.n.values().toArray(new e[d.this.n.size()]);
                d.this.r = true;
            }
            for (e eVar : eVarArr) {
                if (eVar.a() > i && eVar.c()) {
                    eVar.c(c.a.c.a.REFUSED_STREAM);
                    d.this.b(eVar.a());
                }
            }
        }

        @Override // c.a.c.b.a
        public void a(int i, long j) {
            if (i == 0) {
                synchronized (d.this) {
                    d.this.f2506d += j;
                    d.this.notifyAll();
                }
                return;
            }
            e eVarA = d.this.a(i);
            if (eVarA != null) {
                synchronized (eVarA) {
                    eVarA.a(j);
                }
            }
        }

        @Override // c.a.c.b.a
        public void a(int i, int i2, List<f> list) {
            d.this.a(i2, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(int i) {
        return this.f2503a == y.HTTP_2 && i != 0 && (i & 1) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i, final List<f> list) {
        synchronized (this) {
            if (this.x.contains(Integer.valueOf(i))) {
                a(i, c.a.c.a.PROTOCOL_ERROR);
            } else {
                this.x.add(Integer.valueOf(i));
                this.s.execute(new c.a.b("OkHttp %s Push Request[%s]", new Object[]{this.o, Integer.valueOf(i)}) { // from class: c.a.c.d.4
                    @Override // c.a.b
                    public void b() {
                        if (d.this.u.a(i, list)) {
                            try {
                                d.this.i.a(i, c.a.c.a.CANCEL);
                                synchronized (d.this) {
                                    d.this.x.remove(Integer.valueOf(i));
                                }
                            } catch (IOException unused) {
                            }
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i, final List<f> list, final boolean z) {
        this.s.execute(new c.a.b("OkHttp %s Push Headers[%s]", new Object[]{this.o, Integer.valueOf(i)}) { // from class: c.a.c.d.5
            @Override // c.a.b
            public void b() {
                boolean zA = d.this.u.a(i, list, z);
                if (zA) {
                    try {
                        d.this.i.a(i, c.a.c.a.CANCEL);
                    } catch (IOException unused) {
                        return;
                    }
                }
                if (zA || z) {
                    synchronized (d.this) {
                        d.this.x.remove(Integer.valueOf(i));
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i, d.e eVar, final int i2, final boolean z) throws IOException {
        final d.c cVar = new d.c();
        long j = i2;
        eVar.a(j);
        eVar.a(cVar, j);
        if (cVar.b() != j) {
            throw new IOException(cVar.b() + " != " + i2);
        }
        this.s.execute(new c.a.b("OkHttp %s Push Data[%s]", new Object[]{this.o, Integer.valueOf(i)}) { // from class: c.a.c.d.6
            @Override // c.a.b
            public void b() {
                try {
                    boolean zA = d.this.u.a(i, cVar, i2, z);
                    if (zA) {
                        d.this.i.a(i, c.a.c.a.CANCEL);
                    }
                    if (zA || z) {
                        synchronized (d.this) {
                            d.this.x.remove(Integer.valueOf(i));
                        }
                    }
                } catch (IOException unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final int i, final c.a.c.a aVar) {
        this.s.execute(new c.a.b("OkHttp %s Push Reset[%s]", new Object[]{this.o, Integer.valueOf(i)}) { // from class: c.a.c.d.7
            @Override // c.a.b
            public void b() {
                d.this.u.a(i, aVar);
                synchronized (d.this) {
                    d.this.x.remove(Integer.valueOf(i));
                }
            }
        });
    }
}
