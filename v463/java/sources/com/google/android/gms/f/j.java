package com.google.android.gms.f;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class j {

    private static final class a implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CountDownLatch f3927a;

        private a() {
            this.f3927a = new CountDownLatch(1);
        }

        /* synthetic */ a(aa aaVar) {
            this();
        }

        @Override // com.google.android.gms.f.b
        public final void a() {
            this.f3927a.countDown();
        }

        @Override // com.google.android.gms.f.d
        public final void a(Exception exc) {
            this.f3927a.countDown();
        }

        @Override // com.google.android.gms.f.e
        public final void a(Object obj) {
            this.f3927a.countDown();
        }

        public final boolean a(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.f3927a.await(j, timeUnit);
        }

        public final void b() throws InterruptedException {
            this.f3927a.await();
        }
    }

    interface b extends com.google.android.gms.f.b, d, e<Object> {
    }

    public static <TResult> g<TResult> a(Exception exc) {
        z zVar = new z();
        zVar.a(exc);
        return zVar;
    }

    public static <TResult> g<TResult> a(TResult tresult) {
        z zVar = new z();
        zVar.a(tresult);
        return zVar;
    }

    public static <TResult> g<TResult> a(Executor executor, Callable<TResult> callable) {
        com.google.android.gms.common.internal.aa.a(executor, "Executor must not be null");
        com.google.android.gms.common.internal.aa.a(callable, "Callback must not be null");
        z zVar = new z();
        executor.execute(new aa(zVar, callable));
        return zVar;
    }

    public static <TResult> TResult a(g<TResult> gVar) throws ExecutionException, InterruptedException {
        com.google.android.gms.common.internal.aa.a();
        com.google.android.gms.common.internal.aa.a(gVar, "Task must not be null");
        if (gVar.a()) {
            return (TResult) b(gVar);
        }
        a aVar = new a(null);
        a((g<?>) gVar, (b) aVar);
        aVar.b();
        return (TResult) b(gVar);
    }

    public static <TResult> TResult a(g<TResult> gVar, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        com.google.android.gms.common.internal.aa.a();
        com.google.android.gms.common.internal.aa.a(gVar, "Task must not be null");
        com.google.android.gms.common.internal.aa.a(timeUnit, "TimeUnit must not be null");
        if (gVar.a()) {
            return (TResult) b(gVar);
        }
        a aVar = new a(null);
        a((g<?>) gVar, (b) aVar);
        if (aVar.a(j, timeUnit)) {
            return (TResult) b(gVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    private static void a(g<?> gVar, b bVar) {
        gVar.a(i.f3925b, (e<? super Object>) bVar);
        gVar.a(i.f3925b, (d) bVar);
        gVar.a(i.f3925b, (com.google.android.gms.f.b) bVar);
    }

    private static <TResult> TResult b(g<TResult> gVar) throws ExecutionException {
        if (gVar.b()) {
            return gVar.d();
        }
        if (gVar.c()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(gVar.e());
    }
}
