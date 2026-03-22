package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@KeepName
public abstract class BasePendingResult<R extends com.google.android.gms.common.api.i> extends com.google.android.gms.common.api.g<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final ThreadLocal<Boolean> f3333a = new am();
    private com.google.android.gms.common.api.j<? super R> g;
    private R i;
    private Status j;
    private volatile boolean k;
    private boolean l;
    private boolean m;

    @KeepName
    private b mResultGuardian;
    private com.google.android.gms.common.internal.p n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f3334b = new Object();
    private final CountDownLatch e = new CountDownLatch(1);
    private final ArrayList<g.a> f = new ArrayList<>();
    private final AtomicReference<ad> h = new AtomicReference<>();
    private boolean o = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a<R> f3335c = new a<>(Looper.getMainLooper());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WeakReference<com.google.android.gms.common.api.f> f3336d = new WeakReference<>(null);

    public static class a<R extends com.google.android.gms.common.api.i> extends Handler {
        public a() {
            this(Looper.getMainLooper());
        }

        public a(Looper looper) {
            super(looper);
        }

        public final void a(com.google.android.gms.common.api.j<? super R> jVar, R r) {
            sendMessage(obtainMessage(1, new Pair(jVar, r)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Pair pair = (Pair) message.obj;
                    com.google.android.gms.common.api.j jVar = (com.google.android.gms.common.api.j) pair.first;
                    com.google.android.gms.common.api.i iVar = (com.google.android.gms.common.api.i) pair.second;
                    try {
                        jVar.a(iVar);
                        return;
                    } catch (RuntimeException e) {
                        BasePendingResult.b(iVar);
                        throw e;
                    }
                case 2:
                    ((BasePendingResult) message.obj).a(Status.f3321d);
                    return;
                default:
                    Log.wtf("BasePendingResult", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
                    return;
            }
        }
    }

    private final class b {
        private b() {
        }

        /* synthetic */ b(BasePendingResult basePendingResult, am amVar) {
            this();
        }

        protected final void finalize() throws Throwable {
            BasePendingResult.b(BasePendingResult.this.i);
            super.finalize();
        }
    }

    @Deprecated
    BasePendingResult() {
    }

    private final R b() {
        R r;
        synchronized (this.f3334b) {
            com.google.android.gms.common.internal.w.a(this.k ? false : true, "Result has already been consumed.");
            com.google.android.gms.common.internal.w.a(a(), "Result is not ready.");
            r = this.i;
            this.i = null;
            this.g = null;
            this.k = true;
        }
        ad andSet = this.h.getAndSet(null);
        if (andSet != null) {
            andSet.a(this);
        }
        return r;
    }

    public static void b(com.google.android.gms.common.api.i iVar) {
        if (iVar instanceof com.google.android.gms.common.api.h) {
            try {
                ((com.google.android.gms.common.api.h) iVar).a();
            } catch (RuntimeException e) {
                String strValueOf = String.valueOf(iVar);
                Log.w("BasePendingResult", new StringBuilder(String.valueOf(strValueOf).length() + 18).append("Unable to release ").append(strValueOf).toString(), e);
            }
        }
    }

    private final void c(R r) {
        am amVar = null;
        this.i = r;
        this.n = null;
        this.e.countDown();
        this.j = this.i.a();
        if (this.l) {
            this.g = null;
        } else if (this.g != null) {
            this.f3335c.removeMessages(2);
            this.f3335c.a(this.g, b());
        } else if (this.i instanceof com.google.android.gms.common.api.h) {
            this.mResultGuardian = new b(this, amVar);
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

    public final void a(Status status) {
        synchronized (this.f3334b) {
            if (!a()) {
                a(b(status));
                this.m = true;
            }
        }
    }

    public final void a(R r) {
        synchronized (this.f3334b) {
            if (this.m || this.l) {
                b(r);
                return;
            }
            if (a()) {
            }
            com.google.android.gms.common.internal.w.a(!a(), "Results have already been set");
            com.google.android.gms.common.internal.w.a(this.k ? false : true, "Result has already been consumed");
            c(r);
        }
    }

    public final boolean a() {
        return this.e.getCount() == 0;
    }

    protected abstract R b(Status status);
}
