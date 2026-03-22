package b.a.a;

import c.r;
import c.t;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class d implements Closeable, Flushable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Pattern f1750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final /* synthetic */ boolean f1751b;
    private static final r p;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b.a.e.a f1752c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f1753d;
    private final int e;
    private long f;
    private c.d g;
    private final LinkedHashMap<String, b> h;
    private int i;
    private boolean j;
    private boolean k;
    private boolean l;
    private long m;
    private final Executor n;
    private final Runnable o;

    static {
        f1751b = !d.class.desiredAssertionStatus();
        f1750a = Pattern.compile("[a-z0-9_-]{1,120}");
        p = new r() { // from class: b.a.a.d.1
            @Override // c.r
            public void a_(c.c cVar, long j) throws IOException {
                cVar.h(j);
            }

            @Override // c.r, java.io.Flushable
            public void flush() throws IOException {
            }

            @Override // c.r
            public t a() {
                return t.f2168b;
            }

            @Override // c.r, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0060 A[Catch: all -> 0x0012, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000c, B:7:0x0011, B:12:0x0017, B:15:0x001e, B:17:0x0022, B:19:0x002a, B:20:0x0045, B:21:0x0046, B:23:0x0054, B:27:0x005c, B:29:0x0060, B:31:0x0068, B:33:0x0070, B:34:0x0094, B:35:0x0097, B:36:0x009d, B:38:0x00ae, B:40:0x00d6, B:41:0x00e0, B:43:0x00ed, B:45:0x00f3, B:46:0x00fc), top: B:48:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ae A[Catch: all -> 0x0012, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000c, B:7:0x0011, B:12:0x0017, B:15:0x001e, B:17:0x0022, B:19:0x002a, B:20:0x0045, B:21:0x0046, B:23:0x0054, B:27:0x005c, B:29:0x0060, B:31:0x0068, B:33:0x0070, B:34:0x0094, B:35:0x0097, B:36:0x009d, B:38:0x00ae, B:40:0x00d6, B:41:0x00e0, B:43:0x00ed, B:45:0x00f3, B:46:0x00fc), top: B:48:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f3 A[Catch: all -> 0x0012, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000c, B:7:0x0011, B:12:0x0017, B:15:0x001e, B:17:0x0022, B:19:0x002a, B:20:0x0045, B:21:0x0046, B:23:0x0054, B:27:0x005c, B:29:0x0060, B:31:0x0068, B:33:0x0070, B:34:0x0094, B:35:0x0097, B:36:0x009d, B:38:0x00ae, B:40:0x00d6, B:41:0x00e0, B:43:0x00ed, B:45:0x00f3, B:46:0x00fc), top: B:48:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00fc A[Catch: all -> 0x0012, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000c, B:7:0x0011, B:12:0x0017, B:15:0x001e, B:17:0x0022, B:19:0x002a, B:20:0x0045, B:21:0x0046, B:23:0x0054, B:27:0x005c, B:29:0x0060, B:31:0x0068, B:33:0x0070, B:34:0x0094, B:35:0x0097, B:36:0x009d, B:38:0x00ae, B:40:0x00d6, B:41:0x00e0, B:43:0x00ed, B:45:0x00f3, B:46:0x00fc), top: B:48:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void a(b.a.a.d.a r11, boolean r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 291
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b.a.a.d.a(b.a.a.d$a, boolean):void");
    }

    private boolean b() {
        return this.i >= 2000 && this.i >= this.h.size();
    }

    private boolean a(b bVar) throws IOException {
        if (bVar.f != null) {
            bVar.f.a();
        }
        for (int i = 0; i < this.e; i++) {
            this.f1752c.a(bVar.f1760c[i]);
            this.f -= bVar.f1759b[i];
            bVar.f1759b[i] = 0;
        }
        this.i++;
        this.g.b("REMOVE").i(32).b(bVar.f1758a).i(10);
        this.h.remove(bVar.f1758a);
        if (b()) {
            this.n.execute(this.o);
            return true;
        }
        return true;
    }

    public synchronized boolean a() {
        return this.k;
    }

    private synchronized void c() {
        if (a()) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @Override // java.io.Flushable
    public synchronized void flush() throws IOException {
        if (this.j) {
            c();
            d();
            this.g.flush();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (!this.j || this.k) {
            this.k = true;
        } else {
            for (b bVar : (b[]) this.h.values().toArray(new b[this.h.size()])) {
                if (bVar.f != null) {
                    bVar.f.b();
                }
            }
            d();
            this.g.close();
            this.g = null;
            this.k = true;
        }
    }

    private void d() throws IOException {
        while (this.f > this.f1753d) {
            a(this.h.values().iterator().next());
        }
        this.l = false;
    }

    public final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f1754a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final b f1755b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean[] f1756c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1757d;

        void a() {
            if (this.f1755b.f == this) {
                for (int i = 0; i < this.f1754a.e; i++) {
                    try {
                        this.f1754a.f1752c.a(this.f1755b.f1761d[i]);
                    } catch (IOException e) {
                    }
                }
                this.f1755b.f = null;
            }
        }

        public void b() throws IOException {
            synchronized (this.f1754a) {
                if (this.f1757d) {
                    throw new IllegalStateException();
                }
                if (this.f1755b.f == this) {
                    this.f1754a.a(this, false);
                }
                this.f1757d = true;
            }
        }
    }

    private final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f1758a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long[] f1759b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final File[] f1760c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final File[] f1761d;
        private boolean e;
        private a f;
        private long g;

        void a(c.d dVar) throws IOException {
            for (long j : this.f1759b) {
                dVar.i(32).l(j);
            }
        }
    }
}
