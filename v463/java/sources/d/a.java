package d;

import java.io.IOException;
import java.io.InterruptedIOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f7750a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f7751c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f7752d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f7753e;

    protected void a() {
    }

    public final void c() {
        if (this.f7751c) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long jS_ = s_();
        boolean zT_ = t_();
        if (jS_ != 0 || zT_) {
            this.f7751c = true;
            a(this, jS_, zT_);
        }
    }

    private static synchronized void a(a aVar, long j, boolean z) {
        if (f7750a == null) {
            f7750a = new a();
            new C0185a().start();
        }
        long jNanoTime = System.nanoTime();
        if (j != 0 && z) {
            aVar.f7753e = Math.min(j, aVar.d() - jNanoTime) + jNanoTime;
        } else if (j != 0) {
            aVar.f7753e = j + jNanoTime;
        } else if (z) {
            aVar.f7753e = aVar.d();
        } else {
            throw new AssertionError();
        }
        long jB = aVar.b(jNanoTime);
        a aVar2 = f7750a;
        while (aVar2.f7752d != null && jB >= aVar2.f7752d.b(jNanoTime)) {
            aVar2 = aVar2.f7752d;
        }
        aVar.f7752d = aVar2.f7752d;
        aVar2.f7752d = aVar;
        if (aVar2 == f7750a) {
            a.class.notify();
        }
    }

    public final boolean r_() {
        if (!this.f7751c) {
            return false;
        }
        this.f7751c = false;
        return a(this);
    }

    private static synchronized boolean a(a aVar) {
        for (a aVar2 = f7750a; aVar2 != null; aVar2 = aVar2.f7752d) {
            if (aVar2.f7752d == aVar) {
                aVar2.f7752d = aVar.f7752d;
                aVar.f7752d = null;
                return false;
            }
        }
        return true;
    }

    private long b(long j) {
        return this.f7753e - j;
    }

    public final r a(final r rVar) {
        return new r() { // from class: d.a.1
            @Override // d.r
            public void a_(c cVar, long j) throws IOException {
                u.a(cVar.f7762b, 0L, j);
                while (true) {
                    long j2 = 0;
                    if (j <= 0) {
                        return;
                    }
                    o oVar = cVar.f7761a;
                    while (true) {
                        if (j2 >= 65536) {
                            break;
                        }
                        j2 += (long) (cVar.f7761a.f7799c - cVar.f7761a.f7798b);
                        if (j2 >= j) {
                            j2 = j;
                            break;
                        }
                        oVar = oVar.f;
                    }
                    a.this.c();
                    try {
                        try {
                            rVar.a_(cVar, j2);
                            j -= j2;
                            a.this.a(true);
                        } catch (IOException e2) {
                            throw a.this.b(e2);
                        }
                    } catch (Throwable th) {
                        a.this.a(false);
                        throw th;
                    }
                }
            }

            @Override // d.r, java.io.Flushable
            public void flush() throws IOException {
                a.this.c();
                try {
                    try {
                        rVar.flush();
                        a.this.a(true);
                    } catch (IOException e2) {
                        throw a.this.b(e2);
                    }
                } catch (Throwable th) {
                    a.this.a(false);
                    throw th;
                }
            }

            @Override // d.r, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                a.this.c();
                try {
                    try {
                        rVar.close();
                        a.this.a(true);
                    } catch (IOException e2) {
                        throw a.this.b(e2);
                    }
                } catch (Throwable th) {
                    a.this.a(false);
                    throw th;
                }
            }

            @Override // d.r
            public t a() {
                return a.this;
            }

            public String toString() {
                return "AsyncTimeout.sink(" + rVar + ")";
            }
        };
    }

    public final s a(final s sVar) {
        return new s() { // from class: d.a.2
            @Override // d.s
            public long a(c cVar, long j) throws IOException {
                a.this.c();
                try {
                    try {
                        long jA = sVar.a(cVar, j);
                        a.this.a(true);
                        return jA;
                    } catch (IOException e2) {
                        throw a.this.b(e2);
                    }
                } catch (Throwable th) {
                    a.this.a(false);
                    throw th;
                }
            }

            @Override // d.s, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                try {
                    try {
                        sVar.close();
                        a.this.a(true);
                    } catch (IOException e2) {
                        throw a.this.b(e2);
                    }
                } catch (Throwable th) {
                    a.this.a(false);
                    throw th;
                }
            }

            @Override // d.s
            public t a() {
                return a.this;
            }

            public String toString() {
                return "AsyncTimeout.source(" + sVar + ")";
            }
        };
    }

    final void a(boolean z) throws IOException {
        if (r_() && z) {
            throw a((IOException) null);
        }
    }

    final IOException b(IOException iOException) throws IOException {
        return !r_() ? iOException : a(iOException);
    }

    protected IOException a(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* JADX INFO: renamed from: d.a$a, reason: collision with other inner class name */
    private static final class C0185a extends Thread {
        public C0185a() {
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
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    static synchronized a e() throws InterruptedException {
        a aVar = f7750a.f7752d;
        if (aVar == null) {
            a.class.wait();
            return null;
        }
        long jB = aVar.b(System.nanoTime());
        if (jB > 0) {
            long j = jB / 1000000;
            Long.signum(j);
            a.class.wait(j, (int) (jB - (1000000 * j)));
            return null;
        }
        f7750a.f7752d = aVar.f7752d;
        aVar.f7752d = null;
        return aVar;
    }
}
