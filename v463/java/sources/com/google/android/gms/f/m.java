package com.google.android.gms.f;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class m<TResult, TContinuationResult> implements b, d, e<TContinuationResult>, w<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f3933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a<TResult, g<TContinuationResult>> f3934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final z<TContinuationResult> f3935c;

    public m(Executor executor, a<TResult, g<TContinuationResult>> aVar, z<TContinuationResult> zVar) {
        this.f3933a = executor;
        this.f3934b = aVar;
        this.f3935c = zVar;
    }

    @Override // com.google.android.gms.f.b
    public final void a() {
        this.f3935c.f();
    }

    @Override // com.google.android.gms.f.w
    public final void a(g<TResult> gVar) {
        this.f3933a.execute(new n(this, gVar));
    }

    @Override // com.google.android.gms.f.d
    public final void a(Exception exc) {
        this.f3935c.a(exc);
    }

    @Override // com.google.android.gms.f.e
    public final void a(TContinuationResult tcontinuationresult) {
        this.f3935c.a(tcontinuationresult);
    }
}
