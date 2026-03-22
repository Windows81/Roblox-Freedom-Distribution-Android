package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.l;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class BasePendingResult<R extends com.google.android.gms.common.api.l> extends com.google.android.gms.common.api.g<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final ThreadLocal<Boolean> f3465a = new cn();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f3466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a<R> f3467c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WeakReference<com.google.android.gms.common.api.f> f3468d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CountDownLatch f3469e;
    private final ArrayList<g.a> f;
    private com.google.android.gms.common.api.m<? super R> g;
    private final AtomicReference<cc> h;
    private R i;
    private Status j;
    private volatile boolean k;
    private boolean l;
    private boolean m;
    private b mResultGuardian;
    private com.google.android.gms.common.internal.r n;
    private volatile bw<R> o;
    private boolean p;

    public static class a<R extends com.google.android.gms.common.api.l> extends Handler {
        public a() {
            this(Looper.getMainLooper());
        }

        public a(Looper looper) {
            super(looper);
        }

        public final void a(com.google.android.gms.common.api.m<? super R> mVar, R r) {
            sendMessage(obtainMessage(1, new Pair(mVar, r)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                Pair pair = (Pair) message.obj;
                com.google.android.gms.common.api.m mVar = (com.google.android.gms.common.api.m) pair.first;
                com.google.android.gms.common.api.l lVar = (com.google.android.gms.common.api.l) pair.second;
                try {
                    mVar.a(lVar);
                    return;
                } catch (RuntimeException e2) {
                    BasePendingResult.c(lVar);
                    throw e2;
                }
            }
            if (i == 2) {
                ((BasePendingResult) message.obj).c(Status.f3439d);
                return;
            }
            int i2 = message.what;
            StringBuilder sb = new StringBuilder(45);
            sb.append("Don't know how to handle message: ");
            sb.append(i2);
            Log.wtf("BasePendingResult", sb.toString(), new Exception());
        }
    }

    private final class b {
        private b() {
        }

        /* synthetic */ b(BasePendingResult basePendingResult, cn cnVar) {
            this();
        }

        protected final void finalize() throws Throwable {
            BasePendingResult.c(BasePendingResult.this.i);
            super.finalize();
        }
    }

    @Deprecated
    BasePendingResult() {
        this.f3466b = new Object();
        this.f3469e = new CountDownLatch(1);
        this.f = new ArrayList<>();
        this.h = new AtomicReference<>();
        this.p = false;
        this.f3467c = new a<>(Looper.getMainLooper());
        this.f3468d = new WeakReference<>(null);
    }

    protected BasePendingResult(com.google.android.gms.common.api.f fVar) {
        this.f3466b = new Object();
        this.f3469e = new CountDownLatch(1);
        this.f = new ArrayList<>();
        this.h = new AtomicReference<>();
        this.p = false;
        this.f3467c = new a<>(fVar != null ? fVar.c() : Looper.getMainLooper());
        this.f3468d = new WeakReference<>(fVar);
    }

    private final void a(R r) {
        this.i = r;
        cn cnVar = null;
        this.n = null;
        this.f3469e.countDown();
        this.j = this.i.b();
        if (this.l) {
            this.g = null;
        } else if (this.g != null) {
            this.f3467c.removeMessages(2);
            this.f3467c.a(this.g, d());
        } else if (this.i instanceof com.google.android.gms.common.api.i) {
            this.mResultGuardian = new b(this, cnVar);
        }
        ArrayList<g.a> arrayList = this.f;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            g.a aVar = arrayList.get(i);
            i++;
            aVar.a(this.j);
        }
        this.f.clear();
    }

    public static void c(com.google.android.gms.common.api.l lVar) {
        if (lVar instanceof com.google.android.gms.common.api.i) {
            try {
                ((com.google.android.gms.common.api.i) lVar).a();
            } catch (RuntimeException e2) {
                String strValueOf = String.valueOf(lVar);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(strValueOf);
                Log.w("BasePendingResult", sb.toString(), e2);
            }
        }
    }

    private final R d() {
        R r;
        synchronized (this.f3466b) {
            com.google.android.gms.common.internal.aa.a(!this.k, "Result has already been consumed.");
            com.google.android.gms.common.internal.aa.a(f(), "Result is not ready.");
            r = this.i;
            this.i = null;
            this.g = null;
            this.k = true;
        }
        cc andSet = this.h.getAndSet(null);
        if (andSet != null) {
            andSet.a(this);
        }
        return r;
    }

    @Override // com.google.android.gms.common.api.g
    public final R a(long j, TimeUnit timeUnit) {
        if (j > 0) {
            com.google.android.gms.common.internal.aa.c("await must not be called on the UI thread when time is greater than zero.");
        }
        com.google.android.gms.common.internal.aa.a(!this.k, "Result has already been consumed.");
        com.google.android.gms.common.internal.aa.a(this.o == null, "Cannot await if then() has been called.");
        try {
            if (!this.f3469e.await(j, timeUnit)) {
                c(Status.f3439d);
            }
        } catch (InterruptedException unused) {
            c(Status.f3437b);
        }
        com.google.android.gms.common.internal.aa.a(f(), "Result is not ready.");
        return (R) d();
    }

    protected abstract R a(Status status);

    @Override // com.google.android.gms.common.api.g
    public void a() {
        synchronized (this.f3466b) {
            if (!this.l && !this.k) {
                if (this.n != null) {
                    try {
                        this.n.a();
                    } catch (RemoteException unused) {
                    }
                }
                c(this.i);
                this.l = true;
                a(a(Status.f3440e));
            }
        }
    }

    @Override // com.google.android.gms.common.api.g
    public final void a(g.a aVar) {
        com.google.android.gms.common.internal.aa.b(aVar != null, "Callback cannot be null.");
        synchronized (this.f3466b) {
            if (f()) {
                aVar.a(this.j);
            } else {
                this.f.add(aVar);
            }
        }
    }

    public final void a(cc ccVar) {
        this.h.set(ccVar);
    }

    @Override // com.google.android.gms.common.api.g
    public final void a(com.google.android.gms.common.api.m<? super R> mVar) {
        synchronized (this.f3466b) {
            if (mVar == null) {
                this.g = null;
                return;
            }
            boolean z = true;
            com.google.android.gms.common.internal.aa.a(!this.k, "Result has already been consumed.");
            if (this.o != null) {
                z = false;
            }
            com.google.android.gms.common.internal.aa.a(z, "Cannot set callbacks if then() has been called.");
            if (b()) {
                return;
            }
            if (f()) {
                this.f3467c.a(mVar, d());
            } else {
                this.g = mVar;
            }
        }
    }

    public final void b(R r) {
        synchronized (this.f3466b) {
            if (this.m || this.l) {
                c(r);
                return;
            }
            f();
            boolean z = true;
            com.google.android.gms.common.internal.aa.a(!f(), "Results have already been set");
            if (this.k) {
                z = false;
            }
            com.google.android.gms.common.internal.aa.a(z, "Result has already been consumed");
            a(r);
        }
    }

    @Override // com.google.android.gms.common.api.g
    public boolean b() {
        boolean z;
        synchronized (this.f3466b) {
            z = this.l;
        }
        return z;
    }

    @Override // com.google.android.gms.common.api.g
    public final Integer c() {
        return null;
    }

    public final void c(Status status) {
        synchronized (this.f3466b) {
            if (!f()) {
                b(a(status));
                this.m = true;
            }
        }
    }

    public final boolean f() {
        return this.f3469e.getCount() == 0;
    }

    public final boolean g() {
        boolean zB;
        synchronized (this.f3466b) {
            if (this.f3468d.get() == null || !this.p) {
                a();
            }
            zB = b();
        }
        return zB;
    }

    public final void h() {
        this.p = this.p || f3465a.get().booleanValue();
    }
}
