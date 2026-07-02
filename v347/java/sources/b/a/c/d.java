package b.a.c;

import b.a.c.b;
import b.x;
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

/* JADX INFO: loaded from: classes.dex */
public final class d implements Closeable {
    static final /* synthetic */ boolean k;
    private static final ExecutorService l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final x f1793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final boolean f1794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f1795c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f1796d;
    n e;
    final n f;
    final q g;
    final Socket h;
    final b.a.c.c i;
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

    static {
        k = !d.class.desiredAssertionStatus();
        l = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), b.a.c.a("OkHttp FramedConnection", true));
    }

    private d(a aVar) {
        this.n = new HashMap();
        this.f1795c = 0L;
        this.e = new n();
        this.f = new n();
        this.w = false;
        this.x = new LinkedHashSet();
        this.f1793a = aVar.f;
        this.u = aVar.g;
        this.f1794b = aVar.h;
        this.m = aVar.e;
        this.q = aVar.h ? 1 : 2;
        if (aVar.h && this.f1793a == x.HTTP_2) {
            this.q += 2;
        }
        this.v = aVar.h ? 1 : 2;
        if (aVar.h) {
            this.e.a(7, 0, 16777216);
        }
        this.o = aVar.f1819b;
        if (this.f1793a == x.HTTP_2) {
            this.g = new i();
            this.s = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), b.a.c.a(b.a.c.a("OkHttp %s Push Observer", this.o), true));
            this.f.a(7, 0, 65535);
            this.f.a(5, 0, 16384);
        } else if (this.f1793a == x.SPDY_3) {
            this.g = new o();
            this.s = null;
        } else {
            throw new AssertionError(this.f1793a);
        }
        this.f1796d = this.f.f(65536);
        this.h = aVar.f1818a;
        this.i = this.g.a(aVar.f1821d, this.f1794b);
        this.j = new c(this.g.a(aVar.f1820c, this.f1794b));
    }

    public x a() {
        return this.f1793a;
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
        boolean z3;
        boolean z4 = !z;
        boolean z5 = !z2;
        synchronized (this.i) {
            synchronized (this) {
                if (this.r) {
                    throw new IOException("shutdown");
                }
                i2 = this.q;
                this.q += 2;
                eVar = new e(i2, this, z4, z5, list);
                z3 = !z || this.f1796d == 0 || eVar.f1831b == 0;
                if (eVar.b()) {
                    this.n.put(Integer.valueOf(i2), eVar);
                }
            }
            if (i == 0) {
                this.i.a(z4, z5, i2, i, list);
            } else {
                if (this.f1794b) {
                    throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                }
                this.i.a(i, i2, list);
            }
        }
        if (z3) {
            this.i.b();
        }
        return eVar;
    }

    public void a(int i, boolean z, c.c cVar, long j) throws IOException {
        int iMin;
        if (j == 0) {
            this.i.a(z, i, cVar, 0);
            return;
        }
        while (j > 0) {
            synchronized (this) {
                while (this.f1796d <= 0) {
                    try {
                        if (!this.n.containsKey(Integer.valueOf(i))) {
                            throw new IOException("stream closed");
                        }
                        wait();
                    } catch (InterruptedException e) {
                        throw new InterruptedIOException();
                    }
                }
                iMin = Math.min((int) Math.min(j, this.f1796d), this.i.c());
                this.f1796d -= (long) iMin;
            }
            j -= (long) iMin;
            this.i.a(z && j == 0, i, cVar, iMin);
        }
    }

    void a(long j) {
        this.f1796d += j;
        if (j > 0) {
            notifyAll();
        }
    }

    void a(final int i, final b.a.c.a aVar) {
        l.submit(new b.a.b("OkHttp %s stream %d", new Object[]{this.o, Integer.valueOf(i)}) { // from class: b.a.c.d.1
            @Override // b.a.b
            public void b() {
                try {
                    d.this.b(i, aVar);
                } catch (IOException e) {
                }
            }
        });
    }

    void b(int i, b.a.c.a aVar) throws IOException {
        this.i.a(i, aVar);
    }

    void a(final int i, final long j) {
        l.execute(new b.a.b("OkHttp Window Update %s stream %d", new Object[]{this.o, Integer.valueOf(i)}) { // from class: b.a.c.d.2
            @Override // b.a.b
            public void b() {
                try {
                    d.this.i.a(i, j);
                } catch (IOException e) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final boolean z, final int i, final int i2, final l lVar) {
        l.execute(new b.a.b("OkHttp %s ping %08x%08x", new Object[]{this.o, Integer.valueOf(i), Integer.valueOf(i2)}) { // from class: b.a.c.d.3
            @Override // b.a.b
            public void b() {
                try {
                    d.this.b(z, i, i2, lVar);
                } catch (IOException e) {
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

    public void a(b.a.c.a aVar) throws IOException {
        synchronized (this.i) {
            synchronized (this) {
                if (!this.r) {
                    this.r = true;
                    this.i.a(this.p, aVar, b.a.c.f1783a);
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a(b.a.c.a.NO_ERROR, b.a.c.a.CANCEL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(b.a.c.a aVar, b.a.c.a aVar2) throws IOException {
        IOException iOException;
        e[] eVarArr;
        l[] lVarArr;
        if (!k && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        try {
            a(aVar);
            iOException = null;
        } catch (IOException e) {
            iOException = e;
        }
        synchronized (this) {
            if (this.n.isEmpty()) {
                eVarArr = null;
            } else {
                e[] eVarArr2 = (e[]) this.n.values().toArray(new e[this.n.size()]);
                this.n.clear();
                eVarArr = eVarArr2;
            }
            if (this.t != null) {
                l[] lVarArr2 = (l[]) this.t.values().toArray(new l[this.t.size()]);
                this.t = null;
                lVarArr = lVarArr2;
            } else {
                lVarArr = null;
            }
        }
        if (eVarArr != null) {
            IOException iOException2 = iOException;
            for (e eVar : eVarArr) {
                try {
                    eVar.a(aVar2);
                } catch (IOException e2) {
                    if (iOException2 != null) {
                        iOException2 = e2;
                    }
                }
            }
            iOException = iOException2;
        }
        if (lVarArr != null) {
            for (l lVar : lVarArr) {
                lVar.c();
            }
        }
        try {
            this.i.close();
            e = iOException;
        } catch (IOException e3) {
            e = e3;
            if (iOException != null) {
                e = iOException;
            }
        }
        try {
            this.h.close();
        } catch (IOException e4) {
            e = e4;
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
            this.i.b(this.e);
            if (this.e.f(65536) != 65536) {
                this.i.a(0, r0 - 65536);
            }
        }
        new Thread(this.j).start();
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Socket f1818a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f1819b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private c.e f1820c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private c.d f1821d;
        private b e = b.j;
        private x f = x.SPDY_3;
        private m g = m.f1892a;
        private boolean h;

        public a(boolean z) {
            this.h = z;
        }

        public a a(Socket socket, String str, c.e eVar, c.d dVar) {
            this.f1818a = socket;
            this.f1819b = str;
            this.f1820c = eVar;
            this.f1821d = dVar;
            return this;
        }

        public a a(b bVar) {
            this.e = bVar;
            return this;
        }

        public a a(x xVar) {
            this.f = xVar;
            return this;
        }

        public d a() throws IOException {
            return new d(this);
        }
    }

    class c extends b.a.b implements b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final b.a.c.b f1822a;

        private c(b.a.c.b bVar) {
            super("OkHttp %s", d.this.o);
            this.f1822a = bVar;
        }

        @Override // b.a.b
        protected void b() throws Throwable {
            b.a.c.a aVar;
            Throwable th;
            b.a.c.a aVar2 = b.a.c.a.INTERNAL_ERROR;
            b.a.c.a aVar3 = b.a.c.a.INTERNAL_ERROR;
            try {
                try {
                    if (!d.this.f1794b) {
                        this.f1822a.a();
                    }
                    while (this.f1822a.a(this)) {
                    }
                    aVar2 = b.a.c.a.NO_ERROR;
                    try {
                        d.this.a(aVar2, b.a.c.a.CANCEL);
                    } catch (IOException e) {
                    }
                    b.a.c.a(this.f1822a);
                } catch (IOException e2) {
                    aVar = b.a.c.a.PROTOCOL_ERROR;
                    try {
                        try {
                            d.this.a(aVar, b.a.c.a.PROTOCOL_ERROR);
                        } catch (IOException e3) {
                        }
                        b.a.c.a(this.f1822a);
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            d.this.a(aVar, aVar3);
                        } catch (IOException e4) {
                        }
                        b.a.c.a(this.f1822a);
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                aVar = aVar2;
                th = th3;
                d.this.a(aVar, aVar3);
                b.a.c.a(this.f1822a);
                throw th;
            }
        }

        @Override // b.a.c.b.a
        public void a(boolean z, int i, c.e eVar, int i2) throws IOException {
            if (d.this.d(i)) {
                d.this.a(i, eVar, i2, z);
                return;
            }
            e eVarA = d.this.a(i);
            if (eVarA == null) {
                d.this.a(i, b.a.c.a.INVALID_STREAM);
                eVar.h(i2);
            } else {
                eVarA.a(eVar, i2);
                if (z) {
                    eVarA.i();
                }
            }
        }

        @Override // b.a.c.b.a
        public void a(boolean z, boolean z2, int i, int i2, List<f> list, g gVar) {
            if (d.this.d(i)) {
                d.this.a(i, list, z2);
                return;
            }
            synchronized (d.this) {
                if (!d.this.r) {
                    e eVarA = d.this.a(i);
                    if (eVarA == null) {
                        if (!gVar.a()) {
                            if (i > d.this.p) {
                                if (i % 2 != d.this.q % 2) {
                                    final e eVar = new e(i, d.this, z, z2, list);
                                    d.this.p = i;
                                    d.this.n.put(Integer.valueOf(i), eVar);
                                    d.l.execute(new b.a.b("OkHttp %s stream %d", new Object[]{d.this.o, Integer.valueOf(i)}) { // from class: b.a.c.d.c.1
                                        @Override // b.a.b
                                        public void b() {
                                            try {
                                                d.this.m.a(eVar);
                                            } catch (IOException e) {
                                                b.a.f.e.b().a(4, "FramedConnection.Listener failure for " + d.this.o, e);
                                                try {
                                                    eVar.a(b.a.c.a.PROTOCOL_ERROR);
                                                } catch (IOException e2) {
                                                }
                                            }
                                        }
                                    });
                                }
                            }
                        } else {
                            d.this.a(i, b.a.c.a.INVALID_STREAM);
                        }
                    } else if (gVar.b()) {
                        eVarA.b(b.a.c.a.PROTOCOL_ERROR);
                        d.this.b(i);
                    } else {
                        eVarA.a(list, gVar);
                        if (z2) {
                            eVarA.i();
                        }
                    }
                }
            }
        }

        @Override // b.a.c.b.a
        public void a(int i, b.a.c.a aVar) {
            if (d.this.d(i)) {
                d.this.c(i, aVar);
                return;
            }
            e eVarB = d.this.b(i);
            if (eVarB != null) {
                eVarB.c(aVar);
            }
        }

        @Override // b.a.c.b.a
        public void a(boolean z, n nVar) {
            e[] eVarArr;
            long j;
            synchronized (d.this) {
                int iF = d.this.f.f(65536);
                if (z) {
                    d.this.f.a();
                }
                d.this.f.a(nVar);
                if (d.this.a() == x.HTTP_2) {
                    a(nVar);
                }
                int iF2 = d.this.f.f(65536);
                if (iF2 == -1 || iF2 == iF) {
                    eVarArr = null;
                    j = 0;
                } else {
                    long j2 = iF2 - iF;
                    if (!d.this.w) {
                        d.this.a(j2);
                        d.this.w = true;
                    }
                    if (!d.this.n.isEmpty()) {
                        j = j2;
                        eVarArr = (e[]) d.this.n.values().toArray(new e[d.this.n.size()]);
                    } else {
                        j = j2;
                        eVarArr = null;
                    }
                }
                d.l.execute(new b.a.b("OkHttp %s settings", d.this.o) { // from class: b.a.c.d.c.2
                    @Override // b.a.b
                    public void b() {
                        d.this.m.a(d.this);
                    }
                });
            }
            if (eVarArr != null && j != 0) {
                for (e eVar : eVarArr) {
                    synchronized (eVar) {
                        eVar.a(j);
                    }
                }
            }
        }

        private void a(final n nVar) {
            d.l.execute(new b.a.b("OkHttp %s ACK Settings", new Object[]{d.this.o}) { // from class: b.a.c.d.c.3
                @Override // b.a.b
                public void b() {
                    try {
                        d.this.i.a(nVar);
                    } catch (IOException e) {
                    }
                }
            });
        }

        @Override // b.a.c.b.a
        public void a() {
        }

        @Override // b.a.c.b.a
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

        @Override // b.a.c.b.a
        public void a(int i, b.a.c.a aVar, c.f fVar) {
            e[] eVarArr;
            if (fVar.e() > 0) {
            }
            synchronized (d.this) {
                eVarArr = (e[]) d.this.n.values().toArray(new e[d.this.n.size()]);
                d.this.r = true;
            }
            for (e eVar : eVarArr) {
                if (eVar.a() > i && eVar.c()) {
                    eVar.c(b.a.c.a.REFUSED_STREAM);
                    d.this.b(eVar.a());
                }
            }
        }

        @Override // b.a.c.b.a
        public void a(int i, long j) {
            if (i == 0) {
                synchronized (d.this) {
                    d.this.f1796d += j;
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

        @Override // b.a.c.b.a
        public void a(int i, int i2, int i3, boolean z) {
        }

        @Override // b.a.c.b.a
        public void a(int i, int i2, List<f> list) {
            d.this.a(i2, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(int i) {
        return this.f1793a == x.HTTP_2 && i != 0 && (i & 1) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i, final List<f> list) {
        synchronized (this) {
            if (this.x.contains(Integer.valueOf(i))) {
                a(i, b.a.c.a.PROTOCOL_ERROR);
            } else {
                this.x.add(Integer.valueOf(i));
                this.s.execute(new b.a.b("OkHttp %s Push Request[%s]", new Object[]{this.o, Integer.valueOf(i)}) { // from class: b.a.c.d.4
                    @Override // b.a.b
                    public void b() {
                        if (d.this.u.a(i, list)) {
                            try {
                                d.this.i.a(i, b.a.c.a.CANCEL);
                                synchronized (d.this) {
                                    d.this.x.remove(Integer.valueOf(i));
                                }
                            } catch (IOException e) {
                            }
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i, final List<f> list, final boolean z) {
        this.s.execute(new b.a.b("OkHttp %s Push Headers[%s]", new Object[]{this.o, Integer.valueOf(i)}) { // from class: b.a.c.d.5
            @Override // b.a.b
            public void b() {
                boolean zA = d.this.u.a(i, list, z);
                if (zA) {
                    try {
                        d.this.i.a(i, b.a.c.a.CANCEL);
                    } catch (IOException e) {
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
    public void a(final int i, c.e eVar, final int i2, final boolean z) throws IOException {
        final c.c cVar = new c.c();
        eVar.a(i2);
        eVar.a(cVar, i2);
        if (cVar.b() != i2) {
            throw new IOException(cVar.b() + " != " + i2);
        }
        this.s.execute(new b.a.b("OkHttp %s Push Data[%s]", new Object[]{this.o, Integer.valueOf(i)}) { // from class: b.a.c.d.6
            @Override // b.a.b
            public void b() {
                try {
                    boolean zA = d.this.u.a(i, cVar, i2, z);
                    if (zA) {
                        d.this.i.a(i, b.a.c.a.CANCEL);
                    }
                    if (zA || z) {
                        synchronized (d.this) {
                            d.this.x.remove(Integer.valueOf(i));
                        }
                    }
                } catch (IOException e) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final int i, final b.a.c.a aVar) {
        this.s.execute(new b.a.b("OkHttp %s Push Reset[%s]", new Object[]{this.o, Integer.valueOf(i)}) { // from class: b.a.c.d.7
            @Override // b.a.b
            public void b() {
                d.this.u.a(i, aVar);
                synchronized (d.this) {
                    d.this.x.remove(Integer.valueOf(i));
                }
            }
        });
    }

    public static abstract class b {
        public static final b j = new b() { // from class: b.a.c.d.b.1
            @Override // b.a.c.d.b
            public void a(e eVar) throws IOException {
                eVar.a(b.a.c.a.REFUSED_STREAM);
            }
        };

        public abstract void a(e eVar) throws IOException;

        public void a(d dVar) {
        }
    }
}
