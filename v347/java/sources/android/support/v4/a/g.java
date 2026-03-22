package android.support.v4.a;

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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
abstract class g<Params, Progress, Result> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b f611d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadFactory f608a = new ThreadFactory() { // from class: android.support.v4.a.g.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f612a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ModernAsyncTask #" + this.f612a.getAndIncrement());
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final BlockingQueue<Runnable> f609b = new LinkedBlockingQueue(10);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Executor f610c = new ThreadPoolExecutor(5, 128, 1, TimeUnit.SECONDS, f609b, f608a);
    private static volatile Executor e = f610c;
    private volatile c h = c.PENDING;
    private final AtomicBoolean i = new AtomicBoolean();
    private final AtomicBoolean j = new AtomicBoolean();
    private final d<Params, Result> f = new d<Params, Result>() { // from class: android.support.v4.a.g.2
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
            g.this.j.set(true);
            Result result = null;
            try {
                try {
                    Process.setThreadPriority(10);
                    result = (Result) g.this.a((Object[]) this.f622b);
                    Binder.flushPendingCommands();
                    return result;
                } finally {
                }
            } finally {
                g.this.d(result);
            }
        }
    };
    private final FutureTask<Result> g = new FutureTask<Result>(this.f) { // from class: android.support.v4.a.g.3
        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                g.this.c(get());
            } catch (InterruptedException e2) {
                Log.w("AsyncTask", e2);
            } catch (CancellationException e3) {
                g.this.c(null);
            } catch (ExecutionException e4) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e4.getCause());
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

    private static Handler d() {
        b bVar;
        synchronized (g.class) {
            if (f611d == null) {
                f611d = new b();
            }
            bVar = f611d;
        }
        return bVar;
    }

    g() {
    }

    void c(Result result) {
        if (!this.j.get()) {
            d(result);
        }
    }

    Result d(Result result) {
        d().obtainMessage(1, new a(this, result)).sendToTarget();
        return result;
    }

    protected void a() {
    }

    protected void a(Result result) {
    }

    protected void b(Progress... progressArr) {
    }

    protected void b(Result result) {
        b();
    }

    protected void b() {
    }

    public final boolean c() {
        return this.i.get();
    }

    public final boolean a(boolean z) {
        this.i.set(true);
        return this.g.cancel(z);
    }

    public final g<Params, Progress, Result> a(Executor executor, Params... paramsArr) {
        if (this.h != c.PENDING) {
            switch (this.h) {
                case RUNNING:
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                case FINISHED:
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
                default:
                    throw new IllegalStateException("We should never reach this state");
            }
        }
        this.h = c.RUNNING;
        a();
        this.f.f622b = paramsArr;
        executor.execute(this.g);
        return this;
    }

    void e(Result result) {
        if (c()) {
            b(result);
        } else {
            a(result);
        }
        this.h = c.FINISHED;
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
            switch (message.what) {
                case 1:
                    aVar.f616a.e(aVar.f617b[0]);
                    break;
                case 2:
                    aVar.f616a.b((Object[]) aVar.f617b);
                    break;
            }
        }
    }

    private static abstract class d<Params, Result> implements Callable<Result> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Params[] f622b;

        d() {
        }
    }

    private static class a<Data> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final g f616a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Data[] f617b;

        a(g gVar, Data... dataArr) {
            this.f616a = gVar;
            this.f617b = dataArr;
        }
    }
}
