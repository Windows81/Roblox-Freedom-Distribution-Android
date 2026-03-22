package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
final class nh<V> extends FutureTask<V> implements nd<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final nf f5345a;

    nh(Runnable runnable, @Nullable V v) {
        super(runnable, v);
        this.f5345a = new nf();
    }

    nh(Callable<V> callable) {
        super(callable);
        this.f5345a = new nf();
    }

    @Override // com.google.android.gms.internal.ads.nd
    public final void a(Runnable runnable, Executor executor) {
        this.f5345a.a(runnable, executor);
    }

    @Override // java.util.concurrent.FutureTask
    protected final void done() {
        this.f5345a.a();
    }
}
