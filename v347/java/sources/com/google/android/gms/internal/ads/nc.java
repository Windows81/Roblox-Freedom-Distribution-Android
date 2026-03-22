package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class nc<T> implements nd<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f5336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final nf f5337b = new nf();

    nc(T t) {
        this.f5336a = t;
        this.f5337b.a();
    }

    @Override // com.google.android.gms.internal.ads.nd
    public final void a(Runnable runnable, Executor executor) {
        this.f5337b.a(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final T get() {
        return this.f5336a;
    }

    @Override // java.util.concurrent.Future
    public final T get(long j, TimeUnit timeUnit) {
        return this.f5336a;
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
