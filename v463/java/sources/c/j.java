package c;

import java.lang.ref.Reference;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final /* synthetic */ boolean f2783c = !j.class.desiredAssertionStatus();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Executor f2784d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), c.a.c.a("OkHttp ConnectionPool", true));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final c.a.b.d f2785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f2786b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f2787e;
    private final long f;
    private final Runnable g;
    private final Deque<c.a.b.c> h;

    public j() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    public j(int i, long j, TimeUnit timeUnit) {
        this.g = new Runnable() { // from class: c.j.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    long jA = j.this.a(System.nanoTime());
                    if (jA == -1) {
                        return;
                    }
                    if (jA > 0) {
                        long j2 = jA / 1000000;
                        long j3 = jA - (1000000 * j2);
                        synchronized (j.this) {
                            try {
                                j.this.wait(j2, (int) j3);
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                }
            }
        };
        this.h = new ArrayDeque();
        this.f2785a = new c.a.b.d();
        this.f2787e = i;
        this.f = timeUnit.toNanos(j);
        if (j > 0) {
            return;
        }
        throw new IllegalArgumentException("keepAliveDuration <= 0: " + j);
    }

    c.a.b.c a(a aVar, c.a.b.g gVar) {
        if (!f2783c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (c.a.b.c cVar : this.h) {
            if (cVar.g.size() < cVar.f && aVar.equals(cVar.a().f2740a) && !cVar.h) {
                gVar.a(cVar);
                return cVar;
            }
        }
        return null;
    }

    void a(c.a.b.c cVar) {
        if (!f2783c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (!this.f2786b) {
            this.f2786b = true;
            f2784d.execute(this.g);
        }
        this.h.add(cVar);
    }

    boolean b(c.a.b.c cVar) {
        if (!f2783c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (cVar.h || this.f2787e == 0) {
            this.h.remove(cVar);
            return true;
        }
        notifyAll();
        return false;
    }

    long a(long j) {
        synchronized (this) {
            c.a.b.c cVar = null;
            long j2 = Long.MIN_VALUE;
            int i = 0;
            int i2 = 0;
            for (c.a.b.c cVar2 : this.h) {
                if (a(cVar2, j) > 0) {
                    i2++;
                } else {
                    i++;
                    long j3 = j - cVar2.i;
                    if (j3 > j2) {
                        cVar = cVar2;
                        j2 = j3;
                    }
                }
            }
            if (j2 < this.f && i <= this.f2787e) {
                if (i > 0) {
                    return this.f - j2;
                }
                if (i2 > 0) {
                    return this.f;
                }
                this.f2786b = false;
                return -1L;
            }
            this.h.remove(cVar);
            c.a.c.a(cVar.d());
            return 0L;
        }
    }

    private int a(c.a.b.c cVar, long j) {
        List<Reference<c.a.b.g>> list = cVar.g;
        int i = 0;
        while (i < list.size()) {
            if (list.get(i).get() != null) {
                i++;
            } else {
                c.a.f.e.b().a(5, "A connection to " + cVar.a().a().a() + " was leaked. Did you forget to close a response body?", (Throwable) null);
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
