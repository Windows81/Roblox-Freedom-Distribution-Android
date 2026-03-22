package com.google.android.gms.f;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class o<TResult> implements w<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f3938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f3939b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f3940c;

    public o(Executor executor, b bVar) {
        this.f3938a = executor;
        this.f3940c = bVar;
    }

    @Override // com.google.android.gms.f.w
    public final void a(g gVar) {
        if (gVar.c()) {
            synchronized (this.f3939b) {
                if (this.f3940c == null) {
                    return;
                }
                this.f3938a.execute(new p(this));
            }
        }
    }
}
