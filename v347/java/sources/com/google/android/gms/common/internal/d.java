package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class d<T extends IInterface> {
    private ConnectionResult A;
    private boolean B;
    private volatile ConnectionInfo C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Handler f3474a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected InterfaceC0074d f3475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected AtomicInteger f3476c;
    private int f;
    private long g;
    private long h;
    private int i;
    private long j;
    private m k;
    private final Context l;
    private final Looper m;
    private final com.google.android.gms.common.internal.k n;
    private final com.google.android.gms.common.f o;
    private final Object p;
    private final Object q;

    @GuardedBy("mServiceBrokerLock")
    private s r;

    @GuardedBy("mLock")
    private T s;
    private final ArrayList<d<T>.c<?>> t;

    @GuardedBy("mLock")
    private d<T>.f u;

    @GuardedBy("mLock")
    private int v;
    private final a w;
    private final b x;
    private final int y;
    private final String z;
    private static final Feature[] e = new Feature[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String[] f3473d = {"service_esmobile", "service_googleme"};

    public interface a {
        void a(int i);

        void a(Bundle bundle);
    }

    public interface b {
        void a(ConnectionResult connectionResult);
    }

    protected abstract class c<TListener> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TListener f3477a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f3478b = false;

        public c(TListener tlistener) {
            this.f3477a = tlistener;
        }

        protected abstract void a();

        protected abstract void a(TListener tlistener);

        public void b() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.f3477a;
                if (this.f3478b) {
                    String strValueOf = String.valueOf(this);
                    Log.w("GmsClient", new StringBuilder(String.valueOf(strValueOf).length() + 47).append("Callback proxy ").append(strValueOf).append(" being reused. This is not safe.").toString());
                }
            }
            if (tlistener != null) {
                try {
                    a(tlistener);
                } catch (RuntimeException e) {
                    a();
                    throw e;
                }
            } else {
                a();
            }
            synchronized (this) {
                this.f3478b = true;
            }
            c();
        }

        public void c() {
            d();
            synchronized (d.this.t) {
                d.this.t.remove(this);
            }
        }

        public void d() {
            synchronized (this) {
                this.f3477a = null;
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.common.internal.d$d, reason: collision with other inner class name */
    public interface InterfaceC0074d {
        void a(ConnectionResult connectionResult);
    }

    public static final class e extends r.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private d f3480a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f3481b;

        public e(d dVar, int i) {
            this.f3480a = dVar;
            this.f3481b = i;
        }

        @Override // com.google.android.gms.common.internal.r
        public final void a(int i, Bundle bundle) {
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        }

        @Override // com.google.android.gms.common.internal.r
        public final void a(int i, IBinder iBinder, Bundle bundle) {
            w.a(this.f3480a, "onPostInitComplete can be called only once per call to getRemoteService");
            this.f3480a.a(i, iBinder, bundle, this.f3481b);
            this.f3480a = null;
        }

        @Override // com.google.android.gms.common.internal.r
        public final void a(int i, IBinder iBinder, ConnectionInfo connectionInfo) {
            w.a(this.f3480a, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            w.a(connectionInfo);
            this.f3480a.a(connectionInfo);
            a(i, iBinder, connectionInfo.a());
        }
    }

    public final class f implements ServiceConnection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f3482a;

        public f(int i) {
            this.f3482a = i;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder == null) {
                d.this.c(16);
                return;
            }
            synchronized (d.this.q) {
                d.this.r = s.a.a(iBinder);
            }
            d.this.a(0, (Bundle) null, this.f3482a);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            synchronized (d.this.q) {
                d.this.r = null;
            }
            d.this.f3474a.sendMessage(d.this.f3474a.obtainMessage(6, this.f3482a, 1));
        }
    }

    protected class g implements InterfaceC0074d {
        public g() {
        }

        @Override // com.google.android.gms.common.internal.d.InterfaceC0074d
        public void a(ConnectionResult connectionResult) {
            if (connectionResult.b()) {
                d.this.a((o) null, d.this.z());
            } else if (d.this.x != null) {
                d.this.x.a(connectionResult);
            }
        }
    }

    protected final class h extends k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final IBinder f3485a;

        public h(int i, IBinder iBinder, Bundle bundle) {
            super(i, bundle);
            this.f3485a = iBinder;
        }

        @Override // com.google.android.gms.common.internal.d.k
        protected final void a(ConnectionResult connectionResult) {
            if (d.this.x != null) {
                d.this.x.a(connectionResult);
            }
            d.this.a(connectionResult);
        }

        @Override // com.google.android.gms.common.internal.d.k
        protected final boolean e() {
            try {
                String interfaceDescriptor = this.f3485a.getInterfaceDescriptor();
                if (!d.this.l().equals(interfaceDescriptor)) {
                    String strL = d.this.l();
                    Log.e("GmsClient", new StringBuilder(String.valueOf(strL).length() + 34 + String.valueOf(interfaceDescriptor).length()).append("service descriptor mismatch: ").append(strL).append(" vs. ").append(interfaceDescriptor).toString());
                    return false;
                }
                IInterface iInterfaceA = d.this.a(this.f3485a);
                if (iInterfaceA == null) {
                    return false;
                }
                if (!d.this.a(2, 4, iInterfaceA) && !d.this.a(3, 4, iInterfaceA)) {
                    return false;
                }
                d.this.A = null;
                Bundle bundleW = d.this.w();
                if (d.this.w != null) {
                    d.this.w.a(bundleW);
                }
                return true;
            } catch (RemoteException e) {
                Log.w("GmsClient", "service probably died");
                return false;
            }
        }
    }

    protected final class i extends k {
        public i(int i, Bundle bundle) {
            super(i, bundle);
        }

        @Override // com.google.android.gms.common.internal.d.k
        protected final void a(ConnectionResult connectionResult) {
            d.this.f3475b.a(connectionResult);
            d.this.a(connectionResult);
        }

        @Override // com.google.android.gms.common.internal.d.k
        protected final boolean e() {
            d.this.f3475b.a(ConnectionResult.f3302a);
            return true;
        }
    }

    public interface j {
        void a();
    }

    private abstract class k extends d<T>.c<Boolean> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f3489b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Bundle f3490c;

        protected k(int i, Bundle bundle) {
            super(true);
            this.f3489b = i;
            this.f3490c = bundle;
        }

        @Override // com.google.android.gms.common.internal.d.c
        protected void a() {
        }

        protected abstract void a(ConnectionResult connectionResult);

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.common.internal.d.c
        public void a(Boolean bool) {
            if (bool == null) {
                d.this.b(1, null);
                return;
            }
            switch (this.f3489b) {
                case 0:
                    if (e()) {
                        return;
                    }
                    d.this.b(1, null);
                    a(new ConnectionResult(8, null));
                    return;
                case 10:
                    d.this.b(1, null);
                    throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
                default:
                    d.this.b(1, null);
                    a(new ConnectionResult(this.f3489b, this.f3490c != null ? (PendingIntent) this.f3490c.getParcelable("pendingIntent") : null));
                    return;
            }
        }

        protected abstract boolean e();
    }

    final class l extends Handler {
        public l(Looper looper) {
            super(looper);
        }

        private static void a(Message message) {
            c cVar = (c) message.obj;
            cVar.a();
            cVar.c();
        }

        private static boolean b(Message message) {
            return message.what == 2 || message.what == 1 || message.what == 7;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (d.this.f3476c.get() != message.arg1) {
                if (b(message)) {
                    a(message);
                    return;
                }
                return;
            }
            if ((message.what == 1 || message.what == 7 || message.what == 4 || message.what == 5) && !d.this.c()) {
                a(message);
                return;
            }
            if (message.what == 4) {
                d.this.A = new ConnectionResult(message.arg2);
                if (d.this.B() && !d.this.B) {
                    d.this.b(3, null);
                    return;
                }
                ConnectionResult connectionResult = d.this.A != null ? d.this.A : new ConnectionResult(8);
                d.this.f3475b.a(connectionResult);
                d.this.a(connectionResult);
                return;
            }
            if (message.what == 5) {
                ConnectionResult connectionResult2 = d.this.A != null ? d.this.A : new ConnectionResult(8);
                d.this.f3475b.a(connectionResult2);
                d.this.a(connectionResult2);
                return;
            }
            if (message.what == 3) {
                ConnectionResult connectionResult3 = new ConnectionResult(message.arg2, message.obj instanceof PendingIntent ? (PendingIntent) message.obj : null);
                d.this.f3475b.a(connectionResult3);
                d.this.a(connectionResult3);
                return;
            }
            if (message.what == 6) {
                d.this.b(5, null);
                if (d.this.w != null) {
                    d.this.w.a(message.arg2);
                }
                d.this.a(message.arg2);
                d.this.a(5, 1, (IInterface) null);
                return;
            }
            if (message.what == 2 && !d.this.b()) {
                a(message);
            } else if (b(message)) {
                ((c) message.obj).b();
            } else {
                Log.wtf("GmsClient", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
            }
        }
    }

    protected d(Context context, Looper looper, int i2, a aVar, b bVar, String str) {
        this(context, looper, com.google.android.gms.common.internal.k.a(context), com.google.android.gms.common.f.b(), i2, (a) w.a(aVar), (b) w.a(bVar), str);
    }

    protected d(Context context, Looper looper, com.google.android.gms.common.internal.k kVar, com.google.android.gms.common.f fVar, int i2, a aVar, b bVar, String str) {
        this.p = new Object();
        this.q = new Object();
        this.t = new ArrayList<>();
        this.v = 1;
        this.A = null;
        this.B = false;
        this.C = null;
        this.f3476c = new AtomicInteger(0);
        this.l = (Context) w.a(context, "Context must not be null");
        this.m = (Looper) w.a(looper, "Looper must not be null");
        this.n = (com.google.android.gms.common.internal.k) w.a(kVar, "Supervisor must not be null");
        this.o = (com.google.android.gms.common.f) w.a(fVar, "API availability must not be null");
        this.f3474a = new l(looper);
        this.y = i2;
        this.w = aVar;
        this.x = bVar;
        this.z = str;
    }

    private final boolean A() {
        boolean z;
        synchronized (this.p) {
            z = this.v == 3;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean B() {
        if (this.B || TextUtils.isEmpty(l()) || TextUtils.isEmpty(n())) {
            return false;
        }
        try {
            Class.forName(l());
            return true;
        } catch (ClassNotFoundException e2) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(ConnectionInfo connectionInfo) {
        this.C = connectionInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a(int i2, int i3, T t) {
        boolean z;
        synchronized (this.p) {
            if (this.v != i2) {
                z = false;
            } else {
                b(i3, t);
                z = true;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2, T t) {
        w.b((i2 == 4) == (t != null));
        synchronized (this.p) {
            this.v = i2;
            this.s = t;
            a(i2, t);
            switch (i2) {
                case 1:
                    if (this.u != null) {
                        this.n.b(i(), s_(), k(), this.u, m());
                        this.u = null;
                    }
                    break;
                case 2:
                case 3:
                    if (this.u != null && this.k != null) {
                        String strA = this.k.a();
                        String strB = this.k.b();
                        Log.e("GmsClient", new StringBuilder(String.valueOf(strA).length() + 70 + String.valueOf(strB).length()).append("Calling connect() while still connected, missing disconnect() for ").append(strA).append(" on ").append(strB).toString());
                        this.n.b(this.k.a(), this.k.b(), this.k.c(), this.u, m());
                        this.f3476c.incrementAndGet();
                    }
                    this.u = new f(this.f3476c.get());
                    this.k = (this.v != 3 || n() == null) ? new m(s_(), i(), false, k()) : new m(p().getPackageName(), n(), true, k());
                    if (!this.n.a(this.k.a(), this.k.b(), this.k.c(), this.u, m())) {
                        String strA2 = this.k.a();
                        String strB2 = this.k.b();
                        Log.e("GmsClient", new StringBuilder(String.valueOf(strA2).length() + 34 + String.valueOf(strB2).length()).append("unable to connect to service: ").append(strA2).append(" on ").append(strB2).toString());
                        a(16, (Bundle) null, this.f3476c.get());
                    }
                    break;
                case 4:
                    a(t);
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(int i2) {
        int i3;
        if (A()) {
            i3 = 5;
            this.B = true;
        } else {
            i3 = 4;
        }
        this.f3474a.sendMessage(this.f3474a.obtainMessage(i3, this.f3476c.get(), 16));
    }

    protected abstract T a(IBinder iBinder);

    public void a() {
        this.f3476c.incrementAndGet();
        synchronized (this.t) {
            int size = this.t.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.t.get(i2).d();
            }
            this.t.clear();
        }
        synchronized (this.q) {
            this.r = null;
        }
        b(1, null);
    }

    protected void a(int i2) {
        this.f = i2;
        this.g = System.currentTimeMillis();
    }

    protected void a(int i2, Bundle bundle, int i3) {
        this.f3474a.sendMessage(this.f3474a.obtainMessage(7, i3, -1, new i(i2, bundle)));
    }

    protected void a(int i2, IBinder iBinder, Bundle bundle, int i3) {
        this.f3474a.sendMessage(this.f3474a.obtainMessage(1, i3, -1, new h(i2, iBinder, bundle)));
    }

    void a(int i2, T t) {
    }

    protected void a(T t) {
        this.h = System.currentTimeMillis();
    }

    protected void a(ConnectionResult connectionResult) {
        this.i = connectionResult.c();
        this.j = System.currentTimeMillis();
    }

    public void a(InterfaceC0074d interfaceC0074d) {
        this.f3475b = (InterfaceC0074d) w.a(interfaceC0074d, "Connection progress callbacks cannot be null.");
        b(2, null);
    }

    protected void a(InterfaceC0074d interfaceC0074d, int i2, PendingIntent pendingIntent) {
        this.f3475b = (InterfaceC0074d) w.a(interfaceC0074d, "Connection progress callbacks cannot be null.");
        this.f3474a.sendMessage(this.f3474a.obtainMessage(3, this.f3476c.get(), i2, pendingIntent));
    }

    public void a(j jVar) {
        jVar.a();
    }

    public void a(o oVar, Set<Scope> set) {
        GetServiceRequest getServiceRequestA = new GetServiceRequest(this.y).a(this.l.getPackageName()).a(u());
        if (set != null) {
            getServiceRequestA.a(set);
        }
        if (d()) {
            getServiceRequestA.a(t()).a(oVar);
        } else if (y()) {
            getServiceRequestA.a(q());
        }
        getServiceRequestA.a(r());
        getServiceRequestA.b(s());
        try {
            synchronized (this.q) {
                if (this.r != null) {
                    this.r.a(new e(this, this.f3476c.get()), getServiceRequestA);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
            b(1);
        } catch (RemoteException e3) {
            e = e3;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            a(8, (IBinder) null, (Bundle) null, this.f3476c.get());
        } catch (SecurityException e4) {
            throw e4;
        } catch (RuntimeException e5) {
            e = e5;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            a(8, (IBinder) null, (Bundle) null, this.f3476c.get());
        }
    }

    public void b(int i2) {
        this.f3474a.sendMessage(this.f3474a.obtainMessage(6, this.f3476c.get(), i2));
    }

    public boolean b() {
        boolean z;
        synchronized (this.p) {
            z = this.v == 4;
        }
        return z;
    }

    public boolean c() {
        boolean z;
        synchronized (this.p) {
            z = this.v == 2 || this.v == 3;
        }
        return z;
    }

    public boolean d() {
        return false;
    }

    public boolean e() {
        return true;
    }

    public String f() {
        if (!b() || this.k == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return this.k.b();
    }

    public int g() {
        return com.google.android.gms.common.f.f3430b;
    }

    public final Feature[] h() {
        ConnectionInfo connectionInfo = this.C;
        if (connectionInfo == null) {
            return null;
        }
        return connectionInfo.b();
    }

    protected abstract String i();

    protected int k() {
        return 129;
    }

    protected abstract String l();

    protected final String m() {
        return this.z == null ? this.l.getClass().getName() : this.z;
    }

    protected String n() {
        return null;
    }

    public void o() {
        int iB = this.o.b(this.l, g());
        if (iB == 0) {
            a(new g());
        } else {
            b(1, null);
            a(new g(), iB, (PendingIntent) null);
        }
    }

    public final Context p() {
        return this.l;
    }

    public Account q() {
        return null;
    }

    public Feature[] r() {
        return e;
    }

    public Feature[] s() {
        return e;
    }

    protected String s_() {
        return "com.google.android.gms";
    }

    public final Account t() {
        return q() != null ? q() : new Account("<<default account>>", "com.google");
    }

    protected Bundle u() {
        return new Bundle();
    }

    protected final void v() {
        if (!b()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public Bundle w() {
        return null;
    }

    public final T x() throws DeadObjectException {
        T t;
        synchronized (this.p) {
            if (this.v == 5) {
                throw new DeadObjectException();
            }
            v();
            w.a(this.s != null, "Client is connected but service is null");
            t = this.s;
        }
        return t;
    }

    public boolean y() {
        return false;
    }

    protected Set<Scope> z() {
        return Collections.EMPTY_SET;
    }
}
