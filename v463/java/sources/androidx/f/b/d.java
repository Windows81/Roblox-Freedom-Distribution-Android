package androidx.f.b;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class d<Params, Progress, Result> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadFactory f1611a = new ThreadFactory() { // from class: androidx.f.b.d.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f1616a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ModernAsyncTask #" + this.f1616a.getAndIncrement());
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final BlockingQueue<Runnable> f1612b = new LinkedBlockingQueue(10);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Executor f1613c;
    private static b f;
    private static volatile Executor g;
    private volatile c j = c.PENDING;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final AtomicBoolean f1614d = new AtomicBoolean();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final AtomicBoolean f1615e = new AtomicBoolean();
    private final AbstractCallableC0043d<Params, Result> h = new AbstractCallableC0043d<Params, Result>() { // from class: androidx.f.b.d.2
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            d.this.f1615e.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                result = (Result) d.this.a((Object[]) this.f1626b);
                Binder.flushPendingCommands();
                return result;
            } finally {
            }
        }
    };
    private final FutureTask<Result> i = new FutureTask<Result>(this.h) { // from class: androidx.f.b.d.3
        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                d.this.c(get());
            } catch (InterruptedException e2) {
                Log.w("AsyncTask", e2);
            } catch (CancellationException unused) {
                d.this.c(null);
            } catch (ExecutionException e3) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e3.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    };

    public enum c {
        PENDING,
        RUNNING,
        FINISHED
    }

    protected abstract Result a(Params... paramsArr);

    protected void a() {
    }

    protected void a(Result result) {
    }

    protected void b() {
    }

    protected void b(Progress... progressArr) {
    }

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, f1612b, f1611a);
        f1613c = threadPoolExecutor;
        g = threadPoolExecutor;
    }

    private static Handler d() {
        b bVar;
        synchronized (d.class) {
            if (f == null) {
                f = new b();
            }
            bVar = f;
        }
        return bVar;
    }

    d() {
    }

    void c(Result result) {
        if (this.f1615e.get()) {
            return;
        }
        d(result);
    }

    Result d(Result result) {
        d().obtainMessage(1, new a(this, result)).sendToTarget();
        return result;
    }

    protected void b(Result result) {
        b();
    }

    public final boolean c() {
        return this.f1614d.get();
    }

    public final boolean a(boolean z) {
        this.f1614d.set(true);
        return this.i.cancel(z);
    }

    /* JADX INFO: renamed from: androidx.f.b.d$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1619a;

        static {
            int[] iArr = new int[c.values().length];
            f1619a = iArr;
            try {
                iArr[c.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1619a[c.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public final d<Params, Progress, Result> a(Executor executor, Params... paramsArr) {
        if (this.j != c.PENDING) {
            int i = AnonymousClass4.f1619a[this.j.ordinal()];
            if (i == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            }
            if (i == 2) {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
            throw new IllegalStateException("We should never reach this state");
        }
        this.j = c.RUNNING;
        a();
        this.h.f1626b = paramsArr;
        executor.execute(this.i);
        return this;
    }

    void e(Result result) {
        if (c()) {
            b(result);
        } else {
            a(result);
        }
        this.j = c.FINISHED;
    }

    private static class b extends Handler {
        b() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            a aVar = (a) message.obj;
            int i = message.what;
            if (i == 1) {
                aVar.f1620a.e(aVar.f1621b[0]);
            } else {
                if (i != 2) {
                    return;
                }
                aVar.f1620a.b((Object[]) aVar.f1621b);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.f.b.d$d, reason: collision with other inner class name */
    private static abstract class AbstractCallableC0043d<Params, Result> implements Callable<Result> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Params[] f1626b;

        AbstractCallableC0043d() {
        }
    }

    private static class a<Data> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final d f1620a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Data[] f1621b;

        a(d dVar, Data... dataArr) {
            this.f1620a = dVar;
            this.f1621b = dataArr;
        }
    }
}
