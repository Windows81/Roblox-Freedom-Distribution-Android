package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public class no<T> implements nd<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("mLock")
    private T f5354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private Throwable f5355c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("mLock")
    private boolean f5356d;

    @GuardedBy("mLock")
    private boolean e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5353a = new Object();
    private final nf f = new nf();

    @GuardedBy("mLock")
    private final boolean a() {
        return this.f5355c != null || this.f5356d;
    }

    @Override // com.google.android.gms.internal.ads.nd
    public final void a(Runnable runnable, Executor executor) {
        this.f.a(runnable, executor);
    }

    public final void a(Throwable th) {
        synchronized (this.f5353a) {
            if (this.e) {
                return;
            }
            if (a()) {
                com.google.android.gms.ads.internal.aw.i().b(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture.setException");
                return;
            }
            this.f5355c = th;
            this.f5353a.notifyAll();
            this.f.a();
        }
    }

    public final void b(T t) {
        synchronized (this.f5353a) {
            if (this.e) {
                return;
            }
            if (a()) {
                com.google.android.gms.ads.internal.aw.i().b(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture.set");
                return;
            }
            this.f5356d = true;
            this.f5354b = t;
            this.f5353a.notifyAll();
            this.f.a();
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        boolean z2 = false;
        if (z) {
            synchronized (this.f5353a) {
                if (!a()) {
                    this.e = true;
                    this.f5356d = true;
                    this.f5353a.notifyAll();
                    this.f.a();
                    z2 = true;
                }
            }
        }
        return z2;
    }

    @Override // java.util.concurrent.Future
    public T get() throws ExecutionException, CancellationException, InterruptedException {
        T t;
        synchronized (this.f5353a) {
            if (!a()) {
                try {
                    this.f5353a.wait();
                } catch (InterruptedException e) {
                    throw e;
                }
            }
            if (this.f5355c != null) {
                throw new ExecutionException(this.f5355c);
            }
            if (this.e) {
                throw new CancellationException("SettableFuture was cancelled.");
            }
            t = this.f5354b;
        }
        return t;
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws ExecutionException, CancellationException, InterruptedException, TimeoutException {
        T t;
        synchronized (this.f5353a) {
            if (!a()) {
                try {
                    long millis = timeUnit.toMillis(j);
                    if (millis != 0) {
                        this.f5353a.wait(millis);
                    }
                } catch (InterruptedException e) {
                    throw e;
                }
            }
            if (this.f5355c != null) {
                throw new ExecutionException(this.f5355c);
            }
            if (!this.f5356d) {
                throw new TimeoutException("SettableFuture timed out.");
            }
            if (this.e) {
                throw new CancellationException("SettableFuture was cancelled.");
            }
            t = this.f5354b;
        }
        return t;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        boolean z;
        synchronized (this.f5353a) {
            z = this.e;
        }
        return z;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean zA;
        synchronized (this.f5353a) {
            zA = a();
        }
        return zA;
    }
}
