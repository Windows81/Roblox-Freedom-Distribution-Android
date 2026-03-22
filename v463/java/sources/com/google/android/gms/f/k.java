package com.google.android.gms.f;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class k<TResult, TContinuationResult> implements w<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f3928a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a<TResult, TContinuationResult> f3929b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final z<TContinuationResult> f3930c;

    public k(Executor executor, a<TResult, TContinuationResult> aVar, z<TContinuationResult> zVar) {
        this.f3928a = executor;
        this.f3929b = aVar;
        this.f3930c = zVar;
    }

    @Override // com.google.android.gms.f.w
    public final void a(g<TResult> gVar) {
        this.f3928a.execute(new l(this, gVar));
    }
}
