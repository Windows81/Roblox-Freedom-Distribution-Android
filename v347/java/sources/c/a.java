package c;

import java.io.IOException;
import java.io.InterruptedIOException;

/* JADX INFO: loaded from: classes.dex */
public class a extends t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f2118a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2119c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f2120d;
    private long e;

    public final void c() {
        if (this.f2119c) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long jY_ = y_();
        boolean zZ_ = z_();
        if (jY_ != 0 || zZ_) {
            this.f2119c = true;
            a(this, jY_, zZ_);
        }
    }

    private static synchronized void a(a aVar, long j, boolean z) {
        if (f2118a == null) {
            f2118a = new a();
            new C0043a().start();
        }
        long jNanoTime = System.nanoTime();
        if (j != 0 && z) {
            aVar.e = Math.min(j, aVar.d() - jNanoTime) + jNanoTime;
        } else if (j != 0) {
            aVar.e = jNanoTime + j;
        } else if (z) {
            aVar.e = aVar.d();
        } else {
            throw new AssertionError();
        }
        long jB = aVar.b(jNanoTime);
        a aVar2 = f2118a;
        while (aVar2.f2120d != null && jB >= aVar2.f2120d.b(jNanoTime)) {
            aVar2 = aVar2.f2120d;
        }
        aVar.f2120d = aVar2.f2120d;
        aVar2.f2120d = aVar;
        if (aVar2 == f2118a) {
            a.class.notify();
        }
    }

    public final boolean x_() {
        if (!this.f2119c) {
            return false;
        }
        this.f2119c = false;
        return a(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000b, code lost:
    
        r0.f2120d = r3.f2120d;
        r3.f2120d = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0012, code lost:
    
        r0 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static synchronized boolean a(c.a r3) {
        /*
            java.lang.Class<c.a> r1 = c.a.class
            monitor-enter(r1)
            c.a r0 = c.a.f2118a     // Catch: java.lang.Throwable -> L1a
        L5:
            if (r0 == 0) goto L18
            c.a r2 = r0.f2120d     // Catch: java.lang.Throwable -> L1a
            if (r2 != r3) goto L15
            c.a r2 = r3.f2120d     // Catch: java.lang.Throwable -> L1a
            r0.f2120d = r2     // Catch: java.lang.Throwable -> L1a
            r0 = 0
            r3.f2120d = r0     // Catch: java.lang.Throwable -> L1a
            r0 = 0
        L13:
            monitor-exit(r1)
            return r0
        L15:
            c.a r0 = r0.f2120d     // Catch: java.lang.Throwable -> L1a
            goto L5
        L18:
            r0 = 1
            goto L13
        L1a:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.a(c.a):boolean");
    }

    private long b(long j) {
        return this.e - j;
    }

    protected void a() {
    }

    public final r a(final r rVar) {
        return new r() { // from class: c.a.1
            @Override // c.r
            public void a_(c cVar, long j) throws IOException {
                u.a(cVar.f2129b, 0L, j);
                long j2 = j;
                while (j2 > 0) {
                    o oVar = cVar.f2128a;
                    long j3 = 0;
                    while (true) {
                        if (j3 >= 65536) {
                            break;
                        }
                        long j4 = ((long) (cVar.f2128a.f2164c - cVar.f2128a.f2163b)) + j3;
                        if (j4 >= j2) {
                            j3 = j2;
                            break;
                        } else {
                            oVar = oVar.f;
                            j3 = j4;
                        }
                    }
                    a.this.c();
                    try {
                        try {
                            rVar.a_(cVar, j3);
                            j2 -= j3;
                            a.this.a(true);
                        } catch (IOException e) {
                            throw a.this.b(e);
                        }
                    } catch (Throwable th) {
                        a.this.a(false);
                        throw th;
                    }
                }
            }

            @Override // c.r, java.io.Flushable
            public void flush() throws IOException {
                a.this.c();
                try {
                    try {
                        rVar.flush();
                        a.this.a(true);
                    } catch (IOException e) {
                        throw a.this.b(e);
                    }
                } catch (Throwable th) {
                    a.this.a(false);
                    throw th;
                }
            }

            @Override // c.r, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                a.this.c();
                try {
                    try {
                        rVar.close();
                        a.this.a(true);
                    } catch (IOException e) {
                        throw a.this.b(e);
                    }
                } catch (Throwable th) {
                    a.this.a(false);
                    throw th;
                }
            }

            @Override // c.r
            public t a() {
                return a.this;
            }

            public String toString() {
                return "AsyncTimeout.sink(" + rVar + ")";
            }
        };
    }

    public final s a(final s sVar) {
        return new s() { // from class: c.a.2
            @Override // c.s
            public long a(c cVar, long j) throws IOException {
                a.this.c();
                try {
                    try {
                        long jA = sVar.a(cVar, j);
                        a.this.a(true);
                        return jA;
                    } catch (IOException e) {
                        throw a.this.b(e);
                    }
                } catch (Throwable th) {
                    a.this.a(false);
                    throw th;
                }
            }

            @Override // c.s, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                try {
                    try {
                        sVar.close();
                        a.this.a(true);
                    } catch (IOException e) {
                        throw a.this.b(e);
                    }
                } catch (Throwable th) {
                    a.this.a(false);
                    throw th;
                }
            }

            @Override // c.s
            public t a() {
                return a.this;
            }

            public String toString() {
                return "AsyncTimeout.source(" + sVar + ")";
            }
        };
    }

    final void a(boolean z) throws IOException {
        if (x_() && z) {
            throw a((IOException) null);
        }
    }

    final IOException b(IOException iOException) throws IOException {
        return !x_() ? iOException : a(iOException);
    }

    protected IOException a(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* JADX INFO: renamed from: c.a$a, reason: collision with other inner class name */
    private static final class C0043a extends Thread {
        public C0043a() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    a aVarE = a.e();
                    if (aVarE != null) {
                        aVarE.a();
                    }
                } catch (InterruptedException e) {
                }
            }
        }
    }

    static synchronized a e() throws InterruptedException {
        a aVar = null;
        synchronized (a.class) {
            a aVar2 = f2118a.f2120d;
            if (aVar2 == null) {
                a.class.wait();
            } else {
                long jB = aVar2.b(System.nanoTime());
                if (jB > 0) {
                    long j = jB / 1000000;
                    a.class.wait(j, (int) (jB - (1000000 * j)));
                } else {
                    f2118a.f2120d = aVar2.f2120d;
                    aVar2.f2120d = null;
                    aVar = aVar2;
                }
            }
        }
        return aVar;
    }
}
