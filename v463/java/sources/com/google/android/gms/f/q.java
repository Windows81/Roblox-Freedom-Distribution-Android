package com.google.android.gms.f;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class q<TResult> implements w<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f3942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f3943b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c<TResult> f3944c;

    public q(Executor executor, c<TResult> cVar) {
        this.f3942a = executor;
        this.f3944c = cVar;
    }

    @Override // com.google.android.gms.f.w
    public final void a(g<TResult> gVar) {
        synchronized (this.f3943b) {
            if (this.f3944c == null) {
                return;
            }
            this.f3942a.execute(new r(this, gVar));
        }
    }
}
