package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class av implements bh, cp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Map<a.c<?>, a.f> f3511a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f3513c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final am f3514d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final bi f3515e;
    private final Lock f;
    private final Condition g;
    private final Context h;
    private final com.google.android.gms.common.f i;
    private final ax j;
    private final com.google.android.gms.common.internal.e k;
    private final Map<com.google.android.gms.common.api.a<?>, Boolean> l;
    private final a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> m;
    private volatile au n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Map<a.c<?>, ConnectionResult> f3512b = new HashMap();
    private ConnectionResult o = null;

    public av(Context context, am amVar, Lock lock, Looper looper, com.google.android.gms.common.f fVar, Map<a.c<?>, a.f> map, com.google.android.gms.common.internal.e eVar, Map<com.google.android.gms.common.api.a<?>, Boolean> map2, a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> abstractC0083a, ArrayList<co> arrayList, bi biVar) {
        this.h = context;
        this.f = lock;
        this.i = fVar;
        this.f3511a = map;
        this.k = eVar;
        this.l = map2;
        this.m = abstractC0083a;
        this.f3514d = amVar;
        this.f3515e = biVar;
        ArrayList<co> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            co coVar = arrayList2.get(i);
            i++;
            coVar.a(this);
        }
        this.j = new ax(this, looper);
        this.g = lock.newCondition();
        this.n = new al(this);
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final <A extends a.b, R extends com.google.android.gms.common.api.l, T extends c.a<R, A>> T a(T t) {
        t.h();
        return (T) this.n.a(t);
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final void a() {
        this.n.c();
    }

    @Override // com.google.android.gms.common.api.f.b
    public final void a(int i) {
        this.f.lock();
        try {
            this.n.a(i);
        } finally {
            this.f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.f.b
    public final void a(Bundle bundle) {
        this.f.lock();
        try {
            this.n.a(bundle);
        } finally {
            this.f.unlock();
        }
    }

    final void a(ConnectionResult connectionResult) {
        this.f.lock();
        try {
            this.o = connectionResult;
            this.n = new al(this);
            this.n.a();
            this.g.signalAll();
        } finally {
            this.f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.cp
    public final void a(ConnectionResult connectionResult, com.google.android.gms.common.api.a<?> aVar, boolean z) {
        this.f.lock();
        try {
            this.n.a(connectionResult, aVar, z);
        } finally {
            this.f.unlock();
        }
    }

    final void a(aw awVar) {
        this.j.sendMessage(this.j.obtainMessage(1, awVar));
    }

    final void a(RuntimeException runtimeException) {
        this.j.sendMessage(this.j.obtainMessage(2, runtimeException));
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String strConcat = String.valueOf(str).concat("  ");
        printWriter.append((CharSequence) str).append("mState=").println(this.n);
        for (com.google.android.gms.common.api.a<?> aVar : this.l.keySet()) {
            printWriter.append((CharSequence) str).append((CharSequence) aVar.d()).println(":");
            this.f3511a.get(aVar.c()).a(strConcat, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final boolean a(l lVar) {
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final ConnectionResult b() {
        a();
        while (g()) {
            try {
                this.g.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        if (f()) {
            return ConnectionResult.f3415a;
        }
        ConnectionResult connectionResult = this.o;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final <A extends a.b, T extends c.a<? extends com.google.android.gms.common.api.l, A>> T b(T t) {
        t.h();
        return (T) this.n.b(t);
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final void c() {
        if (this.n.b()) {
            this.f3512b.clear();
        }
    }

    final void d() {
        this.f.lock();
        try {
            this.n = new aa(this, this.k, this.l, this.i, this.m, this.f, this.h);
            this.n.a();
            this.g.signalAll();
        } finally {
            this.f.unlock();
        }
    }

    final void e() {
        this.f.lock();
        try {
            this.f3514d.l();
            this.n = new x(this);
            this.n.a();
            this.g.signalAll();
        } finally {
            this.f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final boolean f() {
        return this.n instanceof x;
    }

    public final boolean g() {
        return this.n instanceof aa;
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final void h() {
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final void i() {
        if (f()) {
            ((x) this.n).d();
        }
    }
}
