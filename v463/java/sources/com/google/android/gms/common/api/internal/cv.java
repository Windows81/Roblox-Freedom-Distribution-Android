package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.c;
import com.google.android.gms.common.internal.e;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class cv implements bh {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<com.google.android.gms.common.api.a<?>, Boolean> f3629c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f3630d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final am f3631e;
    private final Lock f;
    private final Looper g;
    private final com.google.android.gms.common.f h;
    private final Condition i;
    private final com.google.android.gms.common.internal.e j;
    private final boolean k;
    private final boolean l;
    private boolean n;
    private Map<cg<?>, ConnectionResult> o;
    private Map<cg<?>, ConnectionResult> p;
    private cy q;
    private ConnectionResult r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<a.c<?>, cu<?>> f3627a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<a.c<?>, cu<?>> f3628b = new HashMap();
    private final Queue<c.a<?, ?>> m = new LinkedList();

    public cv(Context context, Lock lock, Looper looper, com.google.android.gms.common.f fVar, Map<a.c<?>, a.f> map, com.google.android.gms.common.internal.e eVar, Map<com.google.android.gms.common.api.a<?>, Boolean> map2, a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> abstractC0083a, ArrayList<co> arrayList, am amVar, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        this.f = lock;
        this.g = looper;
        this.i = lock.newCondition();
        this.h = fVar;
        this.f3631e = amVar;
        this.f3629c = map2;
        this.j = eVar;
        this.k = z;
        HashMap map3 = new HashMap();
        for (com.google.android.gms.common.api.a<?> aVar : map2.keySet()) {
            map3.put(aVar.c(), aVar);
        }
        HashMap map4 = new HashMap();
        ArrayList<co> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            co coVar = arrayList2.get(i);
            i++;
            co coVar2 = coVar;
            map4.put(coVar2.f3612a, coVar2);
        }
        boolean z5 = false;
        boolean z6 = true;
        boolean z7 = false;
        for (Map.Entry<a.c<?>, a.f> entry : map.entrySet()) {
            com.google.android.gms.common.api.a aVar2 = (com.google.android.gms.common.api.a) map3.get(entry.getKey());
            a.f value = entry.getValue();
            if (value.k()) {
                z4 = z6;
                if (this.f3629c.get(aVar2).booleanValue()) {
                    z3 = z7;
                    z2 = true;
                } else {
                    z2 = true;
                    z3 = true;
                }
            } else {
                z2 = z5;
                z3 = z7;
                z4 = false;
            }
            cu<?> cuVar = new cu<>(context, aVar2, looper, value, (co) map4.get(aVar2), eVar, abstractC0083a);
            this.f3627a.put(entry.getKey(), cuVar);
            if (value.j()) {
                this.f3628b.put(entry.getKey(), cuVar);
            }
            z5 = z2;
            z6 = z4;
            z7 = z3;
        }
        this.l = (!z5 || z6 || z7) ? false : true;
        this.f3630d = d.a();
    }

    private final ConnectionResult a(a.c<?> cVar) {
        this.f.lock();
        try {
            cu<?> cuVar = this.f3627a.get(cVar);
            if (this.o != null && cuVar != null) {
                return this.o.get(cuVar.c());
            }
            this.f.unlock();
            return null;
        } finally {
            this.f.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a(cu<?> cuVar, ConnectionResult connectionResult) {
        return !connectionResult.b() && !connectionResult.a() && this.f3629c.get(cuVar.b()).booleanValue() && cuVar.a().k() && this.h.a(connectionResult.c());
    }

    static /* synthetic */ boolean a(cv cvVar, boolean z) {
        cvVar.n = false;
        return false;
    }

    private final <T extends c.a<? extends com.google.android.gms.common.api.l, ? extends a.b>> boolean c(T t) {
        a.c<?> cVarD = t.d();
        ConnectionResult connectionResultA = a(cVarD);
        if (connectionResultA == null || connectionResultA.c() != 4) {
            return false;
        }
        t.b(new Status(4, null, this.f3630d.a(this.f3627a.get(cVarD).c(), System.identityHashCode(this.f3631e))));
        return true;
    }

    private final boolean e() {
        this.f.lock();
        try {
            if (this.n && this.k) {
                Iterator<a.c<?>> it = this.f3628b.keySet().iterator();
                while (it.hasNext()) {
                    ConnectionResult connectionResultA = a(it.next());
                    if (connectionResultA == null || !connectionResultA.b()) {
                    }
                }
                this.f.unlock();
                return true;
            }
            return false;
        } finally {
            this.f.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g() {
        if (this.j == null) {
            this.f3631e.f3496c = Collections.emptySet();
            return;
        }
        HashSet hashSet = new HashSet(this.j.d());
        Map<com.google.android.gms.common.api.a<?>, e.b> mapF = this.j.f();
        for (com.google.android.gms.common.api.a<?> aVar : mapF.keySet()) {
            ConnectionResult connectionResultA = a(aVar);
            if (connectionResultA != null && connectionResultA.b()) {
                hashSet.addAll(mapF.get(aVar).f3796a);
            }
        }
        this.f3631e.f3496c = hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j() {
        while (!this.m.isEmpty()) {
            b(this.m.remove());
        }
        this.f3631e.a((Bundle) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ConnectionResult k() {
        int i = 0;
        ConnectionResult connectionResult = null;
        ConnectionResult connectionResult2 = null;
        int i2 = 0;
        for (cu<?> cuVar : this.f3627a.values()) {
            com.google.android.gms.common.api.a<?> aVarB = cuVar.b();
            ConnectionResult connectionResult3 = this.o.get(cuVar.c());
            if (!connectionResult3.b() && (!this.f3629c.get(aVarB).booleanValue() || connectionResult3.a() || this.h.a(connectionResult3.c()))) {
                if (connectionResult3.c() == 4 && this.k) {
                    int iA = aVarB.a().a();
                    if (connectionResult2 == null || i2 > iA) {
                        connectionResult2 = connectionResult3;
                        i2 = iA;
                    }
                } else {
                    int iA2 = aVarB.a().a();
                    if (connectionResult == null || i > iA2) {
                        connectionResult = connectionResult3;
                        i = iA2;
                    }
                }
            }
        }
        return (connectionResult == null || connectionResult2 == null || i <= i2) ? connectionResult : connectionResult2;
    }

    public final ConnectionResult a(com.google.android.gms.common.api.a<?> aVar) {
        return a(aVar.c());
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final <A extends a.b, R extends com.google.android.gms.common.api.l, T extends c.a<R, A>> T a(T t) {
        if (this.k && c(t)) {
            return t;
        }
        if (f()) {
            this.f3631e.f3498e.a(t);
            return (T) this.f3627a.get(t.d()).a(t);
        }
        this.m.add(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final void a() {
        this.f.lock();
        try {
            if (!this.n) {
                this.n = true;
                this.o = null;
                this.p = null;
                this.q = null;
                this.r = null;
                this.f3630d.d();
                this.f3630d.a(this.f3627a.values()).a(new com.google.android.gms.common.util.a.a(this.g), new cx(this));
            }
        } finally {
            this.f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final boolean a(l lVar) {
        this.f.lock();
        try {
            if (!this.n || e()) {
                this.f.unlock();
                return false;
            }
            this.f3630d.d();
            this.q = new cy(this, lVar);
            this.f3630d.a(this.f3628b.values()).a(new com.google.android.gms.common.util.a.a(this.g), this.q);
            this.f.unlock();
            return true;
        } catch (Throwable th) {
            this.f.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final ConnectionResult b() {
        a();
        while (d()) {
            try {
                this.i.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        if (f()) {
            return ConnectionResult.f3415a;
        }
        ConnectionResult connectionResult = this.r;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final <A extends a.b, T extends c.a<? extends com.google.android.gms.common.api.l, A>> T b(T t) {
        a.c<A> cVarD = t.d();
        if (this.k && c(t)) {
            return t;
        }
        this.f3631e.f3498e.a(t);
        return (T) this.f3627a.get(cVarD).b(t);
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final void c() {
        this.f.lock();
        try {
            this.n = false;
            this.o = null;
            this.p = null;
            if (this.q != null) {
                this.q.a();
                this.q = null;
            }
            this.r = null;
            while (!this.m.isEmpty()) {
                c.a<?, ?> aVarRemove = this.m.remove();
                aVarRemove.a((cc) null);
                aVarRemove.a();
            }
            this.i.signalAll();
        } finally {
            this.f.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean d() {
        /*
            r2 = this;
            java.util.concurrent.locks.Lock r0 = r2.f
            r0.lock()
            java.util.Map<com.google.android.gms.common.api.internal.cg<?>, com.google.android.gms.common.ConnectionResult> r0 = r2.o     // Catch: java.lang.Throwable -> L16
            if (r0 != 0) goto Lf
            boolean r0 = r2.n     // Catch: java.lang.Throwable -> L16
            if (r0 == 0) goto Lf
            r0 = 1
            goto L10
        Lf:
            r0 = 0
        L10:
            java.util.concurrent.locks.Lock r1 = r2.f
            r1.unlock()
            return r0
        L16:
            r0 = move-exception
            java.util.concurrent.locks.Lock r1 = r2.f
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.cv.d():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000f  */
    @Override // com.google.android.gms.common.api.internal.bh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean f() {
        /*
            r2 = this;
            java.util.concurrent.locks.Lock r0 = r2.f
            r0.lock()
            java.util.Map<com.google.android.gms.common.api.internal.cg<?>, com.google.android.gms.common.ConnectionResult> r0 = r2.o     // Catch: java.lang.Throwable -> L16
            if (r0 == 0) goto Lf
            com.google.android.gms.common.ConnectionResult r0 = r2.r     // Catch: java.lang.Throwable -> L16
            if (r0 != 0) goto Lf
            r0 = 1
            goto L10
        Lf:
            r0 = 0
        L10:
            java.util.concurrent.locks.Lock r1 = r2.f
            r1.unlock()
            return r0
        L16:
            r0 = move-exception
            java.util.concurrent.locks.Lock r1 = r2.f
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.cv.f():boolean");
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final void h() {
        this.f.lock();
        try {
            this.f3630d.e();
            if (this.q != null) {
                this.q.a();
                this.q = null;
            }
            if (this.p == null) {
                this.p = new androidx.c.a(this.f3628b.size());
            }
            ConnectionResult connectionResult = new ConnectionResult(4);
            Iterator<cu<?>> it = this.f3628b.values().iterator();
            while (it.hasNext()) {
                this.p.put(it.next().c(), connectionResult);
            }
            if (this.o != null) {
                this.o.putAll(this.p);
            }
        } finally {
            this.f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final void i() {
    }
}
