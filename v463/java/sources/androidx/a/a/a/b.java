package androidx.a.a.a;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f564a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f565b = Executors.newFixedThreadPool(2, new ThreadFactory() { // from class: androidx.a.a.a.b.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AtomicInteger f568b = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f568b.getAndIncrement())));
            return thread;
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile Handler f566c;

    @Override // androidx.a.a.a.c
    public void a(Runnable runnable) {
        this.f565b.execute(runnable);
    }

    @Override // androidx.a.a.a.c
    public void b(Runnable runnable) {
        if (this.f566c == null) {
            synchronized (this.f564a) {
                if (this.f566c == null) {
                    this.f566c = new Handler(Looper.getMainLooper());
                }
            }
        }
        this.f566c.post(runnable);
    }

    @Override // androidx.a.a.a.c
    public boolean c() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
