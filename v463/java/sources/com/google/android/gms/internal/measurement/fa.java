package com.google.android.gms.internal.measurement;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fa<V> extends FutureTask<V> implements Comparable<fa> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final boolean f4309a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f4310b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4311c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ ex f4312d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    fa(ex exVar, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        this.f4312d = exVar;
        com.google.android.gms.common.internal.aa.a(str);
        long andIncrement = ex.k.getAndIncrement();
        this.f4310b = andIncrement;
        this.f4311c = str;
        this.f4309a = false;
        if (andIncrement == Long.MAX_VALUE) {
            exVar.q().v().a("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    fa(ex exVar, Callable<V> callable, boolean z, String str) {
        super(callable);
        this.f4312d = exVar;
        com.google.android.gms.common.internal.aa.a(str);
        long andIncrement = ex.k.getAndIncrement();
        this.f4310b = andIncrement;
        this.f4311c = str;
        this.f4309a = z;
        if (andIncrement == Long.MAX_VALUE) {
            exVar.q().v().a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(fa faVar) {
        fa faVar2 = faVar;
        boolean z = this.f4309a;
        if (z != faVar2.f4309a) {
            return z ? -1 : 1;
        }
        long j = this.f4310b;
        long j2 = faVar2.f4310b;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        this.f4312d.q().w().a("Two tasks share the same index. index", Long.valueOf(this.f4310b));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        this.f4312d.q().v().a(this.f4311c, th);
        if (th instanceof ey) {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }
}
