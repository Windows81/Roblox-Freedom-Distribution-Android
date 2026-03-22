package com.google.android.gms.f;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class u<TResult> implements w<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f3952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f3953b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e<? super TResult> f3954c;

    public u(Executor executor, e<? super TResult> eVar) {
        this.f3952a = executor;
        this.f3954c = eVar;
    }

    @Override // com.google.android.gms.f.w
    public final void a(g<TResult> gVar) {
        if (gVar.b()) {
            synchronized (this.f3953b) {
                if (this.f3954c == null) {
                    return;
                }
                this.f3952a.execute(new v(this, gVar));
            }
        }
    }
}
