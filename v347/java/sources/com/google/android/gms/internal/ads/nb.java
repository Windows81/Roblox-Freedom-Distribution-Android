package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
final class nb<T> implements nd<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Throwable f5334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final nf f5335b = new nf();

    nb(Throwable th) {
        this.f5334a = th;
        this.f5335b.a();
    }

    @Override // com.google.android.gms.internal.ads.nd
    public final void a(Runnable runnable, Executor executor) {
        this.f5335b.a(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final T get() throws ExecutionException {
        throw new ExecutionException(this.f5334a);
    }

    @Override // java.util.concurrent.Future
    public final T get(long j, TimeUnit timeUnit) throws ExecutionException {
        throw new ExecutionException(this.f5334a);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }
}
