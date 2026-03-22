package com.google.android.gms.f;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class s<TResult> implements w<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f3947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f3948b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d f3949c;

    public s(Executor executor, d dVar) {
        this.f3947a = executor;
        this.f3949c = dVar;
    }

    @Override // com.google.android.gms.f.w
    public final void a(g<TResult> gVar) {
        if (gVar.b() || gVar.c()) {
            return;
        }
        synchronized (this.f3948b) {
            if (this.f3949c == null) {
                return;
            }
            this.f3947a.execute(new t(this, gVar));
        }
    }
}
