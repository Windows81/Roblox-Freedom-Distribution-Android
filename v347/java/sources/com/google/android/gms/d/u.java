package com.google.android.gms.d;

import com.google.android.gms.common.internal.w;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
final class u<TResult> extends f<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3600a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s<TResult> f3601b = new s<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private boolean f3602c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f3603d;

    @GuardedBy("mLock")
    private TResult e;

    @GuardedBy("mLock")
    private Exception f;

    u() {
    }

    @GuardedBy("mLock")
    private final void f() {
        w.a(this.f3602c, "Task is not yet complete");
    }

    @GuardedBy("mLock")
    private final void g() {
        w.a(!this.f3602c, "Task is already complete");
    }

    @GuardedBy("mLock")
    private final void h() {
        if (this.f3603d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    private final void i() {
        synchronized (this.f3600a) {
            if (this.f3602c) {
                this.f3601b.a(this);
            }
        }
    }

    @Override // com.google.android.gms.d.f
    public final f<TResult> a(b<TResult> bVar) {
        return a(h.f3574a, bVar);
    }

    @Override // com.google.android.gms.d.f
    public final f<TResult> a(Executor executor, a aVar) {
        this.f3601b.a(new j(executor, aVar));
        i();
        return this;
    }

    @Override // com.google.android.gms.d.f
    public final f<TResult> a(Executor executor, b<TResult> bVar) {
        this.f3601b.a(new l(executor, bVar));
        i();
        return this;
    }

    @Override // com.google.android.gms.d.f
    public final f<TResult> a(Executor executor, c cVar) {
        this.f3601b.a(new n(executor, cVar));
        i();
        return this;
    }

    @Override // com.google.android.gms.d.f
    public final f<TResult> a(Executor executor, d<? super TResult> dVar) {
        this.f3601b.a(new p(executor, dVar));
        i();
        return this;
    }

    public final void a(Exception exc) {
        w.a(exc, "Exception must not be null");
        synchronized (this.f3600a) {
            g();
            this.f3602c = true;
            this.f = exc;
        }
        this.f3601b.a(this);
    }

    public final void a(TResult tresult) {
        synchronized (this.f3600a) {
            g();
            this.f3602c = true;
            this.e = tresult;
        }
        this.f3601b.a(this);
    }

    @Override // com.google.android.gms.d.f
    public final boolean a() {
        boolean z;
        synchronized (this.f3600a) {
            z = this.f3602c;
        }
        return z;
    }

    @Override // com.google.android.gms.d.f
    public final boolean b() {
        boolean z;
        synchronized (this.f3600a) {
            z = this.f3602c && !this.f3603d && this.f == null;
        }
        return z;
    }

    public final boolean b(Exception exc) {
        boolean z = true;
        w.a(exc, "Exception must not be null");
        synchronized (this.f3600a) {
            if (this.f3602c) {
                z = false;
            } else {
                this.f3602c = true;
                this.f = exc;
                this.f3601b.a(this);
            }
        }
        return z;
    }

    public final boolean b(TResult tresult) {
        boolean z = true;
        synchronized (this.f3600a) {
            if (this.f3602c) {
                z = false;
            } else {
                this.f3602c = true;
                this.e = tresult;
                this.f3601b.a(this);
            }
        }
        return z;
    }

    @Override // com.google.android.gms.d.f
    public final boolean c() {
        return this.f3603d;
    }

    @Override // com.google.android.gms.d.f
    public final TResult d() {
        TResult tresult;
        synchronized (this.f3600a) {
            f();
            h();
            if (this.f != null) {
                throw new e(this.f);
            }
            tresult = this.e;
        }
        return tresult;
    }

    @Override // com.google.android.gms.d.f
    public final Exception e() {
        Exception exc;
        synchronized (this.f3600a) {
            exc = this.f;
        }
        return exc;
    }
}
