package c;

import c.z;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Runnable f2806c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ExecutorService f2807d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2804a = 64;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2805b = 5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Deque<z.a> f2808e = new ArrayDeque();
    private final Deque<z.a> f = new ArrayDeque();
    private final Deque<z> g = new ArrayDeque();

    public synchronized ExecutorService a() {
        if (this.f2807d == null) {
            this.f2807d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), c.a.c.a("OkHttp Dispatcher", false));
        }
        return this.f2807d;
    }

    synchronized void a(z.a aVar) {
        if (this.f.size() < this.f2804a && c(aVar) < this.f2805b) {
            this.f.add(aVar);
            a().execute(aVar);
        } else {
            this.f2808e.add(aVar);
        }
    }

    private void c() {
        if (this.f.size() < this.f2804a && !this.f2808e.isEmpty()) {
            Iterator<z.a> it = this.f2808e.iterator();
            while (it.hasNext()) {
                z.a next = it.next();
                if (c(next) < this.f2805b) {
                    it.remove();
                    this.f.add(next);
                    a().execute(next);
                }
                if (this.f.size() >= this.f2804a) {
                    return;
                }
            }
        }
    }

    private int c(z.a aVar) {
        Iterator<z.a> it = this.f.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().a().equals(aVar.a())) {
                i++;
            }
        }
        return i;
    }

    synchronized void a(z zVar) {
        this.g.add(zVar);
    }

    void b(z.a aVar) {
        a(this.f, aVar, true);
    }

    void b(z zVar) {
        a(this.g, zVar, false);
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
            runnable = this.f2806c;
        }
        if (iB != 0 || runnable == null) {
            return;
        }
        runnable.run();
    }

    public synchronized int b() {
        return this.f.size() + this.g.size();
    }
}
