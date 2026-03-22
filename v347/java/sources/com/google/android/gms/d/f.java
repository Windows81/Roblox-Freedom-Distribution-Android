package com.google.android.gms.d;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class f<TResult> {
    public f<TResult> a(b<TResult> bVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public f<TResult> a(Executor executor, a aVar) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    public f<TResult> a(Executor executor, b<TResult> bVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public abstract f<TResult> a(Executor executor, c cVar);

    public abstract f<TResult> a(Executor executor, d<? super TResult> dVar);

    public abstract boolean a();

    public abstract boolean b();

    public abstract boolean c();

    public abstract TResult d();

    public abstract Exception e();
}
