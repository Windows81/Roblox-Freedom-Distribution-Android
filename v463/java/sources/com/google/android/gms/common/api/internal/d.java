package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.c;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.internal.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Status f3635a = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Status f3636b = new Status(4, "The user must be signed in to make this API call.");
    private static final Object f = new Object();
    private static d g;
    private final Context h;
    private final com.google.android.gms.common.e i;
    private final com.google.android.gms.common.internal.p j;
    private final Handler q;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f3637c = 5000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f3638d = 120000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f3639e = 10000;
    private final AtomicInteger k = new AtomicInteger(1);
    private final AtomicInteger l = new AtomicInteger(0);
    private final Map<cg<?>, a<?>> m = new ConcurrentHashMap(5, 0.75f, 1);
    private u n = null;
    private final Set<cg<?>> o = new androidx.c.b();
    private final Set<cg<?>> p = new androidx.c.b();

    public class a<O extends a.d> implements f.b, f.c, cp {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final a.f f3642c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final a.b f3643d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final cg<O> f3644e;
        private final r f;
        private final int i;
        private final bp j;
        private boolean k;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Queue<ar> f3641b = new LinkedList();
        private final Set<ci> g = new HashSet();
        private final Map<i.a<?>, bm> h = new HashMap();
        private final List<b> l = new ArrayList();
        private ConnectionResult m = null;

        public a(com.google.android.gms.common.api.e<O> eVar) {
            a.f fVarA = eVar.a(d.this.q.getLooper(), this);
            this.f3642c = fVarA;
            this.f3643d = fVarA instanceof com.google.android.gms.common.internal.ad ? ((com.google.android.gms.common.internal.ad) fVarA).e() : fVarA;
            this.f3644e = eVar.c();
            this.f = new r();
            this.i = eVar.d();
            if (this.f3642c.j()) {
                this.j = eVar.a(d.this.h, d.this.q);
            } else {
                this.j = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(b bVar) {
            if (this.l.contains(bVar) && !this.k) {
                if (this.f3642c.h()) {
                    p();
                } else {
                    i();
                }
            }
        }

        static /* synthetic */ boolean a(a aVar, boolean z) {
            return aVar.a(false);
        }

        private final boolean a(boolean z) {
            com.google.android.gms.common.internal.aa.a(d.this.q);
            if (!this.f3642c.h() || this.h.size() != 0) {
                return false;
            }
            if (!this.f.a()) {
                this.f3642c.g();
                return true;
            }
            if (z) {
                r();
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(b bVar) {
            Feature[] featureArrA;
            if (this.l.remove(bVar)) {
                d.this.q.removeMessages(15, bVar);
                d.this.q.removeMessages(16, bVar);
                Feature feature = bVar.f3646b;
                ArrayList arrayList = new ArrayList(this.f3641b.size());
                for (ar arVar : this.f3641b) {
                    if ((arVar instanceof ce) && (featureArrA = ((ce) arVar).a()) != null && com.google.android.gms.common.util.b.b(featureArrA, feature)) {
                        arrayList.add(arVar);
                    }
                }
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    ar arVar2 = (ar) obj;
                    this.f3641b.remove(arVar2);
                    arVar2.a(new com.google.android.gms.common.api.q(feature));
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private final boolean b(ar arVar) {
            if (!(arVar instanceof ce)) {
                c(arVar);
                return true;
            }
            ce ceVar = (ce) arVar;
            Feature[] featureArrA = ceVar.a();
            if (featureArrA == null || featureArrA.length == 0) {
                c(arVar);
                return true;
            }
            Feature[] featureArrN = this.f3642c.n();
            if (featureArrN == null) {
                featureArrN = new Feature[0];
            }
            androidx.c.a aVar = new androidx.c.a(featureArrN.length);
            for (Feature feature : featureArrN) {
                aVar.put(feature.a(), Long.valueOf(feature.b()));
            }
            for (Feature feature2 : featureArrA) {
                az azVar = null;
                if (!aVar.containsKey(feature2.a()) || ((Long) aVar.get(feature2.a())).longValue() < feature2.b()) {
                    if (ceVar.b()) {
                        b bVar = new b(this.f3644e, feature2, azVar);
                        int iIndexOf = this.l.indexOf(bVar);
                        if (iIndexOf >= 0) {
                            b bVar2 = this.l.get(iIndexOf);
                            d.this.q.removeMessages(15, bVar2);
                            d.this.q.sendMessageDelayed(Message.obtain(d.this.q, 15, bVar2), d.this.f3637c);
                        } else {
                            this.l.add(bVar);
                            d.this.q.sendMessageDelayed(Message.obtain(d.this.q, 15, bVar), d.this.f3637c);
                            d.this.q.sendMessageDelayed(Message.obtain(d.this.q, 16, bVar), d.this.f3638d);
                            ConnectionResult connectionResult = new ConnectionResult(2, null);
                            if (!c(connectionResult)) {
                                d.this.a(connectionResult, this.i);
                            }
                        }
                    } else {
                        ceVar.a(new com.google.android.gms.common.api.q(feature2));
                    }
                    return false;
                }
                this.l.remove(new b(this.f3644e, feature2, azVar));
            }
            c(arVar);
            return true;
        }

        private final void c(ar arVar) {
            arVar.a(this.f, k());
            try {
                arVar.a((a<?>) this);
            } catch (DeadObjectException unused) {
                a(1);
                this.f3642c.g();
            }
        }

        private final boolean c(ConnectionResult connectionResult) {
            synchronized (d.f) {
                if (d.this.n == null || !d.this.o.contains(this.f3644e)) {
                    return false;
                }
                d.this.n.b(connectionResult, this.i);
                return true;
            }
        }

        private final void d(ConnectionResult connectionResult) {
            for (ci ciVar : this.g) {
                String strM = null;
                if (com.google.android.gms.common.internal.y.a(connectionResult, ConnectionResult.f3415a)) {
                    strM = this.f3642c.m();
                }
                ciVar.a(this.f3644e, connectionResult, strM);
            }
            this.g.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void n() {
            d();
            d(ConnectionResult.f3415a);
            q();
            Iterator<bm> it = this.h.values().iterator();
            while (it.hasNext()) {
                try {
                    it.next().f3544a.a(this.f3643d, new com.google.android.gms.f.h<>());
                } catch (DeadObjectException unused) {
                    a(1);
                    this.f3642c.g();
                } catch (RemoteException unused2) {
                }
            }
            p();
            r();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void o() {
            d();
            this.k = true;
            this.f.c();
            d.this.q.sendMessageDelayed(Message.obtain(d.this.q, 9, this.f3644e), d.this.f3637c);
            d.this.q.sendMessageDelayed(Message.obtain(d.this.q, 11, this.f3644e), d.this.f3638d);
            d.this.j.a();
        }

        private final void p() {
            ArrayList arrayList = new ArrayList(this.f3641b);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ar arVar = (ar) obj;
                if (!this.f3642c.h()) {
                    return;
                }
                if (b(arVar)) {
                    this.f3641b.remove(arVar);
                }
            }
        }

        private final void q() {
            if (this.k) {
                d.this.q.removeMessages(11, this.f3644e);
                d.this.q.removeMessages(9, this.f3644e);
                this.k = false;
            }
        }

        private final void r() {
            d.this.q.removeMessages(12, this.f3644e);
            d.this.q.sendMessageDelayed(d.this.q.obtainMessage(12, this.f3644e), d.this.f3639e);
        }

        public final void a() {
            com.google.android.gms.common.internal.aa.a(d.this.q);
            a(d.f3635a);
            this.f.b();
            for (i.a aVar : (i.a[]) this.h.keySet().toArray(new i.a[this.h.size()])) {
                a(new cf(aVar, new com.google.android.gms.f.h()));
            }
            d(new ConnectionResult(4));
            if (this.f3642c.h()) {
                this.f3642c.a(new bd(this));
            }
        }

        @Override // com.google.android.gms.common.api.f.b
        public final void a(int i) {
            if (Looper.myLooper() == d.this.q.getLooper()) {
                o();
            } else {
                d.this.q.post(new bb(this));
            }
        }

        @Override // com.google.android.gms.common.api.f.b
        public final void a(Bundle bundle) {
            if (Looper.myLooper() == d.this.q.getLooper()) {
                n();
            } else {
                d.this.q.post(new ba(this));
            }
        }

        @Override // com.google.android.gms.common.api.f.c
        public final void a(ConnectionResult connectionResult) {
            com.google.android.gms.common.internal.aa.a(d.this.q);
            bp bpVar = this.j;
            if (bpVar != null) {
                bpVar.b();
            }
            d();
            d.this.j.a();
            d(connectionResult);
            if (connectionResult.c() == 4) {
                a(d.f3636b);
                return;
            }
            if (this.f3641b.isEmpty()) {
                this.m = connectionResult;
                return;
            }
            if (c(connectionResult) || d.this.a(connectionResult, this.i)) {
                return;
            }
            if (connectionResult.c() == 18) {
                this.k = true;
            }
            if (this.k) {
                d.this.q.sendMessageDelayed(Message.obtain(d.this.q, 9, this.f3644e), d.this.f3637c);
                return;
            }
            String strA = this.f3644e.a();
            StringBuilder sb = new StringBuilder(String.valueOf(strA).length() + 38);
            sb.append("API: ");
            sb.append(strA);
            sb.append(" is not available on this device.");
            a(new Status(17, sb.toString()));
        }

        @Override // com.google.android.gms.common.api.internal.cp
        public final void a(ConnectionResult connectionResult, com.google.android.gms.common.api.a<?> aVar, boolean z) {
            if (Looper.myLooper() == d.this.q.getLooper()) {
                a(connectionResult);
            } else {
                d.this.q.post(new bc(this, connectionResult));
            }
        }

        public final void a(Status status) {
            com.google.android.gms.common.internal.aa.a(d.this.q);
            Iterator<ar> it = this.f3641b.iterator();
            while (it.hasNext()) {
                it.next().a(status);
            }
            this.f3641b.clear();
        }

        public final void a(ar arVar) {
            com.google.android.gms.common.internal.aa.a(d.this.q);
            if (this.f3642c.h()) {
                if (b(arVar)) {
                    r();
                    return;
                } else {
                    this.f3641b.add(arVar);
                    return;
                }
            }
            this.f3641b.add(arVar);
            ConnectionResult connectionResult = this.m;
            if (connectionResult == null || !connectionResult.a()) {
                i();
            } else {
                a(this.m);
            }
        }

        public final void a(ci ciVar) {
            com.google.android.gms.common.internal.aa.a(d.this.q);
            this.g.add(ciVar);
        }

        public final a.f b() {
            return this.f3642c;
        }

        public final void b(ConnectionResult connectionResult) {
            com.google.android.gms.common.internal.aa.a(d.this.q);
            this.f3642c.g();
            a(connectionResult);
        }

        public final Map<i.a<?>, bm> c() {
            return this.h;
        }

        public final void d() {
            com.google.android.gms.common.internal.aa.a(d.this.q);
            this.m = null;
        }

        public final ConnectionResult e() {
            com.google.android.gms.common.internal.aa.a(d.this.q);
            return this.m;
        }

        public final void f() {
            com.google.android.gms.common.internal.aa.a(d.this.q);
            if (this.k) {
                i();
            }
        }

        public final void g() {
            com.google.android.gms.common.internal.aa.a(d.this.q);
            if (this.k) {
                q();
                a(d.this.i.a(d.this.h) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                this.f3642c.g();
            }
        }

        public final boolean h() {
            return a(true);
        }

        public final void i() {
            com.google.android.gms.common.internal.aa.a(d.this.q);
            if (this.f3642c.h() || this.f3642c.i()) {
                return;
            }
            int iA = d.this.j.a(d.this.h, this.f3642c);
            if (iA != 0) {
                a(new ConnectionResult(iA, null));
                return;
            }
            c cVar = d.this.new c(this.f3642c, this.f3644e);
            if (this.f3642c.j()) {
                this.j.a(cVar);
            }
            this.f3642c.a(cVar);
        }

        final boolean j() {
            return this.f3642c.h();
        }

        public final boolean k() {
            return this.f3642c.j();
        }

        public final int l() {
            return this.i;
        }

        final com.google.android.gms.signin.b m() {
            bp bpVar = this.j;
            if (bpVar == null) {
                return null;
            }
            return bpVar.a();
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final cg<?> f3645a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Feature f3646b;

        private b(cg<?> cgVar, Feature feature) {
            this.f3645a = cgVar;
            this.f3646b = feature;
        }

        /* synthetic */ b(cg cgVar, Feature feature, az azVar) {
            this(cgVar, feature);
        }

        public final boolean equals(Object obj) {
            if (obj != null && (obj instanceof b)) {
                b bVar = (b) obj;
                if (com.google.android.gms.common.internal.y.a(this.f3645a, bVar.f3645a) && com.google.android.gms.common.internal.y.a(this.f3646b, bVar.f3646b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return com.google.android.gms.common.internal.y.a(this.f3645a, this.f3646b);
        }

        public final String toString() {
            return com.google.android.gms.common.internal.y.a(this).a("key", this.f3645a).a("feature", this.f3646b).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class c implements bt, d.InterfaceC0090d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a.f f3648b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final cg<?> f3649c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.google.android.gms.common.internal.q f3650d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Set<Scope> f3651e = null;
        private boolean f = false;

        public c(a.f fVar, cg<?> cgVar) {
            this.f3648b = fVar;
            this.f3649c = cgVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a() {
            com.google.android.gms.common.internal.q qVar;
            if (!this.f || (qVar = this.f3650d) == null) {
                return;
            }
            this.f3648b.a(qVar, this.f3651e);
        }

        static /* synthetic */ boolean a(c cVar, boolean z) {
            cVar.f = true;
            return true;
        }

        @Override // com.google.android.gms.common.internal.d.InterfaceC0090d
        public final void a(ConnectionResult connectionResult) {
            d.this.q.post(new bf(this, connectionResult));
        }

        @Override // com.google.android.gms.common.api.internal.bt
        public final void a(com.google.android.gms.common.internal.q qVar, Set<Scope> set) {
            if (qVar == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                b(new ConnectionResult(4));
            } else {
                this.f3650d = qVar;
                this.f3651e = set;
                a();
            }
        }

        @Override // com.google.android.gms.common.api.internal.bt
        public final void b(ConnectionResult connectionResult) {
            ((a) d.this.m.get(this.f3649c)).b(connectionResult);
        }
    }

    private d(Context context, Looper looper, com.google.android.gms.common.e eVar) {
        this.h = context;
        this.q = new Handler(looper, this);
        this.i = eVar;
        this.j = new com.google.android.gms.common.internal.p(eVar);
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(6));
    }

    public static d a() {
        d dVar;
        synchronized (f) {
            com.google.android.gms.common.internal.aa.a(g, "Must guarantee manager is non-null before using getInstance");
            dVar = g;
        }
        return dVar;
    }

    public static d a(Context context) {
        d dVar;
        synchronized (f) {
            if (g == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                g = new d(context.getApplicationContext(), handlerThread.getLooper(), com.google.android.gms.common.e.a());
            }
            dVar = g;
        }
        return dVar;
    }

    public static void b() {
        synchronized (f) {
            if (g != null) {
                d dVar = g;
                dVar.l.incrementAndGet();
                dVar.q.sendMessageAtFrontOfQueue(dVar.q.obtainMessage(10));
            }
        }
    }

    private final void b(com.google.android.gms.common.api.e<?> eVar) {
        Object objC = eVar.c();
        a<?> aVar = this.m.get(objC);
        if (aVar == null) {
            aVar = new a<>(eVar);
            this.m.put((cg<?>) objC, aVar);
        }
        if (aVar.k()) {
            this.p.add((cg<?>) objC);
        }
        aVar.i();
    }

    final PendingIntent a(cg<?> cgVar, int i) {
        com.google.android.gms.signin.b bVarM;
        a<?> aVar = this.m.get(cgVar);
        if (aVar == null || (bVarM = aVar.m()) == null) {
            return null;
        }
        return PendingIntent.getActivity(this.h, i, bVarM.d(), 134217728);
    }

    public final com.google.android.gms.f.g<Map<cg<?>, String>> a(Iterable<? extends com.google.android.gms.common.api.e<?>> iterable) {
        ci ciVar = new ci(iterable);
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(2, ciVar));
        return ciVar.b();
    }

    public final void a(com.google.android.gms.common.api.e<?> eVar) {
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(7, eVar));
    }

    public final <O extends a.d> void a(com.google.android.gms.common.api.e<O> eVar, int i, c.a<? extends com.google.android.gms.common.api.l, a.b> aVar) {
        cd cdVar = new cd(i, aVar);
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(4, new bl(cdVar, this.l.get(), eVar)));
    }

    public final <O extends a.d, ResultT> void a(com.google.android.gms.common.api.e<O> eVar, int i, o<a.b, ResultT> oVar, com.google.android.gms.f.h<ResultT> hVar, m mVar) {
        ce ceVar = new ce(i, oVar, hVar, mVar);
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(4, new bl(ceVar, this.l.get(), eVar)));
    }

    public final void a(u uVar) {
        synchronized (f) {
            if (this.n != uVar) {
                this.n = uVar;
                this.o.clear();
            }
            this.o.addAll(uVar.g());
        }
    }

    final boolean a(ConnectionResult connectionResult, int i) {
        return this.i.a(this.h, connectionResult, i);
    }

    public final void b(ConnectionResult connectionResult, int i) {
        if (a(connectionResult, i)) {
            return;
        }
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
    }

    final void b(u uVar) {
        synchronized (f) {
            if (this.n == uVar) {
                this.n = null;
                this.o.clear();
            }
        }
    }

    public final int c() {
        return this.k.getAndIncrement();
    }

    public final void d() {
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(3));
    }

    final void e() {
        this.l.incrementAndGet();
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(10));
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        com.google.android.gms.f.h<Boolean> hVarB;
        boolean zValueOf;
        a<?> aVar = null;
        switch (message.what) {
            case 1:
                this.f3639e = ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                this.q.removeMessages(12);
                for (cg<?> cgVar : this.m.keySet()) {
                    Handler handler = this.q;
                    handler.sendMessageDelayed(handler.obtainMessage(12, cgVar), this.f3639e);
                }
                return true;
            case 2:
                ci ciVar = (ci) message.obj;
                Iterator<cg<?>> it = ciVar.a().iterator();
                while (true) {
                    if (it.hasNext()) {
                        cg<?> next = it.next();
                        a<?> aVar2 = this.m.get(next);
                        if (aVar2 == null) {
                            ciVar.a(next, new ConnectionResult(13), null);
                        } else if (aVar2.j()) {
                            ciVar.a(next, ConnectionResult.f3415a, aVar2.b().m());
                        } else if (aVar2.e() != null) {
                            ciVar.a(next, aVar2.e(), null);
                        } else {
                            aVar2.a(ciVar);
                        }
                    }
                }
                return true;
            case 3:
                for (a<?> aVar3 : this.m.values()) {
                    aVar3.d();
                    aVar3.i();
                }
                return true;
            case 4:
            case 8:
            case 13:
                bl blVar = (bl) message.obj;
                a<?> aVar4 = this.m.get(blVar.f3543c.c());
                if (aVar4 == null) {
                    b(blVar.f3543c);
                    aVar4 = this.m.get(blVar.f3543c.c());
                }
                if (!aVar4.k() || this.l.get() == blVar.f3542b) {
                    aVar4.a(blVar.f3541a);
                } else {
                    blVar.f3541a.a(f3635a);
                    aVar4.a();
                }
                return true;
            case 5:
                int i = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator<a<?>> it2 = this.m.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        a<?> next2 = it2.next();
                        if (next2.l() == i) {
                            aVar = next2;
                        }
                    }
                }
                if (aVar != null) {
                    String strC = this.i.c(connectionResult.c());
                    String strE = connectionResult.e();
                    StringBuilder sb = new StringBuilder(String.valueOf(strC).length() + 69 + String.valueOf(strE).length());
                    sb.append("Error resolution was canceled by the user, original error message: ");
                    sb.append(strC);
                    sb.append(": ");
                    sb.append(strE);
                    aVar.a(new Status(17, sb.toString()));
                } else {
                    StringBuilder sb2 = new StringBuilder(76);
                    sb2.append("Could not find API instance ");
                    sb2.append(i);
                    sb2.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb2.toString(), new Exception());
                }
                return true;
            case 6:
                if (com.google.android.gms.common.util.m.a() && (this.h.getApplicationContext() instanceof Application)) {
                    com.google.android.gms.common.api.internal.b.a((Application) this.h.getApplicationContext());
                    com.google.android.gms.common.api.internal.b.a().a(new az(this));
                    if (!com.google.android.gms.common.api.internal.b.a().a(true)) {
                        this.f3639e = 300000L;
                    }
                }
                return true;
            case 7:
                b((com.google.android.gms.common.api.e<?>) message.obj);
                return true;
            case 9:
                if (this.m.containsKey(message.obj)) {
                    this.m.get(message.obj).f();
                }
                return true;
            case 10:
                Iterator<cg<?>> it3 = this.p.iterator();
                while (it3.hasNext()) {
                    this.m.remove(it3.next()).a();
                }
                this.p.clear();
                return true;
            case 11:
                if (this.m.containsKey(message.obj)) {
                    this.m.get(message.obj).g();
                }
                return true;
            case 12:
                if (this.m.containsKey(message.obj)) {
                    this.m.get(message.obj).h();
                }
                return true;
            case 14:
                v vVar = (v) message.obj;
                cg<?> cgVarA = vVar.a();
                if (this.m.containsKey(cgVarA)) {
                    boolean zA = a.a((a) this.m.get(cgVarA), false);
                    hVarB = vVar.b();
                    zValueOf = Boolean.valueOf(zA);
                } else {
                    hVarB = vVar.b();
                    zValueOf = false;
                }
                hVarB.a(zValueOf);
                return true;
            case 15:
                b bVar = (b) message.obj;
                if (this.m.containsKey(bVar.f3645a)) {
                    this.m.get(bVar.f3645a).a(bVar);
                }
                return true;
            case 16:
                b bVar2 = (b) message.obj;
                if (this.m.containsKey(bVar2.f3645a)) {
                    this.m.get(bVar2.f3645a).b(bVar2);
                }
                return true;
            default:
                int i2 = message.what;
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i2);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
    }
}
