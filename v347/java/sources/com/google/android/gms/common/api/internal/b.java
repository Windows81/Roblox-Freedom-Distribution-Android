package com.google.android.gms.common.api.internal;

import android.app.Application;
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
import com.google.android.gms.common.api.internal.f;
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
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public class b implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Status f3368a = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Status f3369b = new Status(4, "The user must be signed in to make this API call.");
    private static final Object f = new Object();

    @GuardedBy("lock")
    private static b g;
    private final Context h;
    private final com.google.android.gms.common.e i;
    private final com.google.android.gms.common.internal.n j;
    private final Handler q;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f3370c = 5000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f3371d = 120000;
    private long e = 10000;
    private final AtomicInteger k = new AtomicInteger(1);
    private final AtomicInteger l = new AtomicInteger(0);
    private final Map<ag<?>, a<?>> m = new ConcurrentHashMap(5, 0.75f, 1);

    @GuardedBy("lock")
    private m n = null;

    @GuardedBy("lock")
    private final Set<ag<?>> o = new android.support.v4.g.b();
    private final Set<ag<?>> p = new android.support.v4.g.b();

    public class a<O extends a.d> implements f.a, f.b, an {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final a.f f3374c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final a.b f3375d;
        private final ag<O> e;
        private final k f;
        private final int i;
        private final x j;
        private boolean k;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Queue<o> f3373b = new LinkedList();
        private final Set<ah> g = new HashSet();
        private final Map<f.a<?>, w> h = new HashMap();
        private final List<C0072b> l = new ArrayList();
        private ConnectionResult m = null;

        public a(com.google.android.gms.common.api.e<O> eVar) {
            this.f3374c = eVar.a(b.this.q.getLooper(), this);
            if (this.f3374c instanceof com.google.android.gms.common.internal.z) {
                this.f3375d = ((com.google.android.gms.common.internal.z) this.f3374c).A();
            } else {
                this.f3375d = this.f3374c;
            }
            this.e = eVar.a();
            this.f = new k();
            this.i = eVar.b();
            if (this.f3374c.d()) {
                this.j = eVar.a(b.this.h, b.this.q);
            } else {
                this.j = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(C0072b c0072b) {
            if (this.l.contains(c0072b) && !this.k) {
                if (this.f3374c.b()) {
                    o();
                } else {
                    i();
                }
            }
        }

        static /* synthetic */ boolean a(a aVar, boolean z) {
            return aVar.a(false);
        }

        private final boolean a(boolean z) {
            com.google.android.gms.common.internal.w.a(b.this.q);
            if (!this.f3374c.b() || this.h.size() != 0) {
                return false;
            }
            if (!this.f.a()) {
                this.f3374c.a();
                return true;
            }
            if (!z) {
                return false;
            }
            q();
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(C0072b c0072b) {
            Feature[] featureArrA;
            if (this.l.remove(c0072b)) {
                b.this.q.removeMessages(15, c0072b);
                b.this.q.removeMessages(16, c0072b);
                Feature feature = c0072b.f3377b;
                ArrayList arrayList = new ArrayList(this.f3373b.size());
                for (o oVar : this.f3373b) {
                    if ((oVar instanceof ae) && (featureArrA = ((ae) oVar).a()) != null && com.google.android.gms.common.util.a.b(featureArrA, feature)) {
                        arrayList.add(oVar);
                    }
                }
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    o oVar2 = (o) obj;
                    this.f3373b.remove(oVar2);
                    oVar2.a(new com.google.android.gms.common.api.k(feature));
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private final boolean b(o oVar) {
            if (!(oVar instanceof ae)) {
                c(oVar);
                return true;
            }
            ae aeVar = (ae) oVar;
            Feature[] featureArrA = aeVar.a();
            if (featureArrA == null || featureArrA.length == 0) {
                c(oVar);
                return true;
            }
            Feature[] featureArrH = this.f3374c.h();
            if (featureArrH == null) {
                featureArrH = new Feature[0];
            }
            android.support.v4.g.a aVar = new android.support.v4.g.a(featureArrH.length);
            for (Feature feature : featureArrH) {
                aVar.put(feature.a(), Long.valueOf(feature.b()));
            }
            for (Feature feature2 : featureArrA) {
                if (!aVar.containsKey(feature2.a()) || ((Long) aVar.get(feature2.a())).longValue() < feature2.b()) {
                    if (aeVar.b()) {
                        C0072b c0072b = new C0072b(this.e, feature2, null);
                        int iIndexOf = this.l.indexOf(c0072b);
                        if (iIndexOf >= 0) {
                            C0072b c0072b2 = this.l.get(iIndexOf);
                            b.this.q.removeMessages(15, c0072b2);
                            b.this.q.sendMessageDelayed(Message.obtain(b.this.q, 15, c0072b2), b.this.f3370c);
                        } else {
                            this.l.add(c0072b);
                            b.this.q.sendMessageDelayed(Message.obtain(b.this.q, 15, c0072b), b.this.f3370c);
                            b.this.q.sendMessageDelayed(Message.obtain(b.this.q, 16, c0072b), b.this.f3371d);
                            ConnectionResult connectionResult = new ConnectionResult(2, null);
                            if (!c(connectionResult)) {
                                b.this.a(connectionResult, this.i);
                            }
                        }
                    } else {
                        aeVar.a(new com.google.android.gms.common.api.k(feature2));
                    }
                    return false;
                }
                this.l.remove(new C0072b(this.e, feature2, null));
            }
            c(oVar);
            return true;
        }

        private final void c(o oVar) {
            oVar.a(this.f, k());
            try {
                oVar.a((a<?>) this);
            } catch (DeadObjectException e) {
                a(1);
                this.f3374c.a();
            }
        }

        private final boolean c(ConnectionResult connectionResult) {
            boolean z;
            synchronized (b.f) {
                if (b.this.n == null || !b.this.o.contains(this.e)) {
                    z = false;
                } else {
                    b.this.n.b(connectionResult, this.i);
                    z = true;
                }
            }
            return z;
        }

        private final void d(ConnectionResult connectionResult) {
            for (ah ahVar : this.g) {
                String strF = null;
                if (com.google.android.gms.common.internal.v.a(connectionResult, ConnectionResult.f3302a)) {
                    strF = this.f3374c.f();
                }
                ahVar.a(this.e, connectionResult, strF);
            }
            this.g.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void m() {
            d();
            d(ConnectionResult.f3302a);
            p();
            Iterator<w> it = this.h.values().iterator();
            while (it.hasNext()) {
                try {
                    it.next().f3407a.a(this.f3375d, new com.google.android.gms.d.g<>());
                } catch (DeadObjectException e) {
                    a(1);
                    this.f3374c.a();
                } catch (RemoteException e2) {
                }
            }
            o();
            q();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void n() {
            d();
            this.k = true;
            this.f.c();
            b.this.q.sendMessageDelayed(Message.obtain(b.this.q, 9, this.e), b.this.f3370c);
            b.this.q.sendMessageDelayed(Message.obtain(b.this.q, 11, this.e), b.this.f3371d);
            b.this.j.a();
        }

        private final void o() {
            ArrayList arrayList = new ArrayList(this.f3373b);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                o oVar = (o) obj;
                if (!this.f3374c.b()) {
                    return;
                }
                if (b(oVar)) {
                    this.f3373b.remove(oVar);
                }
            }
        }

        private final void p() {
            if (this.k) {
                b.this.q.removeMessages(11, this.e);
                b.this.q.removeMessages(9, this.e);
                this.k = false;
            }
        }

        private final void q() {
            b.this.q.removeMessages(12, this.e);
            b.this.q.sendMessageDelayed(b.this.q.obtainMessage(12, this.e), b.this.e);
        }

        public final void a() {
            com.google.android.gms.common.internal.w.a(b.this.q);
            a(b.f3368a);
            this.f.b();
            for (f.a aVar : (f.a[]) this.h.keySet().toArray(new f.a[this.h.size()])) {
                a(new af(aVar, new com.google.android.gms.d.g()));
            }
            d(new ConnectionResult(4));
            if (this.f3374c.b()) {
                this.f3374c.a(new s(this));
            }
        }

        @Override // com.google.android.gms.common.api.f.a
        public final void a(int i) {
            if (Looper.myLooper() == b.this.q.getLooper()) {
                n();
            } else {
                b.this.q.post(new r(this));
            }
        }

        @Override // com.google.android.gms.common.api.f.a
        public final void a(Bundle bundle) {
            if (Looper.myLooper() == b.this.q.getLooper()) {
                m();
            } else {
                b.this.q.post(new q(this));
            }
        }

        @Override // com.google.android.gms.common.api.f.b
        public final void a(ConnectionResult connectionResult) {
            com.google.android.gms.common.internal.w.a(b.this.q);
            if (this.j != null) {
                this.j.a();
            }
            d();
            b.this.j.a();
            d(connectionResult);
            if (connectionResult.c() == 4) {
                a(b.f3369b);
                return;
            }
            if (this.f3373b.isEmpty()) {
                this.m = connectionResult;
                return;
            }
            if (c(connectionResult) || b.this.a(connectionResult, this.i)) {
                return;
            }
            if (connectionResult.c() == 18) {
                this.k = true;
            }
            if (this.k) {
                b.this.q.sendMessageDelayed(Message.obtain(b.this.q, 9, this.e), b.this.f3370c);
            } else {
                String strA = this.e.a();
                a(new Status(17, new StringBuilder(String.valueOf(strA).length() + 38).append("API: ").append(strA).append(" is not available on this device.").toString()));
            }
        }

        public final void a(Status status) {
            com.google.android.gms.common.internal.w.a(b.this.q);
            Iterator<o> it = this.f3373b.iterator();
            while (it.hasNext()) {
                it.next().a(status);
            }
            this.f3373b.clear();
        }

        public final void a(ah ahVar) {
            com.google.android.gms.common.internal.w.a(b.this.q);
            this.g.add(ahVar);
        }

        public final void a(o oVar) {
            com.google.android.gms.common.internal.w.a(b.this.q);
            if (this.f3374c.b()) {
                if (b(oVar)) {
                    q();
                    return;
                } else {
                    this.f3373b.add(oVar);
                    return;
                }
            }
            this.f3373b.add(oVar);
            if (this.m == null || !this.m.a()) {
                i();
            } else {
                a(this.m);
            }
        }

        public final a.f b() {
            return this.f3374c;
        }

        public final void b(ConnectionResult connectionResult) {
            com.google.android.gms.common.internal.w.a(b.this.q);
            this.f3374c.a();
            a(connectionResult);
        }

        public final Map<f.a<?>, w> c() {
            return this.h;
        }

        public final void d() {
            com.google.android.gms.common.internal.w.a(b.this.q);
            this.m = null;
        }

        public final ConnectionResult e() {
            com.google.android.gms.common.internal.w.a(b.this.q);
            return this.m;
        }

        public final void f() {
            com.google.android.gms.common.internal.w.a(b.this.q);
            if (this.k) {
                i();
            }
        }

        public final void g() {
            com.google.android.gms.common.internal.w.a(b.this.q);
            if (this.k) {
                p();
                a(b.this.i.a(b.this.h) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                this.f3374c.a();
            }
        }

        public final boolean h() {
            return a(true);
        }

        public final void i() {
            com.google.android.gms.common.internal.w.a(b.this.q);
            if (this.f3374c.b() || this.f3374c.c()) {
                return;
            }
            int iA = b.this.j.a(b.this.h, this.f3374c);
            if (iA != 0) {
                a(new ConnectionResult(iA, null));
                return;
            }
            c cVar = b.this.new c(this.f3374c, this.e);
            if (this.f3374c.d()) {
                this.j.a(cVar);
            }
            this.f3374c.a(cVar);
        }

        final boolean j() {
            return this.f3374c.b();
        }

        public final boolean k() {
            return this.f3374c.d();
        }

        public final int l() {
            return this.i;
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.common.api.internal.b$b, reason: collision with other inner class name */
    private static class C0072b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ag<?> f3376a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Feature f3377b;

        private C0072b(ag<?> agVar, Feature feature) {
            this.f3376a = agVar;
            this.f3377b = feature;
        }

        /* synthetic */ C0072b(ag agVar, Feature feature, p pVar) {
            this(agVar, feature);
        }

        public final boolean equals(Object obj) {
            if (obj == null || !(obj instanceof C0072b)) {
                return false;
            }
            C0072b c0072b = (C0072b) obj;
            return com.google.android.gms.common.internal.v.a(this.f3376a, c0072b.f3376a) && com.google.android.gms.common.internal.v.a(this.f3377b, c0072b.f3377b);
        }

        public final int hashCode() {
            return com.google.android.gms.common.internal.v.a(this.f3376a, this.f3377b);
        }

        public final String toString() {
            return com.google.android.gms.common.internal.v.a(this).a("key", this.f3376a).a("feature", this.f3377b).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class c implements ab, d.InterfaceC0074d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a.f f3379b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ag<?> f3380c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.google.android.gms.common.internal.o f3381d = null;
        private Set<Scope> e = null;
        private boolean f = false;

        public c(a.f fVar, ag<?> agVar) {
            this.f3379b = fVar;
            this.f3380c = agVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a() {
            if (!this.f || this.f3381d == null) {
                return;
            }
            this.f3379b.a(this.f3381d, this.e);
        }

        static /* synthetic */ boolean a(c cVar, boolean z) {
            cVar.f = true;
            return true;
        }

        @Override // com.google.android.gms.common.internal.d.InterfaceC0074d
        public final void a(ConnectionResult connectionResult) {
            b.this.q.post(new u(this, connectionResult));
        }

        @Override // com.google.android.gms.common.api.internal.ab
        public final void a(com.google.android.gms.common.internal.o oVar, Set<Scope> set) {
            if (oVar == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                b(new ConnectionResult(4));
            } else {
                this.f3381d = oVar;
                this.e = set;
                a();
            }
        }

        @Override // com.google.android.gms.common.api.internal.ab
        public final void b(ConnectionResult connectionResult) {
            ((a) b.this.m.get(this.f3380c)).b(connectionResult);
        }
    }

    private b(Context context, Looper looper, com.google.android.gms.common.e eVar) {
        this.h = context;
        this.q = new Handler(looper, this);
        this.i = eVar;
        this.j = new com.google.android.gms.common.internal.n(eVar);
        this.q.sendMessage(this.q.obtainMessage(6));
    }

    public static b a(Context context) {
        b bVar;
        synchronized (f) {
            if (g == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                g = new b(context.getApplicationContext(), handlerThread.getLooper(), com.google.android.gms.common.e.a());
            }
            bVar = g;
        }
        return bVar;
    }

    private final void a(com.google.android.gms.common.api.e<?> eVar) {
        Object objA = eVar.a();
        a<?> aVar = this.m.get(objA);
        if (aVar == null) {
            aVar = new a<>(eVar);
            this.m.put((ag<?>) objA, aVar);
        }
        if (aVar.k()) {
            this.p.add((ag<?>) objA);
        }
        aVar.i();
    }

    public final void a() {
        this.q.sendMessage(this.q.obtainMessage(3));
    }

    final boolean a(ConnectionResult connectionResult, int i) {
        return this.i.a(this.h, connectionResult, i);
    }

    public final void b(ConnectionResult connectionResult, int i) {
        if (a(connectionResult, i)) {
            return;
        }
        this.q.sendMessage(this.q.obtainMessage(5, i, 0, connectionResult));
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        a<?> next;
        switch (message.what) {
            case 1:
                this.e = ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                this.q.removeMessages(12);
                Iterator<ag<?>> it = this.m.keySet().iterator();
                while (it.hasNext()) {
                    this.q.sendMessageDelayed(this.q.obtainMessage(12, it.next()), this.e);
                }
                break;
            case 2:
                ah ahVar = (ah) message.obj;
                Iterator<ag<?>> it2 = ahVar.a().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    } else {
                        ag<?> next2 = it2.next();
                        a<?> aVar = this.m.get(next2);
                        if (aVar == null) {
                            ahVar.a(next2, new ConnectionResult(13), null);
                            break;
                        } else if (aVar.j()) {
                            ahVar.a(next2, ConnectionResult.f3302a, aVar.b().f());
                        } else if (aVar.e() != null) {
                            ahVar.a(next2, aVar.e(), null);
                        } else {
                            aVar.a(ahVar);
                        }
                    }
                }
                break;
            case 3:
                for (a<?> aVar2 : this.m.values()) {
                    aVar2.d();
                    aVar2.i();
                }
                break;
            case 4:
            case 8:
            case 13:
                v vVar = (v) message.obj;
                a<?> aVar3 = this.m.get(vVar.f3406c.a());
                if (aVar3 == null) {
                    a(vVar.f3406c);
                    aVar3 = this.m.get(vVar.f3406c.a());
                }
                if (!aVar3.k() || this.l.get() == vVar.f3405b) {
                    aVar3.a(vVar.f3404a);
                } else {
                    vVar.f3404a.a(f3368a);
                    aVar3.a();
                }
                break;
            case 5:
                int i = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator<a<?>> it3 = this.m.values().iterator();
                while (true) {
                    if (it3.hasNext()) {
                        next = it3.next();
                        if (next.l() == i) {
                        }
                    } else {
                        next = null;
                    }
                }
                if (next != null) {
                    String strB = this.i.b(connectionResult.c());
                    String strE = connectionResult.e();
                    next.a(new Status(17, new StringBuilder(String.valueOf(strB).length() + 69 + String.valueOf(strE).length()).append("Error resolution was canceled by the user, original error message: ").append(strB).append(": ").append(strE).toString()));
                } else {
                    Log.wtf("GoogleApiManager", new StringBuilder(76).append("Could not find API instance ").append(i).append(" while trying to fail enqueued calls.").toString(), new Exception());
                }
                break;
            case 6:
                if (com.google.android.gms.common.util.n.b() && (this.h.getApplicationContext() instanceof Application)) {
                    com.google.android.gms.common.api.internal.a.a((Application) this.h.getApplicationContext());
                    com.google.android.gms.common.api.internal.a.a().a(new p(this));
                    if (!com.google.android.gms.common.api.internal.a.a().a(true)) {
                        this.e = 300000L;
                    }
                }
                break;
            case 7:
                a((com.google.android.gms.common.api.e<?>) message.obj);
                break;
            case 9:
                if (this.m.containsKey(message.obj)) {
                    this.m.get(message.obj).f();
                }
                break;
            case 10:
                Iterator<ag<?>> it4 = this.p.iterator();
                while (it4.hasNext()) {
                    this.m.remove(it4.next()).a();
                }
                this.p.clear();
                break;
            case 11:
                if (this.m.containsKey(message.obj)) {
                    this.m.get(message.obj).g();
                }
                break;
            case 12:
                if (this.m.containsKey(message.obj)) {
                    this.m.get(message.obj).h();
                }
                break;
            case 14:
                n nVar = (n) message.obj;
                ag<?> agVarA = nVar.a();
                if (this.m.containsKey(agVarA)) {
                    nVar.b().a(Boolean.valueOf(a.a((a) this.m.get(agVarA), false)));
                } else {
                    nVar.b().a(false);
                }
                break;
            case 15:
                C0072b c0072b = (C0072b) message.obj;
                if (this.m.containsKey(c0072b.f3376a)) {
                    this.m.get(c0072b.f3376a).a(c0072b);
                }
                break;
            case 16:
                C0072b c0072b2 = (C0072b) message.obj;
                if (this.m.containsKey(c0072b2.f3376a)) {
                    this.m.get(c0072b2.f3376a).b(c0072b2);
                }
                break;
            default:
                Log.w("GoogleApiManager", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                return false;
        }
        return true;
    }
}
