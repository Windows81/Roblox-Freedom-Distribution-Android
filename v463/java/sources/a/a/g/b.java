package a.a.g;

import java.lang.Thread;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static transient String f425a = b.class.getSimpleName();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Map<String, Object> f426e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CountDownLatch f428c = new CountDownLatch(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a.a.a f429d;

    private b(a.a.a aVar) {
        a.a.f.a.a(f425a, "BacktraceExceptionHandler initialization");
        this.f429d = aVar;
        this.f427b = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public static void a(a.a.a aVar) {
        new b(aVar);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        a.a.d.c cVarA = a(thread, th);
        if (th instanceof Exception) {
            a.a.f.a.a(f425a, "Sending uncaught exception to Backtrace API", th);
            this.f429d.a(new a.a.g.b.d((Exception) th, f426e), cVarA);
            a.a.f.a.a(f425a, "Uncaught exception sent to Backtrace API");
        }
        a.a.f.a.a(f425a, "Default uncaught exception handler");
        try {
            this.f428c.await();
        } catch (Exception e2) {
            a.a.f.a.a(f425a, "Exception during waiting for response", e2);
        }
    }

    private a.a.d.c a(final Thread thread, final Throwable th) {
        return new a.a.d.c() { // from class: a.a.g.b.1
            @Override // a.a.d.c
            public void a(c cVar) {
                a.a.f.a.a(b.f425a, "Root handler event callback");
                b.this.f427b.uncaughtException(thread, th);
                b.this.f428c.countDown();
            }
        };
    }
}
