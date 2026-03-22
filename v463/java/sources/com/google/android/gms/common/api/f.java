package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.am;
import com.google.android.gms.common.api.internal.bw;
import com.google.android.gms.common.api.internal.c;
import com.google.android.gms.common.api.internal.ch;
import com.google.android.gms.common.api.internal.co;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.internal.e;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Set<f> f3458a = Collections.newSetFromMap(new WeakHashMap());

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Account f3459a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f3462d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private View f3463e;
        private String f;
        private String g;
        private final Context i;
        private com.google.android.gms.common.api.internal.g k;
        private c m;
        private Looper n;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Set<Scope> f3460b = new HashSet();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Set<Scope> f3461c = new HashSet();
        private final Map<com.google.android.gms.common.api.a<?>, e.b> h = new androidx.c.a();
        private final Map<com.google.android.gms.common.api.a<?>, a.d> j = new androidx.c.a();
        private int l = -1;
        private com.google.android.gms.common.e o = com.google.android.gms.common.e.a();
        private a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> p = com.google.android.gms.signin.a.f4745c;
        private final ArrayList<b> q = new ArrayList<>();
        private final ArrayList<c> r = new ArrayList<>();
        private boolean s = false;

        public a(Context context) {
            this.i = context;
            this.n = context.getMainLooper();
            this.f = context.getPackageName();
            this.g = context.getClass().getName();
        }

        public final a a(Handler handler) {
            aa.a(handler, "Handler must not be null");
            this.n = handler.getLooper();
            return this;
        }

        public final a a(com.google.android.gms.common.api.a<? extends a.d.InterfaceC0085d> aVar) {
            aa.a(aVar, "Api must not be null");
            this.j.put(aVar, null);
            List<Scope> listA = aVar.a().a(null);
            this.f3461c.addAll(listA);
            this.f3460b.addAll(listA);
            return this;
        }

        public final <O extends a.d.c> a a(com.google.android.gms.common.api.a<O> aVar, O o) {
            aa.a(aVar, "Api must not be null");
            aa.a(o, "Null options are not permitted for this Api");
            this.j.put(aVar, o);
            List<Scope> listA = aVar.a().a(o);
            this.f3461c.addAll(listA);
            this.f3460b.addAll(listA);
            return this;
        }

        public final a a(b bVar) {
            aa.a(bVar, "Listener must not be null");
            this.q.add(bVar);
            return this;
        }

        public final a a(c cVar) {
            aa.a(cVar, "Listener must not be null");
            this.r.add(cVar);
            return this;
        }

        public final com.google.android.gms.common.internal.e a() {
            com.google.android.gms.signin.c cVar = com.google.android.gms.signin.c.f4749a;
            if (this.j.containsKey(com.google.android.gms.signin.a.f)) {
                cVar = (com.google.android.gms.signin.c) this.j.get(com.google.android.gms.signin.a.f);
            }
            return new com.google.android.gms.common.internal.e(this.f3459a, this.f3460b, this.h, this.f3462d, this.f3463e, this.f, this.g, cVar);
        }

        public final f b() {
            aa.b(!this.j.isEmpty(), "must call addApi() to add at least one API");
            com.google.android.gms.common.internal.e eVarA = a();
            com.google.android.gms.common.api.a<?> aVar = null;
            Map<com.google.android.gms.common.api.a<?>, e.b> mapF = eVarA.f();
            androidx.c.a aVar2 = new androidx.c.a();
            androidx.c.a aVar3 = new androidx.c.a();
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (com.google.android.gms.common.api.a<?> aVar4 : this.j.keySet()) {
                a.d dVar = this.j.get(aVar4);
                boolean z2 = mapF.get(aVar4) != null;
                aVar2.put(aVar4, Boolean.valueOf(z2));
                co coVar = new co(aVar4, z2);
                arrayList.add(coVar);
                a.AbstractC0083a<?, O> abstractC0083aB = aVar4.b();
                a.f fVarA = abstractC0083aB.a(this.i, this.n, eVarA, dVar, coVar, coVar);
                aVar3.put(aVar4.c(), fVarA);
                if (abstractC0083aB.a() == 1) {
                    z = dVar != null;
                }
                if (fVarA.c()) {
                    if (aVar != null) {
                        String strD = aVar4.d();
                        String strD2 = aVar.d();
                        StringBuilder sb = new StringBuilder(String.valueOf(strD).length() + 21 + String.valueOf(strD2).length());
                        sb.append(strD);
                        sb.append(" cannot be used with ");
                        sb.append(strD2);
                        throw new IllegalStateException(sb.toString());
                    }
                    aVar = aVar4;
                }
            }
            if (aVar != null) {
                if (z) {
                    String strD3 = aVar.d();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(strD3).length() + 82);
                    sb2.append("With using ");
                    sb2.append(strD3);
                    sb2.append(", GamesOptions can only be specified within GoogleSignInOptions.Builder");
                    throw new IllegalStateException(sb2.toString());
                }
                aa.a(this.f3459a == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", aVar.d());
                aa.a(this.f3460b.equals(this.f3461c), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", aVar.d());
            }
            am amVar = new am(this.i, new ReentrantLock(), this.n, eVarA, this.o, this.p, aVar2, this.q, this.r, aVar3, this.l, am.a((Iterable<a.f>) aVar3.values(), true), arrayList, false);
            synchronized (f.f3458a) {
                f.f3458a.add(amVar);
            }
            if (this.l >= 0) {
                ch.b(this.k).a(this.l, amVar, this.m);
            }
            return amVar;
        }
    }

    public interface b {
        void a(int i);

        void a(Bundle bundle);
    }

    public interface c {
        void a(ConnectionResult connectionResult);
    }

    public static Set<f> a() {
        Set<f> set;
        synchronized (f3458a) {
            set = f3458a;
        }
        return set;
    }

    public <C extends a.f> C a(a.c<C> cVar) {
        throw new UnsupportedOperationException();
    }

    public <A extends a.b, R extends l, T extends c.a<R, A>> T a(T t) {
        throw new UnsupportedOperationException();
    }

    public void a(int i) {
        throw new UnsupportedOperationException();
    }

    public abstract void a(c cVar);

    public void a(bw bwVar) {
        throw new UnsupportedOperationException();
    }

    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public boolean a(com.google.android.gms.common.api.internal.l lVar) {
        throw new UnsupportedOperationException();
    }

    public Context b() {
        throw new UnsupportedOperationException();
    }

    public <A extends a.b, T extends c.a<? extends l, A>> T b(T t) {
        throw new UnsupportedOperationException();
    }

    public abstract void b(c cVar);

    public void b(bw bwVar) {
        throw new UnsupportedOperationException();
    }

    public Looper c() {
        throw new UnsupportedOperationException();
    }

    public void d() {
        throw new UnsupportedOperationException();
    }

    public abstract void e();

    public abstract ConnectionResult f();

    public abstract void g();

    public abstract void h();

    public abstract g<Status> i();

    public abstract boolean j();
}
