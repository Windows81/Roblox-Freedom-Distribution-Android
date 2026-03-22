package com.google.android.gms.d;

import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class p<TResult> implements r<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f3592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f3593b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private d<? super TResult> f3594c;

    public p(Executor executor, d<? super TResult> dVar) {
        this.f3592a = executor;
        this.f3594c = dVar;
    }

    @Override // com.google.android.gms.d.r
    public final void a(f<TResult> fVar) {
        if (fVar.b()) {
            synchronized (this.f3593b) {
                if (this.f3594c != null) {
                    this.f3592a.execute(new q(this, fVar));
                }
            }
        }
    }
}
