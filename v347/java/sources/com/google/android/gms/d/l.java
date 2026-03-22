package com.google.android.gms.d;

import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class l<TResult> implements r<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f3582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f3583b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private b<TResult> f3584c;

    public l(Executor executor, b<TResult> bVar) {
        this.f3582a = executor;
        this.f3584c = bVar;
    }

    @Override // com.google.android.gms.d.r
    public final void a(f<TResult> fVar) {
        synchronized (this.f3583b) {
            if (this.f3584c == null) {
                return;
            }
            this.f3582a.execute(new m(this, fVar));
        }
    }
}
