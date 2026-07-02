package b;

import b.y;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Runnable f2052c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ExecutorService f2053d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2050a = 64;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2051b = 5;
    private final Deque<y.a> e = new ArrayDeque();
    private final Deque<y.a> f = new ArrayDeque();
    private final Deque<y> g = new ArrayDeque();

    public synchronized ExecutorService a() {
        if (this.f2053d == null) {
            this.f2053d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), b.a.c.a("OkHttp Dispatcher", false));
        }
        return this.f2053d;
    }

    synchronized void a(y.a aVar) {
        if (this.f.size() < this.f2050a && c(aVar) < this.f2051b) {
            this.f.add(aVar);
            a().execute(aVar);
        } else {
            this.e.add(aVar);
        }
    }

    private void c() {
        if (this.f.size() < this.f2050a && !this.e.isEmpty()) {
            Iterator<y.a> it = this.e.iterator();
            while (it.hasNext()) {
                y.a next = it.next();
                if (c(next) < this.f2051b) {
                    it.remove();
                    this.f.add(next);
                    a().execute(next);
                }
                if (this.f.size() >= this.f2050a) {
                    return;
                }
            }
        }
    }

    private int c(y.a aVar) {
        int i = 0;
        Iterator<y.a> it = this.f.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = it.next().a().equals(aVar.a()) ? i2 + 1 : i2;
            } else {
                return i2;
            }
        }
    }

    synchronized void a(y yVar) {
        this.g.add(yVar);
    }

    void b(y.a aVar) {
        a(this.f, aVar, true);
    }

    void b(y yVar) {
        a(this.g, yVar, false);
    }

    private <T> void a(Deque<T> deque, T t, boolean z) {
        int iB;
        Runnable runnable;
        synchronized (this) {
            if (!deque.remove(t)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            if (z) {
                c();
            }
            iB = b();
            runnable = this.f2052c;
        }
        if (iB == 0 && runnable != null) {
            runnable.run();
        }
    }

    public synchronized int b() {
        return this.f.size() + this.g.size();
    }
}
