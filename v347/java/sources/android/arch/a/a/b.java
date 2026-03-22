package android.arch.a.a;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f20a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ExecutorService f21b = Executors.newFixedThreadPool(2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile Handler f22c;

    @Override // android.arch.a.a.c
    public void a(Runnable runnable) {
        this.f21b.execute(runnable);
    }

    @Override // android.arch.a.a.c
    public void b(Runnable runnable) {
        if (this.f22c == null) {
            synchronized (this.f20a) {
                if (this.f22c == null) {
                    this.f22c = new Handler(Looper.getMainLooper());
                }
            }
        }
        this.f22c.post(runnable);
    }

    @Override // android.arch.a.a.c
    public boolean b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
