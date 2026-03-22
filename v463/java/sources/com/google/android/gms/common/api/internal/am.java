package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.c;
import com.google.android.gms.common.internal.k;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class am extends com.google.android.gms.common.api.f implements bi {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Map<a.c<?>, a.f> f3495b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final bz f3498e;
    private final Lock f;
    private boolean g;
    private final com.google.android.gms.common.internal.k h;
    private final int j;
    private final Context k;
    private final Looper l;
    private volatile boolean m;
    private final as p;
    private final com.google.android.gms.common.e q;
    private e r;
    private final com.google.android.gms.common.internal.e s;
    private final Map<com.google.android.gms.common.api.a<?>, Boolean> t;
    private final a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> u;
    private final ArrayList<co> w;
    private Integer x;
    private final k.a y;
    private bh i = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Queue<c.a<?, ?>> f3494a = new LinkedList();
    private long n = 120000;
    private long o = 5000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Set<Scope> f3496c = new HashSet();
    private final j v = new j();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Set<bw> f3497d = null;

    public am(Context context, Lock lock, Looper looper, com.google.android.gms.common.internal.e eVar, com.google.android.gms.common.e eVar2, a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> abstractC0083a, Map<com.google.android.gms.common.api.a<?>, Boolean> map, List<f.b> list, List<f.c> list2, Map<a.c<?>, a.f> map2, int i, int i2, ArrayList<co> arrayList, boolean z) {
        this.x = null;
        an anVar = new an(this);
        this.y = anVar;
        this.k = context;
        this.f = lock;
        this.g = false;
        this.h = new com.google.android.gms.common.internal.k(looper, anVar);
        this.l = looper;
        this.p = new as(this, looper);
        this.q = eVar2;
        this.j = i;
        if (i >= 0) {
            this.x = Integer.valueOf(i2);
        }
        this.t = map;
        this.f3495b = map2;
        this.w = arrayList;
        this.f3498e = new bz(this.f3495b);
        Iterator<f.b> it = list.iterator();
        while (it.hasNext()) {
            this.h.a(it.next());
        }
        Iterator<f.c> it2 = list2.iterator();
        while (it2.hasNext()) {
            this.h.a(it2.next());
        }
        this.s = eVar;
        this.u = abstractC0083a;
    }

    public static int a(Iterable<a.f> iterable, boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        for (a.f fVar : iterable) {
            if (fVar.j()) {
                z2 = true;
            }
            if (fVar.c()) {
                z3 = true;
            }
        }
        if (z2) {
            return (z3 && z) ? 2 : 1;
        }
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(com.google.android.gms.common.api.f fVar, n nVar, boolean z) {
        com.google.android.gms.common.internal.a.b.f3737c.a(fVar).a(new aq(this, nVar, z, fVar));
    }

    private final void b(int i) {
        Integer num = this.x;
        if (num == null) {
            this.x = Integer.valueOf(i);
        } else if (num.intValue() != i) {
            String strC = c(i);
            String strC2 = c(this.x.intValue());
            StringBuilder sb = new StringBuilder(String.valueOf(strC).length() + 51 + String.valueOf(strC2).length());
            sb.append("Cannot use sign-in mode: ");
            sb.append(strC);
            sb.append(". Mode was already set to ");
            sb.append(strC2);
            throw new IllegalStateException(sb.toString());
        }
        if (this.i != null) {
            return;
        }
        boolean z = false;
        boolean z2 = false;
        for (a.f fVar : this.f3495b.values()) {
            if (fVar.j()) {
                z = true;
            }
            if (fVar.c()) {
                z2 = true;
            }
        }
        int iIntValue = this.x.intValue();
        if (iIntValue == 1) {
            if (!z) {
                throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
            }
            if (z2) {
                throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
        } else if (iIntValue == 2 && z) {
            if (this.g) {
                this.i = new cv(this.k, this.f, this.l, this.q, this.f3495b, this.s, this.t, this.u, this.w, this, true);
                return;
            } else {
                this.i = cq.a(this.k, this, this.f, this.l, this.q, this.f3495b, this.s, this.t, this.u, this.w);
                return;
            }
        }
        if (!this.g || z2) {
            this.i = new av(this.k, this, this.f, this.l, this.q, this.f3495b, this.s, this.t, this.u, this.w, this);
        } else {
            this.i = new cv(this.k, this.f, this.l, this.q, this.f3495b, this.s, this.t, this.u, this.w, this, false);
        }
    }

    private static String c(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "UNKNOWN" : "SIGN_IN_MODE_NONE" : "SIGN_IN_MODE_OPTIONAL" : "SIGN_IN_MODE_REQUIRED";
    }

    private final void o() {
        this.h.b();
        this.i.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p() {
        this.f.lock();
        try {
            if (this.m) {
                o();
            }
        } finally {
            this.f.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q() {
        this.f.lock();
        try {
            if (l()) {
                o();
            }
        } finally {
            this.f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.f
    public final <C extends a.f> C a(a.c<C> cVar) {
        C c2 = (C) this.f3495b.get(cVar);
        com.google.android.gms.common.internal.aa.a(c2, "Appropriate Api was not requested.");
        return c2;
    }

    @Override // com.google.android.gms.common.api.f
    public final <A extends a.b, R extends com.google.android.gms.common.api.l, T extends c.a<R, A>> T a(T t) {
        com.google.android.gms.common.internal.aa.b(t.d() != null, "This task can not be enqueued (it's probably a Batch or malformed)");
        boolean zContainsKey = this.f3495b.containsKey(t.d());
        String strD = t.e() != null ? t.e().d() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(strD).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(strD);
        sb.append(" required for this call.");
        com.google.android.gms.common.internal.aa.b(zContainsKey, sb.toString());
        this.f.lock();
        try {
            if (this.i == null) {
                this.f3494a.add(t);
            } else {
                t = (T) this.i.a(t);
            }
            return t;
        } finally {
            this.f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.f
    public final void a(int i) {
        this.f.lock();
        boolean z = true;
        if (i != 3 && i != 1 && i != 2) {
            z = false;
        }
        try {
            StringBuilder sb = new StringBuilder(33);
            sb.append("Illegal sign-in mode: ");
            sb.append(i);
            com.google.android.gms.common.internal.aa.b(z, sb.toString());
            b(i);
            o();
        } finally {
            this.f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.bi
    public final void a(int i, boolean z) {
        if (i == 1 && !z && !this.m) {
            this.m = true;
            if (this.r == null) {
                this.r = this.q.a(this.k.getApplicationContext(), new at(this));
            }
            as asVar = this.p;
            asVar.sendMessageDelayed(asVar.obtainMessage(1), this.n);
            as asVar2 = this.p;
            asVar2.sendMessageDelayed(asVar2.obtainMessage(2), this.o);
        }
        this.f3498e.b();
        this.h.a(i);
        this.h.a();
        if (i == 2) {
            o();
        }
    }

    @Override // com.google.android.gms.common.api.internal.bi
    public final void a(Bundle bundle) {
        while (!this.f3494a.isEmpty()) {
            b(this.f3494a.remove());
        }
        this.h.a(bundle);
    }

    @Override // com.google.android.gms.common.api.internal.bi
    public final void a(ConnectionResult connectionResult) {
        if (!this.q.c(this.k, connectionResult.c())) {
            l();
        }
        if (this.m) {
            return;
        }
        this.h.a(connectionResult);
        this.h.a();
    }

    @Override // com.google.android.gms.common.api.f
    public final void a(f.c cVar) {
        this.h.a(cVar);
    }

    @Override // com.google.android.gms.common.api.f
    public final void a(bw bwVar) {
        this.f.lock();
        try {
            if (this.f3497d == null) {
                this.f3497d = new HashSet();
            }
            this.f3497d.add(bwVar);
        } finally {
            this.f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.f
    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.k);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.m);
        printWriter.append(" mWorkQueue.size()=").print(this.f3494a.size());
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.f3498e.f3574b.size());
        bh bhVar = this.i;
        if (bhVar != null) {
            bhVar.a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.f
    public final boolean a(l lVar) {
        bh bhVar = this.i;
        return bhVar != null && bhVar.a(lVar);
    }

    @Override // com.google.android.gms.common.api.f
    public final Context b() {
        return this.k;
    }

    @Override // com.google.android.gms.common.api.f
    public final <A extends a.b, T extends c.a<? extends com.google.android.gms.common.api.l, A>> T b(T t) {
        com.google.android.gms.common.internal.aa.b(t.d() != null, "This task can not be executed (it's probably a Batch or malformed)");
        boolean zContainsKey = this.f3495b.containsKey(t.d());
        String strD = t.e() != null ? t.e().d() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(strD).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(strD);
        sb.append(" required for this call.");
        com.google.android.gms.common.internal.aa.b(zContainsKey, sb.toString());
        this.f.lock();
        try {
            if (this.i == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            }
            if (this.m) {
                this.f3494a.add(t);
                while (!this.f3494a.isEmpty()) {
                    c.a<?, ?> aVarRemove = this.f3494a.remove();
                    this.f3498e.a(aVarRemove);
                    aVarRemove.b(Status.f3438c);
                }
            } else {
                t = (T) this.i.b(t);
            }
            return t;
        } finally {
            this.f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.f
    public final void b(f.c cVar) {
        this.h.b(cVar);
    }

    @Override // com.google.android.gms.common.api.f
    public final void b(bw bwVar) {
        String str;
        Exception exc;
        this.f.lock();
        try {
            if (this.f3497d == null) {
                str = "Attempted to remove pending transform when no transforms are registered.";
                exc = new Exception();
            } else if (this.f3497d.remove(bwVar)) {
                if (!m()) {
                    this.i.i();
                }
            } else {
                str = "Failed to remove pending transform - this may lead to memory leaks!";
                exc = new Exception();
            }
            Log.wtf("GoogleApiClientImpl", str, exc);
        } finally {
            this.f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.f
    public final Looper c() {
        return this.l;
    }

    @Override // com.google.android.gms.common.api.f
    public final void d() {
        bh bhVar = this.i;
        if (bhVar != null) {
            bhVar.h();
        }
    }

    @Override // com.google.android.gms.common.api.f
    public final void e() {
        this.f.lock();
        try {
            if (this.j >= 0) {
                com.google.android.gms.common.internal.aa.a(this.x != null, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.x == null) {
                this.x = Integer.valueOf(a((Iterable<a.f>) this.f3495b.values(), false));
            } else if (this.x.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            a(this.x.intValue());
        } finally {
            this.f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.f
    public final ConnectionResult f() {
        boolean z = true;
        com.google.android.gms.common.internal.aa.a(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        this.f.lock();
        try {
            if (this.j >= 0) {
                if (this.x == null) {
                    z = false;
                }
                com.google.android.gms.common.internal.aa.a(z, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.x == null) {
                this.x = Integer.valueOf(a((Iterable<a.f>) this.f3495b.values(), false));
            } else if (this.x.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            b(this.x.intValue());
            this.h.b();
            return this.i.b();
        } finally {
            this.f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.f
    public final void g() {
        this.f.lock();
        try {
            this.f3498e.a();
            if (this.i != null) {
                this.i.c();
            }
            this.v.a();
            for (c.a<?, ?> aVar : this.f3494a) {
                aVar.a((cc) null);
                aVar.a();
            }
            this.f3494a.clear();
            if (this.i != null) {
                l();
                this.h.a();
            }
        } finally {
            this.f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.f
    public final void h() {
        g();
        e();
    }

    @Override // com.google.android.gms.common.api.f
    public final com.google.android.gms.common.api.g<Status> i() {
        com.google.android.gms.common.internal.aa.a(j(), "GoogleApiClient is not connected yet.");
        com.google.android.gms.common.internal.aa.a(this.x.intValue() != 2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API");
        n nVar = new n(this);
        if (this.f3495b.containsKey(com.google.android.gms.common.internal.a.b.f3735a)) {
            a(this, nVar, false);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            com.google.android.gms.common.api.f fVarB = new f.a(this.k).a(com.google.android.gms.common.internal.a.b.f3736b).a(new ao(this, atomicReference, nVar)).a(new ap(this, nVar)).a(this.p).b();
            atomicReference.set(fVarB);
            fVarB.e();
        }
        return nVar;
    }

    @Override // com.google.android.gms.common.api.f
    public final boolean j() {
        bh bhVar = this.i;
        return bhVar != null && bhVar.f();
    }

    final boolean l() {
        if (!this.m) {
            return false;
        }
        this.m = false;
        this.p.removeMessages(2);
        this.p.removeMessages(1);
        e eVar = this.r;
        if (eVar != null) {
            eVar.a();
            this.r = null;
        }
        return true;
    }

    final boolean m() {
        this.f.lock();
        try {
            if (this.f3497d != null) {
                return !this.f3497d.isEmpty();
            }
            this.f.unlock();
            return false;
        } finally {
            this.f.unlock();
        }
    }

    final String n() {
        StringWriter stringWriter = new StringWriter();
        a("", (FileDescriptor) null, new PrintWriter(stringWriter), (String[]) null);
        return stringWriter.toString();
    }
}
