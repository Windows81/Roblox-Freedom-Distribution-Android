package com.google.android.gms.f;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class z<TResult> extends g<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3960a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x<TResult> f3961b = new x<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3962c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f3963d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TResult f3964e;
    private Exception f;

    z() {
    }

    private final void g() {
        com.google.android.gms.common.internal.aa.a(this.f3962c, "Task is not yet complete");
    }

    private final void h() {
        com.google.android.gms.common.internal.aa.a(!this.f3962c, "Task is already complete");
    }

    private final void i() {
        if (this.f3963d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    private final void j() {
        synchronized (this.f3960a) {
            if (this.f3962c) {
                this.f3961b.a(this);
            }
        }
    }

    @Override // com.google.android.gms.f.g
    public final g<TResult> a(c<TResult> cVar) {
        return a(i.f3924a, cVar);
    }

    @Override // com.google.android.gms.f.g
    public final g<TResult> a(d dVar) {
        return a(i.f3924a, dVar);
    }

    @Override // com.google.android.gms.f.g
    public final g<TResult> a(e<? super TResult> eVar) {
        return a(i.f3924a, eVar);
    }

    @Override // com.google.android.gms.f.g
    public final <TContinuationResult> g<TContinuationResult> a(Executor executor, a<TResult, TContinuationResult> aVar) {
        z zVar = new z();
        this.f3961b.a(new k(executor, aVar, zVar));
        j();
        return zVar;
    }

    @Override // com.google.android.gms.f.g
    public final g<TResult> a(Executor executor, b bVar) {
        this.f3961b.a(new o(executor, bVar));
        j();
        return this;
    }

    @Override // com.google.android.gms.f.g
    public final g<TResult> a(Executor executor, c<TResult> cVar) {
        this.f3961b.a(new q(executor, cVar));
        j();
        return this;
    }

    @Override // com.google.android.gms.f.g
    public final g<TResult> a(Executor executor, d dVar) {
        this.f3961b.a(new s(executor, dVar));
        j();
        return this;
    }

    @Override // com.google.android.gms.f.g
    public final g<TResult> a(Executor executor, e<? super TResult> eVar) {
        this.f3961b.a(new u(executor, eVar));
        j();
        return this;
    }

    @Override // com.google.android.gms.f.g
    public final <X extends Throwable> TResult a(Class<X> cls) throws Throwable {
        TResult tresult;
        synchronized (this.f3960a) {
            g();
            i();
            if (cls.isInstance(this.f)) {
                throw cls.cast(this.f);
            }
            if (this.f != null) {
                throw new f(this.f);
            }
            tresult = this.f3964e;
        }
        return tresult;
    }

    public final void a(Exception exc) {
        com.google.android.gms.common.internal.aa.a(exc, "Exception must not be null");
        synchronized (this.f3960a) {
            h();
            this.f3962c = true;
            this.f = exc;
        }
        this.f3961b.a(this);
    }

    public final void a(TResult tresult) {
        synchronized (this.f3960a) {
            h();
            this.f3962c = true;
            this.f3964e = tresult;
        }
        this.f3961b.a(this);
    }

    @Override // com.google.android.gms.f.g
    public final boolean a() {
        boolean z;
        synchronized (this.f3960a) {
            z = this.f3962c;
        }
        return z;
    }

    @Override // com.google.android.gms.f.g
    public final <TContinuationResult> g<TContinuationResult> b(Executor executor, a<TResult, g<TContinuationResult>> aVar) {
        z zVar = new z();
        this.f3961b.a(new m(executor, aVar, zVar));
        j();
        return zVar;
    }

    @Override // com.google.android.gms.f.g
    public final boolean b() {
        boolean z;
        synchronized (this.f3960a) {
            z = this.f3962c && !this.f3963d && this.f == null;
        }
        return z;
    }

    public final boolean b(Exception exc) {
        com.google.android.gms.common.internal.aa.a(exc, "Exception must not be null");
        synchronized (this.f3960a) {
            if (this.f3962c) {
                return false;
            }
            this.f3962c = true;
            this.f = exc;
            this.f3961b.a(this);
            return true;
        }
    }

    public final boolean b(TResult tresult) {
        synchronized (this.f3960a) {
            if (this.f3962c) {
                return false;
            }
            this.f3962c = true;
            this.f3964e = tresult;
            this.f3961b.a(this);
            return true;
        }
    }

    @Override // com.google.android.gms.f.g
    public final boolean c() {
        return this.f3963d;
    }

    @Override // com.google.android.gms.f.g
    public final TResult d() {
        TResult tresult;
        synchronized (this.f3960a) {
            g();
            i();
            if (this.f != null) {
                throw new f(this.f);
            }
            tresult = this.f3964e;
        }
        return tresult;
    }

    @Override // com.google.android.gms.f.g
    public final Exception e() {
        Exception exc;
        synchronized (this.f3960a) {
            exc = this.f;
        }
        return exc;
    }

    public final boolean f() {
        synchronized (this.f3960a) {
            if (this.f3962c) {
                return false;
            }
            this.f3962c = true;
            this.f3963d = true;
            this.f3961b.a(this);
            return true;
        }
    }
}
