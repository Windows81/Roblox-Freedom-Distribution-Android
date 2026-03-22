package com.google.android.gms.f;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class g<TResult> {
    public g<TResult> a(c<TResult> cVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public abstract g<TResult> a(d dVar);

    public abstract g<TResult> a(e<? super TResult> eVar);

    public <TContinuationResult> g<TContinuationResult> a(Executor executor, a<TResult, TContinuationResult> aVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    public g<TResult> a(Executor executor, b bVar) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    public g<TResult> a(Executor executor, c<TResult> cVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public abstract g<TResult> a(Executor executor, d dVar);

    public abstract g<TResult> a(Executor executor, e<? super TResult> eVar);

    public abstract <X extends Throwable> TResult a(Class<X> cls) throws Throwable;

    public abstract boolean a();

    public <TContinuationResult> g<TContinuationResult> b(Executor executor, a<TResult, g<TContinuationResult>> aVar) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    public abstract boolean b();

    public abstract boolean c();

    public abstract TResult d();

    public abstract Exception e();
}
