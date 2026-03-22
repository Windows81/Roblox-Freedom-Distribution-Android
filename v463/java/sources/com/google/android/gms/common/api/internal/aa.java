package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.c;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.signin.internal.SignInResponse;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class aa implements au {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final av f3472a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lock f3473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f3474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.common.f f3475d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ConnectionResult f3476e;
    private int f;
    private int h;
    private com.google.android.gms.signin.b k;
    private boolean l;
    private boolean m;
    private boolean n;
    private com.google.android.gms.common.internal.q o;
    private boolean p;
    private boolean q;
    private final com.google.android.gms.common.internal.e r;
    private final Map<com.google.android.gms.common.api.a<?>, Boolean> s;
    private final a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> t;
    private int g = 0;
    private final Bundle i = new Bundle();
    private final Set<a.c> j = new HashSet();
    private ArrayList<Future<?>> u = new ArrayList<>();

    public aa(av avVar, com.google.android.gms.common.internal.e eVar, Map<com.google.android.gms.common.api.a<?>, Boolean> map, com.google.android.gms.common.f fVar, a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> abstractC0083a, Lock lock, Context context) {
        this.f3472a = avVar;
        this.r = eVar;
        this.s = map;
        this.f3475d = fVar;
        this.t = abstractC0083a;
        this.f3473b = lock;
        this.f3474c = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(SignInResponse signInResponse) {
        if (b(0)) {
            ConnectionResult connectionResultA = signInResponse.a();
            if (!connectionResultA.b()) {
                if (!a(connectionResultA)) {
                    b(connectionResultA);
                    return;
                } else {
                    g();
                    e();
                    return;
                }
            }
            ResolveAccountResponse resolveAccountResponseB = signInResponse.b();
            ConnectionResult connectionResultB = resolveAccountResponseB.b();
            if (connectionResultB.b()) {
                this.n = true;
                this.o = resolveAccountResponseB.a();
                this.p = resolveAccountResponseB.c();
                this.q = resolveAccountResponseB.d();
                e();
                return;
            }
            String strValueOf = String.valueOf(connectionResultB);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 48);
            sb.append("Sign-in succeeded with resolve account failure: ");
            sb.append(strValueOf);
            Log.wtf("GoogleApiClientConnecting", sb.toString(), new Exception());
            b(connectionResultB);
        }
    }

    private final void a(boolean z) {
        com.google.android.gms.signin.b bVar = this.k;
        if (bVar != null) {
            if (bVar.h() && z) {
                this.k.e();
            }
            this.k.g();
            this.o = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a(ConnectionResult connectionResult) {
        return this.l && !connectionResult.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(ConnectionResult connectionResult) {
        h();
        a(!connectionResult.a());
        this.f3472a.a(connectionResult);
        this.f3472a.f3515e.a(connectionResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void b(com.google.android.gms.common.ConnectionResult r5, com.google.android.gms.common.api.a<?> r6, boolean r7) {
        /*
            r4 = this;
            com.google.android.gms.common.api.a$e r0 = r6.a()
            int r0 = r0.a()
            r1 = 0
            r2 = 1
            if (r7 == 0) goto L24
            boolean r7 = r5.a()
            if (r7 == 0) goto L14
        L12:
            r7 = 1
            goto L22
        L14:
            com.google.android.gms.common.f r7 = r4.f3475d
            int r3 = r5.c()
            android.content.Intent r7 = r7.b(r3)
            if (r7 == 0) goto L21
            goto L12
        L21:
            r7 = 0
        L22:
            if (r7 == 0) goto L2d
        L24:
            com.google.android.gms.common.ConnectionResult r7 = r4.f3476e
            if (r7 == 0) goto L2c
            int r7 = r4.f
            if (r0 >= r7) goto L2d
        L2c:
            r1 = 1
        L2d:
            if (r1 == 0) goto L33
            r4.f3476e = r5
            r4.f = r0
        L33:
            com.google.android.gms.common.api.internal.av r7 = r4.f3472a
            java.util.Map<com.google.android.gms.common.api.a$c<?>, com.google.android.gms.common.ConnectionResult> r7 = r7.f3512b
            com.google.android.gms.common.api.a$c r6 = r6.c()
            r7.put(r6, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.aa.b(com.google.android.gms.common.ConnectionResult, com.google.android.gms.common.api.a, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean b(int i) {
        if (this.g == i) {
            return true;
        }
        Log.w("GoogleApiClientConnecting", this.f3472a.f3514d.n());
        String strValueOf = String.valueOf(this);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 23);
        sb.append("Unexpected callback in ");
        sb.append(strValueOf);
        Log.w("GoogleApiClientConnecting", sb.toString());
        int i2 = this.h;
        StringBuilder sb2 = new StringBuilder(33);
        sb2.append("mRemainingConnections=");
        sb2.append(i2);
        Log.w("GoogleApiClientConnecting", sb2.toString());
        String strC = c(this.g);
        String strC2 = c(i);
        StringBuilder sb3 = new StringBuilder(String.valueOf(strC).length() + 70 + String.valueOf(strC2).length());
        sb3.append("GoogleApiClient connecting is in step ");
        sb3.append(strC);
        sb3.append(" but received callback for step ");
        sb3.append(strC2);
        Log.wtf("GoogleApiClientConnecting", sb3.toString(), new Exception());
        b(new ConnectionResult(8, null));
        return false;
    }

    private static String c(int i) {
        return i != 0 ? i != 1 ? "UNKNOWN" : "STEP_GETTING_REMOTE_SERVICE" : "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean d() {
        ConnectionResult connectionResult;
        int i = this.h - 1;
        this.h = i;
        if (i > 0) {
            return false;
        }
        if (i < 0) {
            Log.w("GoogleApiClientConnecting", this.f3472a.f3514d.n());
            Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            connectionResult = new ConnectionResult(8, null);
        } else {
            if (this.f3476e == null) {
                return true;
            }
            this.f3472a.f3513c = this.f;
            connectionResult = this.f3476e;
        }
        b(connectionResult);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        if (this.h != 0) {
            return;
        }
        if (!this.m || this.n) {
            ArrayList arrayList = new ArrayList();
            this.g = 1;
            this.h = this.f3472a.f3511a.size();
            for (a.c<?> cVar : this.f3472a.f3511a.keySet()) {
                if (!this.f3472a.f3512b.containsKey(cVar)) {
                    arrayList.add(this.f3472a.f3511a.get(cVar));
                } else if (d()) {
                    f();
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            this.u.add(ay.a().submit(new ag(this, arrayList)));
        }
    }

    private final void f() {
        this.f3472a.e();
        ay.a().execute(new ab(this));
        com.google.android.gms.signin.b bVar = this.k;
        if (bVar != null) {
            if (this.p) {
                bVar.a(this.o, this.q);
            }
            a(false);
        }
        Iterator<a.c<?>> it = this.f3472a.f3512b.keySet().iterator();
        while (it.hasNext()) {
            this.f3472a.f3511a.get(it.next()).g();
        }
        this.f3472a.f3515e.a(this.i.isEmpty() ? null : this.i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g() {
        this.m = false;
        this.f3472a.f3514d.f3496c = Collections.emptySet();
        for (a.c<?> cVar : this.j) {
            if (!this.f3472a.f3512b.containsKey(cVar)) {
                this.f3472a.f3512b.put(cVar, new ConnectionResult(17, null));
            }
        }
    }

    private final void h() {
        ArrayList<Future<?>> arrayList = this.u;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Future<?> future = arrayList.get(i);
            i++;
            future.cancel(true);
        }
        this.u.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Set<Scope> i() {
        if (this.r == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(this.r.d());
        Map<com.google.android.gms.common.api.a<?>, e.b> mapF = this.r.f();
        for (com.google.android.gms.common.api.a<?> aVar : mapF.keySet()) {
            if (!this.f3472a.f3512b.containsKey(aVar.c())) {
                hashSet.addAll(mapF.get(aVar).f3796a);
            }
        }
        return hashSet;
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final <A extends a.b, R extends com.google.android.gms.common.api.l, T extends c.a<R, A>> T a(T t) {
        this.f3472a.f3514d.f3494a.add(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final void a() {
        this.f3472a.f3512b.clear();
        this.m = false;
        ab abVar = null;
        this.f3476e = null;
        this.g = 0;
        this.l = true;
        this.n = false;
        this.p = false;
        HashMap map = new HashMap();
        boolean z = false;
        for (com.google.android.gms.common.api.a<?> aVar : this.s.keySet()) {
            a.f fVar = this.f3472a.f3511a.get(aVar.c());
            z |= aVar.a().a() == 1;
            boolean zBooleanValue = this.s.get(aVar).booleanValue();
            if (fVar.j()) {
                this.m = true;
                if (zBooleanValue) {
                    this.j.add(aVar.c());
                } else {
                    this.l = false;
                }
            }
            map.put(fVar, new ac(this, aVar, zBooleanValue));
        }
        if (z) {
            this.m = false;
        }
        if (this.m) {
            this.r.a(Integer.valueOf(System.identityHashCode(this.f3472a.f3514d)));
            aj ajVar = new aj(this, abVar);
            a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> abstractC0083a = this.t;
            Context context = this.f3474c;
            Looper looperC = this.f3472a.f3514d.c();
            com.google.android.gms.common.internal.e eVar = this.r;
            this.k = (com.google.android.gms.signin.b) abstractC0083a.a(context, looperC, eVar, eVar.i(), ajVar, ajVar);
        }
        this.h = this.f3472a.f3511a.size();
        this.u.add(ay.a().submit(new ad(this, map)));
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final void a(int i) {
        b(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final void a(Bundle bundle) {
        if (b(1)) {
            if (bundle != null) {
                this.i.putAll(bundle);
            }
            if (d()) {
                f();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final void a(ConnectionResult connectionResult, com.google.android.gms.common.api.a<?> aVar, boolean z) {
        if (b(1)) {
            b(connectionResult, aVar, z);
            if (d()) {
                f();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final <A extends a.b, T extends c.a<? extends com.google.android.gms.common.api.l, A>> T b(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final boolean b() {
        h();
        a(true);
        this.f3472a.a((ConnectionResult) null);
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final void c() {
    }
}
