package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Looper;
import java.lang.Thread;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ex extends fy {
    private static final AtomicLong k = new AtomicLong(Long.MIN_VALUE);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f4301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private fb f4302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private fb f4303c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PriorityBlockingQueue<fa<?>> f4304d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BlockingQueue<fa<?>> f4305e;
    private final Thread.UncaughtExceptionHandler f;
    private final Thread.UncaughtExceptionHandler g;
    private final Object h;
    private final Semaphore i;
    private volatile boolean j;

    ex(fc fcVar) {
        super(fcVar);
        this.h = new Object();
        this.i = new Semaphore(2);
        this.f4304d = new PriorityBlockingQueue<>();
        this.f4305e = new LinkedBlockingQueue();
        this.f = new ez(this, "Thread death: Uncaught exception on worker thread");
        this.g = new ez(this, "Thread death: Uncaught exception on network thread");
    }

    static /* synthetic */ fb a(ex exVar, fb fbVar) {
        exVar.f4302b = null;
        return null;
    }

    private final void a(fa<?> faVar) {
        synchronized (this.h) {
            this.f4304d.add(faVar);
            if (this.f4302b == null) {
                fb fbVar = new fb(this, "Measurement Worker", this.f4304d);
                this.f4302b = fbVar;
                fbVar.setUncaughtExceptionHandler(this.f);
                this.f4302b.start();
            } else {
                this.f4302b.a();
            }
        }
    }

    static /* synthetic */ fb b(ex exVar, fb fbVar) {
        exVar.f4303c = null;
        return null;
    }

    public static boolean v() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    final <T> T a(AtomicReference<T> atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            p().a(runnable);
            try {
                atomicReference.wait(15000L);
            } catch (InterruptedException unused) {
                dz dzVarY = q().y();
                String strValueOf = String.valueOf(str);
                dzVarY.a(strValueOf.length() != 0 ? "Interrupted waiting for ".concat(strValueOf) : new String("Interrupted waiting for "));
                return null;
            }
        }
        T t = atomicReference.get();
        if (t == null) {
            dz dzVarY2 = q().y();
            String strValueOf2 = String.valueOf(str);
            dzVarY2.a(strValueOf2.length() != 0 ? "Timed out waiting for ".concat(strValueOf2) : new String("Timed out waiting for "));
        }
        return t;
    }

    public final <V> Future<V> a(Callable<V> callable) throws IllegalStateException {
        F();
        com.google.android.gms.common.internal.aa.a(callable);
        fa<?> faVar = new fa<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f4302b) {
            if (!this.f4304d.isEmpty()) {
                q().y().a("Callable skipped the worker queue.");
            }
            faVar.run();
        } else {
            a(faVar);
        }
        return faVar;
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    public final void a(Runnable runnable) throws IllegalStateException {
        F();
        com.google.android.gms.common.internal.aa.a(runnable);
        a(new fa<>(this, runnable, false, "Task exception on worker thread"));
    }

    public final <V> Future<V> b(Callable<V> callable) throws IllegalStateException {
        F();
        com.google.android.gms.common.internal.aa.a(callable);
        fa<?> faVar = new fa<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f4302b) {
            faVar.run();
        } else {
            a(faVar);
        }
        return faVar;
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final void b() {
        if (Thread.currentThread() != this.f4303c) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    public final void b(Runnable runnable) throws IllegalStateException {
        F();
        com.google.android.gms.common.internal.aa.a(runnable);
        fa<?> faVar = new fa<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.h) {
            this.f4305e.add(faVar);
            if (this.f4303c == null) {
                fb fbVar = new fb(this, "Measurement Network", this.f4305e);
                this.f4303c = fbVar;
                fbVar.setUncaughtExceptionHandler(this.g);
                this.f4303c.start();
            } else {
                this.f4303c.a();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final void c() {
        if (Thread.currentThread() != this.f4302b) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cp d() {
        return super.d();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gb e() {
        return super.e();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ds f() {
        return super.f();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dh g() {
        return super.g();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gz h() {
        return super.h();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gw i() {
        return super.i();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ com.google.android.gms.common.util.d j() {
        return super.j();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ Context k() {
        return super.k();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dt l() {
        return super.l();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dv m() {
        return super.m();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ iq n() {
        return super.n();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ hy o() {
        return super.o();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ ex p() {
        return super.p();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ dx q() {
        return super.q();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ei r() {
        return super.r();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cy s() {
        return super.s();
    }

    @Override // com.google.android.gms.internal.measurement.fy
    protected final boolean t() {
        return false;
    }

    public final boolean w() {
        return Thread.currentThread() == this.f4302b;
    }

    final ExecutorService x() {
        ExecutorService executorService;
        synchronized (this.h) {
            if (this.f4301a == null) {
                this.f4301a = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new ArrayBlockingQueue(100));
            }
            executorService = this.f4301a;
        }
        return executorService;
    }
}
