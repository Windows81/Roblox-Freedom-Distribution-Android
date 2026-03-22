package com.google.android.gms.d;

import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class n<TResult> implements r<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f3587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f3588b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private c f3589c;

    public n(Executor executor, c cVar) {
        this.f3587a = executor;
        this.f3589c = cVar;
    }

    @Override // com.google.android.gms.d.r
    public final void a(f<TResult> fVar) {
        if (fVar.b() || fVar.c()) {
            return;
        }
        synchronized (this.f3588b) {
            if (this.f3589c != null) {
                this.f3587a.execute(new o(this, fVar));
            }
        }
    }
}
