package b;

import java.lang.ref.Reference;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final /* synthetic */ boolean f2032c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Executor f2033d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b.a.b.d f2034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f2035b;
    private final int e;
    private final long f;
    private final Runnable g;
    private final Deque<b.a.b.c> h;

    static {
        f2032c = !j.class.desiredAssertionStatus();
        f2033d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), b.a.c.a("OkHttp ConnectionPool", true));
    }

    public j() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    public j(int i, long j, TimeUnit timeUnit) {
        this.g = new Runnable() { // from class: b.j.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    long jA = j.this.a(System.nanoTime());
                    if (jA == -1) {
                        return;
                    }
                    if (jA > 0) {
                        long j2 = jA / 1000000;
                        long j3 = jA - (j2 * 1000000);
                        synchronized (j.this) {
                            try {
                                j.this.wait(j2, (int) j3);
                            } catch (InterruptedException e) {
                            }
                        }
                    }
                }
            }
        };
        this.h = new ArrayDeque();
        this.f2034a = new b.a.b.d();
        this.e = i;
        this.f = timeUnit.toNanos(j);
        if (j <= 0) {
            throw new IllegalArgumentException("keepAliveDuration <= 0: " + j);
        }
    }

    b.a.b.c a(a aVar, b.a.b.g gVar) {
        if (!f2032c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (b.a.b.c cVar : this.h) {
            if (cVar.g.size() < cVar.f && aVar.equals(cVar.a().f1994a) && !cVar.h) {
                gVar.a(cVar);
                return cVar;
            }
        }
        return null;
    }

    void a(b.a.b.c cVar) {
        if (!f2032c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (!this.f2035b) {
            this.f2035b = true;
            f2033d.execute(this.g);
        }
        this.h.add(cVar);
    }

    boolean b(b.a.b.c cVar) {
        if (!f2032c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (cVar.h || this.e == 0) {
            this.h.remove(cVar);
            return true;
        }
        notifyAll();
        return false;
    }

    long a(long j) {
        b.a.b.c cVar;
        long j2;
        b.a.b.c cVar2 = null;
        long j3 = Long.MIN_VALUE;
        synchronized (this) {
            int i = 0;
            int i2 = 0;
            for (b.a.b.c cVar3 : this.h) {
                if (a(cVar3, j) > 0) {
                    i2++;
                } else {
                    int i3 = i + 1;
                    long j4 = j - cVar3.i;
                    if (j4 > j3) {
                        cVar = cVar3;
                        j2 = j4;
                    } else {
                        cVar = cVar2;
                        j2 = j3;
                    }
                    j3 = j2;
                    cVar2 = cVar;
                    i = i3;
                }
            }
            if (j3 >= this.f || i > this.e) {
                this.h.remove(cVar2);
                b.a.c.a(cVar2.d());
                return 0L;
            }
            if (i > 0) {
                return this.f - j3;
            }
            if (i2 > 0) {
                return this.f;
            }
            this.f2035b = false;
            return -1L;
        }
    }

    private int a(b.a.b.c cVar, long j) {
        List<Reference<b.a.b.g>> list = cVar.g;
        int i = 0;
        while (i < list.size()) {
            if (list.get(i).get() != null) {
                i++;
            } else {
                b.a.f.e.b().a(5, "A connection to " + cVar.a().a().a() + " was leaked. Did you forget to close a response body?", (Throwable) null);
                list.remove(i);
                cVar.h = true;
                if (list.isEmpty()) {
                    cVar.i = j - this.f;
                    return 0;
                }
            }
        }
        return list.size();
    }
}
