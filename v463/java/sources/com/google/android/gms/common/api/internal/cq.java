package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class cq implements bh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final am f3616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Looper f3617c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final av f3618d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final av f3619e;
    private final Map<a.c<?>, av> f;
    private final a.f h;
    private Bundle i;
    private final Lock m;
    private final Set<l> g = Collections.newSetFromMap(new WeakHashMap());
    private ConnectionResult j = null;
    private ConnectionResult k = null;
    private boolean l = false;
    private int n = 0;

    private cq(Context context, am amVar, Lock lock, Looper looper, com.google.android.gms.common.f fVar, Map<a.c<?>, a.f> map, Map<a.c<?>, a.f> map2, com.google.android.gms.common.internal.e eVar, a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> abstractC0083a, a.f fVar2, ArrayList<co> arrayList, ArrayList<co> arrayList2, Map<com.google.android.gms.common.api.a<?>, Boolean> map3, Map<com.google.android.gms.common.api.a<?>, Boolean> map4) {
        this.f3615a = context;
        this.f3616b = amVar;
        this.m = lock;
        this.f3617c = looper;
        this.h = fVar2;
        this.f3618d = new av(context, amVar, lock, looper, fVar, map2, null, map4, null, arrayList2, new cs(this, null));
        this.f3619e = new av(context, this.f3616b, lock, looper, fVar, map, eVar, map3, abstractC0083a, arrayList, new ct(this, null));
        androidx.c.a aVar = new androidx.c.a();
        Iterator<a.c<?>> it = map2.keySet().iterator();
        while (it.hasNext()) {
            aVar.put(it.next(), this.f3618d);
        }
        Iterator<a.c<?>> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            aVar.put(it2.next(), this.f3619e);
        }
        this.f = Collections.unmodifiableMap(aVar);
    }

    public static cq a(Context context, am amVar, Lock lock, Looper looper, com.google.android.gms.common.f fVar, Map<a.c<?>, a.f> map, com.google.android.gms.common.internal.e eVar, Map<com.google.android.gms.common.api.a<?>, Boolean> map2, a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> abstractC0083a, ArrayList<co> arrayList) {
        androidx.c.a aVar = new androidx.c.a();
        androidx.c.a aVar2 = new androidx.c.a();
        a.f fVar2 = null;
        for (Map.Entry<a.c<?>, a.f> entry : map.entrySet()) {
            a.f value = entry.getValue();
            if (value.c()) {
                fVar2 = value;
            }
            boolean zJ = value.j();
            a.c<?> key = entry.getKey();
            if (zJ) {
                aVar.put(key, value);
            } else {
                aVar2.put(key, value);
            }
        }
        com.google.android.gms.common.internal.aa.a(!aVar.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        androidx.c.a aVar3 = new androidx.c.a();
        androidx.c.a aVar4 = new androidx.c.a();
        for (com.google.android.gms.common.api.a<?> aVar5 : map2.keySet()) {
            a.c<?> cVarC = aVar5.c();
            if (aVar.containsKey(cVarC)) {
                aVar3.put(aVar5, map2.get(aVar5));
            } else {
                if (!aVar2.containsKey(cVarC)) {
                    throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
                }
                aVar4.put(aVar5, map2.get(aVar5));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList<co> arrayList4 = arrayList;
        int size = arrayList4.size();
        int i = 0;
        while (i < size) {
            co coVar = arrayList4.get(i);
            i++;
            co coVar2 = coVar;
            if (aVar3.containsKey(coVar2.f3612a)) {
                arrayList2.add(coVar2);
            } else {
                if (!aVar4.containsKey(coVar2.f3612a)) {
                    throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
                }
                arrayList3.add(coVar2);
            }
        }
        return new cq(context, amVar, lock, looper, fVar, aVar, aVar2, eVar, abstractC0083a, fVar2, arrayList2, arrayList3, aVar3, aVar4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(int i, boolean z) {
        this.f3616b.a(i, z);
        this.k = null;
        this.j = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Bundle bundle) {
        Bundle bundle2 = this.i;
        if (bundle2 == null) {
            this.i = bundle;
        } else if (bundle != null) {
            bundle2.putAll(bundle);
        }
    }

    private final void a(ConnectionResult connectionResult) {
        int i = this.n;
        if (i == 1) {
            g();
        } else if (i != 2) {
            Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
        } else {
            this.f3616b.a(connectionResult);
            g();
        }
        this.n = 0;
    }

    private static boolean b(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.b();
    }

    private final boolean c(c.a<? extends com.google.android.gms.common.api.l, ? extends a.b> aVar) {
        Object objD = aVar.d();
        com.google.android.gms.common.internal.aa.b(this.f.containsKey(objD), "GoogleApiClient is not configured to use the API required for this call.");
        return this.f.get(objD).equals(this.f3619e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        if (!b(this.j)) {
            if (this.j != null && b(this.k)) {
                this.f3619e.c();
                a(this.j);
                return;
            }
            ConnectionResult connectionResult = this.j;
            if (connectionResult == null || this.k == null) {
                return;
            }
            if (this.f3619e.f3513c < this.f3618d.f3513c) {
                connectionResult = this.k;
            }
            a(connectionResult);
            return;
        }
        if (b(this.k) || j()) {
            int i = this.n;
            if (i == 1) {
                g();
            } else if (i != 2) {
                Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
            } else {
                this.f3616b.a(this.i);
                g();
            }
            this.n = 0;
            return;
        }
        ConnectionResult connectionResult2 = this.k;
        if (connectionResult2 != null) {
            if (this.n == 1) {
                g();
            } else {
                a(connectionResult2);
                this.f3618d.c();
            }
        }
    }

    private final void g() {
        Iterator<l> it = this.g.iterator();
        while (it.hasNext()) {
            it.next().h();
        }
        this.g.clear();
    }

    private final boolean j() {
        ConnectionResult connectionResult = this.k;
        return connectionResult != null && connectionResult.c() == 4;
    }

    private final PendingIntent k() {
        if (this.h == null) {
            return null;
        }
        return PendingIntent.getActivity(this.f3615a, System.identityHashCode(this.f3616b), this.h.d(), 134217728);
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final <A extends a.b, R extends com.google.android.gms.common.api.l, T extends c.a<R, A>> T a(T t) {
        if (!c((c.a<? extends com.google.android.gms.common.api.l, ? extends a.b>) t)) {
            return (T) this.f3618d.a(t);
        }
        if (!j()) {
            return (T) this.f3619e.a(t);
        }
        t.b(new Status(4, null, k()));
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final void a() {
        this.n = 2;
        this.l = false;
        this.k = null;
        this.j = null;
        this.f3618d.a();
        this.f3619e.a();
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.f3619e.a(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.f3618d.a(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final boolean a(l lVar) {
        this.m.lock();
        try {
            if ((!d() && !f()) || this.f3619e.f()) {
                this.m.unlock();
                return false;
            }
            this.g.add(lVar);
            if (this.n == 0) {
                this.n = 1;
            }
            this.k = null;
            this.f3619e.a();
            return true;
        } finally {
            this.m.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final ConnectionResult b() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final <A extends a.b, T extends c.a<? extends com.google.android.gms.common.api.l, A>> T b(T t) {
        if (!c((c.a<? extends com.google.android.gms.common.api.l, ? extends a.b>) t)) {
            return (T) this.f3618d.b(t);
        }
        if (!j()) {
            return (T) this.f3619e.b(t);
        }
        t.b(new Status(4, null, k()));
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final void c() {
        this.k = null;
        this.j = null;
        this.n = 0;
        this.f3618d.c();
        this.f3619e.c();
        g();
    }

    public final boolean d() {
        this.m.lock();
        try {
            return this.n == 2;
        } finally {
            this.m.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0021  */
    @Override // com.google.android.gms.common.api.internal.bh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean f() {
        /*
            r2 = this;
            java.util.concurrent.locks.Lock r0 = r2.m
            r0.lock()
            com.google.android.gms.common.api.internal.av r0 = r2.f3618d     // Catch: java.lang.Throwable -> L28
            boolean r0 = r0.f()     // Catch: java.lang.Throwable -> L28
            r1 = 1
            if (r0 == 0) goto L21
            com.google.android.gms.common.api.internal.av r0 = r2.f3619e     // Catch: java.lang.Throwable -> L28
            boolean r0 = r0.f()     // Catch: java.lang.Throwable -> L28
            if (r0 != 0) goto L22
            boolean r0 = r2.j()     // Catch: java.lang.Throwable -> L28
            if (r0 != 0) goto L22
            int r0 = r2.n     // Catch: java.lang.Throwable -> L28
            if (r0 != r1) goto L21
            goto L22
        L21:
            r1 = 0
        L22:
            java.util.concurrent.locks.Lock r0 = r2.m
            r0.unlock()
            return r1
        L28:
            r0 = move-exception
            java.util.concurrent.locks.Lock r1 = r2.m
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.cq.f():boolean");
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final void h() {
        this.m.lock();
        try {
            boolean zD = d();
            this.f3619e.c();
            this.k = new ConnectionResult(4);
            if (zD) {
                new Handler(this.f3617c).post(new cr(this));
            } else {
                g();
            }
        } finally {
            this.m.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.bh
    public final void i() {
        this.f3618d.i();
        this.f3619e.i();
    }
}
