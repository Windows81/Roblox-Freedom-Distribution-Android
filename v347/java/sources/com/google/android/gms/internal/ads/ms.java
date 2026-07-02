package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ms {
    public static <T> nb<T> a(Throwable th) {
        return new nb<>(th);
    }

    public static <T> nc<T> a(T t) {
        return new nc<>(t);
    }

    public static <V> nd<V> a(nd<V> ndVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        final no noVar = new no();
        a((nd) noVar, (Future) ndVar);
        final ScheduledFuture<?> scheduledFutureSchedule = scheduledExecutorService.schedule(new Runnable(noVar) { // from class: com.google.android.gms.internal.ads.mw

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final no f5322a;

            {
                this.f5322a = noVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5322a.a(new TimeoutException());
            }
        }, j, timeUnit);
        a((nd) ndVar, noVar);
        noVar.a(new Runnable(scheduledFutureSchedule) { // from class: com.google.android.gms.internal.ads.mx

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Future f5323a;

            {
                this.f5323a = scheduledFutureSchedule;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Future future = this.f5323a;
                if (future.isDone()) {
                    return;
                }
                future.cancel(true);
            }
        }, nj.f5347b);
        return noVar;
    }

    public static <A, B> nd<B> a(final nd<A> ndVar, final mn<? super A, ? extends B> mnVar, Executor executor) {
        final no noVar = new no();
        ndVar.a(new Runnable(noVar, mnVar, ndVar) { // from class: com.google.android.gms.internal.ads.mv

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final no f5319a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final mn f5320b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final nd f5321c;

            {
                this.f5319a = noVar;
                this.f5320b = mnVar;
                this.f5321c = ndVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ms.a(this.f5319a, this.f5320b, this.f5321c);
            }
        }, executor);
        a((nd) noVar, (Future) ndVar);
        return noVar;
    }

    public static <A, B> nd<B> a(final nd<A> ndVar, final mo<A, B> moVar, Executor executor) {
        final no noVar = new no();
        ndVar.a(new Runnable(noVar, moVar, ndVar) { // from class: com.google.android.gms.internal.ads.mu

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final no f5316a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final mo f5317b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final nd f5318c;

            {
                this.f5316a = noVar;
                this.f5317b = moVar;
                this.f5318c = ndVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                no noVar2 = this.f5316a;
                try {
                    noVar2.b(this.f5317b.a(this.f5318c.get()));
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    noVar2.a(e);
                } catch (CancellationException e2) {
                    noVar2.cancel(true);
                } catch (ExecutionException e3) {
                    e = e3;
                    Throwable cause = e.getCause();
                    if (cause != null) {
                        e = cause;
                    }
                    noVar2.a(e);
                } catch (Exception e4) {
                    noVar2.a(e4);
                }
            }
        }, executor);
        a((nd) noVar, (Future) ndVar);
        return noVar;
    }

    public static <V, X extends Throwable> nd<V> a(final nd<? extends V> ndVar, final Class<X> cls, final mn<? super X, ? extends V> mnVar, final Executor executor) {
        final no noVar = new no();
        a((nd) noVar, (Future) ndVar);
        ndVar.a(new Runnable(noVar, ndVar, cls, mnVar, executor) { // from class: com.google.android.gms.internal.ads.my

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final no f5324a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final nd f5325b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final Class f5326c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final mn f5327d;
            private final Executor e;

            {
                this.f5324a = noVar;
                this.f5325b = ndVar;
                this.f5326c = cls;
                this.f5327d = mnVar;
                this.e = executor;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ms.a(this.f5324a, this.f5325b, this.f5326c, this.f5327d, this.e);
            }
        }, nj.f5347b);
        return noVar;
    }

    public static <T> T a(Future<T> future, T t) {
        try {
            return future.get(((Long) aoo.f().a(aro.bz)).longValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            future.cancel(true);
            jd.c("InterruptedException caught while resolving future.", e);
            Thread.currentThread().interrupt();
            com.google.android.gms.ads.internal.aw.i().b(e, "Futures.resolveFuture");
            return t;
        } catch (Exception e2) {
            future.cancel(true);
            jd.b("Error waiting for future.", e2);
            com.google.android.gms.ads.internal.aw.i().b(e2, "Futures.resolveFuture");
            return t;
        }
    }

    public static <T> T a(Future<T> future, T t, long j, TimeUnit timeUnit) {
        try {
            return future.get(j, timeUnit);
        } catch (InterruptedException e) {
            future.cancel(true);
            jd.c("InterruptedException caught while resolving future.", e);
            Thread.currentThread().interrupt();
            com.google.android.gms.ads.internal.aw.i().a(e, "Futures.resolveFuture");
            return t;
        } catch (Exception e2) {
            future.cancel(true);
            jd.b("Error waiting for future.", e2);
            com.google.android.gms.ads.internal.aw.i().a(e2, "Futures.resolveFuture");
            return t;
        }
    }

    public static <V> void a(final nd<V> ndVar, final mp<V> mpVar, Executor executor) {
        ndVar.a(new Runnable(mpVar, ndVar) { // from class: com.google.android.gms.internal.ads.mt

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final mp f5314a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final nd f5315b;

            {
                this.f5314a = mpVar;
                this.f5315b = ndVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                mp mpVar2 = this.f5314a;
                try {
                    mpVar2.a(this.f5315b.get());
                } catch (InterruptedException e) {
                    e = e;
                    Thread.currentThread().interrupt();
                    mpVar2.a(e);
                } catch (ExecutionException e2) {
                    e = e2.getCause();
                    mpVar2.a(e);
                } catch (Exception e3) {
                    e = e3;
                    mpVar2.a(e);
                }
            }
        }, executor);
    }

    private static <V> void a(final nd<? extends V> ndVar, final no<V> noVar) {
        a((nd) noVar, (Future) ndVar);
        ndVar.a(new Runnable(noVar, ndVar) { // from class: com.google.android.gms.internal.ads.mz

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final no f5328a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final nd f5329b;

            {
                this.f5328a = noVar;
                this.f5329b = ndVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                no noVar2 = this.f5328a;
                try {
                    noVar2.b(this.f5329b.get());
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    noVar2.a(e);
                } catch (ExecutionException e2) {
                    noVar2.a(e2.getCause());
                } catch (Exception e3) {
                    noVar2.a(e3);
                }
            }
        }, nj.f5347b);
    }

    private static <A, B> void a(final nd<A> ndVar, final Future<B> future) {
        ndVar.a(new Runnable(ndVar, future) { // from class: com.google.android.gms.internal.ads.na

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final nd f5332a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Future f5333b;

            {
                this.f5332a = ndVar;
                this.f5333b = future;
            }

            @Override // java.lang.Runnable
            public final void run() {
                nd ndVar2 = this.f5332a;
                Future future2 = this.f5333b;
                if (ndVar2.isCancelled()) {
                    future2.cancel(true);
                }
            }
        }, nj.f5347b);
    }

    static final /* synthetic */ void a(no noVar, mn mnVar, nd ndVar) {
        if (noVar.isCancelled()) {
            return;
        }
        try {
            a(mnVar.a(ndVar.get()), noVar);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            noVar.a(e);
        } catch (CancellationException e2) {
            noVar.cancel(true);
        } catch (ExecutionException e3) {
            noVar.a(e3.getCause());
        } catch (Exception e4) {
            noVar.a(e4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static final /* synthetic */ void a(com.google.android.gms.internal.ads.no r2, com.google.android.gms.internal.ads.nd r3, java.lang.Class r4, com.google.android.gms.internal.ads.mn r5, java.util.concurrent.Executor r6) {
        /*
            java.lang.Object r0 = r3.get()     // Catch: java.util.concurrent.ExecutionException -> L8 java.lang.InterruptedException -> L1f java.lang.Exception -> L2c
            r2.b(r0)     // Catch: java.util.concurrent.ExecutionException -> L8 java.lang.InterruptedException -> L1f java.lang.Exception -> L2c
        L7:
            return
        L8:
            r0 = move-exception
            java.lang.Throwable r0 = r0.getCause()
        Ld:
            boolean r1 = r4.isInstance(r0)
            if (r1 == 0) goto L28
            com.google.android.gms.internal.ads.nc r0 = a(r0)
            com.google.android.gms.internal.ads.nd r0 = a(r0, r5, r6)
            a(r0, r2)
            goto L7
        L1f:
            r0 = move-exception
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
            goto Ld
        L28:
            r2.a(r0)
            goto L7
        L2c:
            r0 = move-exception
            goto Ld
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ms.a(com.google.android.gms.internal.ads.no, com.google.android.gms.internal.ads.nd, java.lang.Class, com.google.android.gms.internal.ads.mn, java.util.concurrent.Executor):void");
    }
}
