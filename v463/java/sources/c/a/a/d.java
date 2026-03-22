package c.a.a;

import d.r;
import d.t;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class d implements Closeable, Flushable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c.a.e.a f2455c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f2456d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f2457e;
    private long f;
    private d.d g;
    private final LinkedHashMap<String, b> h;
    private int i;
    private boolean j;
    private boolean k;
    private boolean l;
    private long m;
    private final Executor n;
    private final Runnable o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final /* synthetic */ boolean f2454b = !d.class.desiredAssertionStatus();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Pattern f2453a = Pattern.compile("[a-z0-9_-]{1,120}");
    private static final r p = new r() { // from class: c.a.a.d.1
        @Override // d.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // d.r, java.io.Flushable
        public void flush() throws IOException {
        }

        @Override // d.r
        public void a_(d.c cVar, long j) throws IOException {
            cVar.h(j);
        }

        @Override // d.r
        public t a() {
            return t.f7804b;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(a aVar, boolean z) throws IOException {
        b bVar = aVar.f2459b;
        if (bVar.f != aVar) {
            throw new IllegalStateException();
        }
        if (z && !bVar.f2466e) {
            for (int i = 0; i < this.f2457e; i++) {
                if (!aVar.f2460c[i]) {
                    aVar.b();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!this.f2455c.b(bVar.f2465d[i])) {
                    aVar.b();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.f2457e; i2++) {
            File file = bVar.f2465d[i2];
            if (z) {
                if (this.f2455c.b(file)) {
                    File file2 = bVar.f2464c[i2];
                    this.f2455c.a(file, file2);
                    long j = bVar.f2463b[i2];
                    long jC = this.f2455c.c(file2);
                    bVar.f2463b[i2] = jC;
                    this.f = (this.f - j) + jC;
                }
            } else {
                this.f2455c.a(file);
            }
        }
        this.i++;
        bVar.f = null;
        if (bVar.f2466e | z) {
            bVar.f2466e = true;
            this.g.b("CLEAN").i(32);
            this.g.b(bVar.f2462a);
            bVar.a(this.g);
            this.g.i(10);
            if (z) {
                long j2 = this.m;
                this.m = 1 + j2;
                bVar.g = j2;
            }
        } else {
            this.h.remove(bVar.f2462a);
            this.g.b("REMOVE").i(32);
            this.g.b(bVar.f2462a);
            this.g.i(10);
        }
        this.g.flush();
        if (this.f > this.f2456d || b()) {
            this.n.execute(this.o);
        }
    }

    private boolean b() {
        int i = this.i;
        return i >= 2000 && i >= this.h.size();
    }

    private boolean a(b bVar) throws IOException {
        if (bVar.f != null) {
            bVar.f.a();
        }
        for (int i = 0; i < this.f2457e; i++) {
            this.f2455c.a(bVar.f2464c[i]);
            this.f -= bVar.f2463b[i];
            bVar.f2463b[i] = 0;
        }
        this.i++;
        this.g.b("REMOVE").i(32).b(bVar.f2462a).i(10);
        this.h.remove(bVar.f2462a);
        if (b()) {
            this.n.execute(this.o);
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
        if (this.j && !this.k) {
            for (b bVar : (b[]) this.h.values().toArray(new b[this.h.size()])) {
                if (bVar.f != null) {
                    bVar.f.b();
                }
            }
            d();
            this.g.close();
            this.g = null;
            this.k = true;
            return;
        }
        this.k = true;
    }

    private void d() throws IOException {
        while (this.f > this.f2456d) {
            a(this.h.values().iterator().next());
        }
        this.l = false;
    }

    public final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f2458a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final b f2459b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean[] f2460c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f2461d;

        void a() {
            if (this.f2459b.f == this) {
                for (int i = 0; i < this.f2458a.f2457e; i++) {
                    try {
                        this.f2458a.f2455c.a(this.f2459b.f2465d[i]);
                    } catch (IOException unused) {
                    }
                }
                this.f2459b.f = null;
            }
        }

        public void b() throws IOException {
            synchronized (this.f2458a) {
                if (this.f2461d) {
                    throw new IllegalStateException();
                }
                if (this.f2459b.f == this) {
                    this.f2458a.a(this, false);
                }
                this.f2461d = true;
            }
        }
    }

    private final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f2462a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long[] f2463b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final File[] f2464c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final File[] f2465d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f2466e;
        private a f;
        private long g;

        void a(d.d dVar) throws IOException {
            for (long j : this.f2463b) {
                dVar.i(32).l(j);
            }
        }
    }
}
