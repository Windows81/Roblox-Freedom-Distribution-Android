package com.google.android.gms.d;

import com.google.android.gms.common.internal.w;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class i {

    private static final class a implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CountDownLatch f3577a;

        private a() {
            this.f3577a = new CountDownLatch(1);
        }

        /* synthetic */ a(v vVar) {
            this();
        }

        @Override // com.google.android.gms.d.a
        public final void a() {
            this.f3577a.countDown();
        }

        @Override // com.google.android.gms.d.c
        public final void a(Exception exc) {
            this.f3577a.countDown();
        }

        @Override // com.google.android.gms.d.d
        public final void a(Object obj) {
            this.f3577a.countDown();
        }

        public final void b() throws InterruptedException {
            this.f3577a.await();
        }
    }

    interface b extends com.google.android.gms.d.a, c, d<Object> {
    }

    public static <TResult> TResult a(f<TResult> fVar) throws ExecutionException, InterruptedException {
        w.a();
        w.a(fVar, "Task must not be null");
        if (fVar.a()) {
            return (TResult) b(fVar);
        }
        a aVar = new a(null);
        a(fVar, aVar);
        aVar.b();
        return (TResult) b(fVar);
    }

    private static void a(f<?> fVar, b bVar) {
        fVar.a(h.f3575b, (d<? super Object>) bVar);
        fVar.a(h.f3575b, (c) bVar);
        fVar.a(h.f3575b, (com.google.android.gms.d.a) bVar);
    }

    private static <TResult> TResult b(f<TResult> fVar) throws ExecutionException {
        if (fVar.b()) {
            return fVar.d();
        }
        if (fVar.c()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(fVar.e());
    }
}
