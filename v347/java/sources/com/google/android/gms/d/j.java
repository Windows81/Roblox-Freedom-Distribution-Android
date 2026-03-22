package com.google.android.gms.d;

import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class j<TResult> implements r<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f3578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f3579b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private a f3580c;

    public j(Executor executor, a aVar) {
        this.f3578a = executor;
        this.f3580c = aVar;
    }

    @Override // com.google.android.gms.d.r
    public final void a(f fVar) {
        if (fVar.c()) {
            synchronized (this.f3579b) {
                if (this.f3580c != null) {
                    this.f3578a.execute(new k(this));
                }
            }
        }
    }
}
