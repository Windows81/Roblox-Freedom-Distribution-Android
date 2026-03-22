package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
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
import com.google.android.gms.common.internal.t;
import com.google.android.gms.common.internal.u;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class d<T extends IInterface> {
    private ConnectionResult A;
    private boolean B;
    private volatile ConnectionInfo C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Handler f3768a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected InterfaceC0090d f3769b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected AtomicInteger f3770c;
    private int f;
    private long g;
    private long h;
    private int i;
    private long j;
    private o k;
    private final Context l;
    private final Looper m;
    private final com.google.android.gms.common.internal.l n;
    private final com.google.android.gms.common.f o;
    private final Object p;
    private final Object q;
    private u r;
    private T s;
    private final ArrayList<d<T>.c<?>> t;
    private d<T>.f u;
    private int v;
    private final a w;
    private final b x;
    private final int y;
    private final String z;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Feature[] f3767e = new Feature[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String[] f3766d = {"service_esmobile", "service_googleme"};

    public interface a {
        void a(int i);

        void a(Bundle bundle);
    }

    public interface b {
        void a(ConnectionResult connectionResult);
    }

    protected abstract class c<TListener> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TListener f3771a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f3772b = false;

        public c(TListener tlistener) {
            this.f3771a = tlistener;
        }

        protected abstract void a();

        protected abstract void a(TListener tlistener);

        public void b() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.f3771a;
                if (this.f3772b) {
                    String strValueOf = String.valueOf(this);
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 47);
                    sb.append("Callback proxy ");
                    sb.append(strValueOf);
                    sb.append(" being reused. This is not safe.");
                    Log.w("GmsClient", sb.toString());
                }
            }
            if (tlistener != null) {
                try {
                    a(tlistener);
                } catch (RuntimeException e2) {
                    a();
                    throw e2;
                }
            } else {
                a();
            }
            synchronized (this) {
                this.f3772b = true;
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
                this.f3771a = null;
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.common.internal.d$d, reason: collision with other inner class name */
    public interface InterfaceC0090d {
        void a(ConnectionResult connectionResult);
    }

    public static final class e extends t.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private d f3774a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f3775b;

        public e(d dVar, int i) {
            this.f3774a = dVar;
            this.f3775b = i;
        }

        @Override // com.google.android.gms.common.internal.t
        public final void a(int i, Bundle bundle) {
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        }

        @Override // com.google.android.gms.common.internal.t
        public final void a(int i, IBinder iBinder, Bundle bundle) {
            aa.a(this.f3774a, "onPostInitComplete can be called only once per call to getRemoteService");
            this.f3774a.a(i, iBinder, bundle, this.f3775b);
            this.f3774a = null;
        }

        @Override // com.google.android.gms.common.internal.t
        public final void a(int i, IBinder iBinder, ConnectionInfo connectionInfo) {
            aa.a(this.f3774a, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            aa.a(connectionInfo);
            this.f3774a.a(connectionInfo);
            a(i, iBinder, connectionInfo.a());
        }
    }

    public final class f implements ServiceConnection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f3776a;

        public f(int i) {
            this.f3776a = i;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            d dVar = d.this;
            if (iBinder == null) {
                dVar.c(16);
                return;
            }
            synchronized (dVar.q) {
                d.this.r = u.a.a(iBinder);
            }
            d.this.a(0, (Bundle) null, this.f3776a);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            synchronized (d.this.q) {
                d.this.r = null;
            }
            d.this.f3768a.sendMessage(d.this.f3768a.obtainMessage(6, this.f3776a, 1));
        }
    }

    protected class g implements InterfaceC0090d {
        public g() {
        }

        @Override // com.google.android.gms.common.internal.d.InterfaceC0090d
        public void a(ConnectionResult connectionResult) {
            if (connectionResult.b()) {
                d dVar = d.this;
                dVar.a((q) null, dVar.C());
            } else if (d.this.x != null) {
                d.this.x.a(connectionResult);
            }
        }
    }

    protected final class h extends k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final IBinder f3779a;

        public h(int i, IBinder iBinder, Bundle bundle) {
            super(i, bundle);
            this.f3779a = iBinder;
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
                String interfaceDescriptor = this.f3779a.getInterfaceDescriptor();
                if (!d.this.b().equals(interfaceDescriptor)) {
                    String strB = d.this.b();
                    StringBuilder sb = new StringBuilder(String.valueOf(strB).length() + 34 + String.valueOf(interfaceDescriptor).length());
                    sb.append("service descriptor mismatch: ");
                    sb.append(strB);
                    sb.append(" vs. ");
                    sb.append(interfaceDescriptor);
                    Log.e("GmsClient", sb.toString());
                    return false;
                }
                IInterface iInterfaceA = d.this.a(this.f3779a);
                if (iInterfaceA == null || !(d.this.a(2, 4, iInterfaceA) || d.this.a(3, 4, iInterfaceA))) {
                    return false;
                }
                d.this.A = null;
                Bundle bundleA = d.this.a();
                if (d.this.w == null) {
                    return true;
                }
                d.this.w.a(bundleA);
                return true;
            } catch (RemoteException unused) {
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
            d.this.f3769b.a(connectionResult);
            d.this.a(connectionResult);
        }

        @Override // com.google.android.gms.common.internal.d.k
        protected final boolean e() {
            d.this.f3769b.a(ConnectionResult.f3415a);
            return true;
        }
    }

    public interface j {
        void a();
    }

    private abstract class k extends d<T>.c<Boolean> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f3783b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Bundle f3784c;

        protected k(int i, Bundle bundle) {
            super(true);
            this.f3783b = i;
            this.f3784c = bundle;
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
            int i = this.f3783b;
            if (i == 0) {
                if (e()) {
                    return;
                }
                d.this.b(1, null);
                a(new ConnectionResult(8, null));
                return;
            }
            if (i == 10) {
                d.this.b(1, null);
                throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
            }
            d.this.b(1, null);
            Bundle bundle = this.f3784c;
            a(new ConnectionResult(this.f3783b, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null));
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
            if (d.this.f3770c.get() != message.arg1) {
                if (b(message)) {
                    a(message);
                    return;
                }
                return;
            }
            if ((message.what == 1 || message.what == 7 || message.what == 4 || message.what == 5) && !d.this.i()) {
                a(message);
                return;
            }
            if (message.what == 4) {
                d.this.A = new ConnectionResult(message.arg2);
                if (d.this.D() && !d.this.B) {
                    d.this.b(3, null);
                    return;
                }
                ConnectionResult connectionResult = d.this.A != null ? d.this.A : new ConnectionResult(8);
                d.this.f3769b.a(connectionResult);
                d.this.a(connectionResult);
                return;
            }
            if (message.what == 5) {
                ConnectionResult connectionResult2 = d.this.A != null ? d.this.A : new ConnectionResult(8);
                d.this.f3769b.a(connectionResult2);
                d.this.a(connectionResult2);
                return;
            }
            if (message.what == 3) {
                ConnectionResult connectionResult3 = new ConnectionResult(message.arg2, message.obj instanceof PendingIntent ? (PendingIntent) message.obj : null);
                d.this.f3769b.a(connectionResult3);
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
            if (message.what == 2 && !d.this.h()) {
                a(message);
                return;
            }
            if (b(message)) {
                ((c) message.obj).b();
                return;
            }
            int i = message.what;
            StringBuilder sb = new StringBuilder(45);
            sb.append("Don't know how to handle message: ");
            sb.append(i);
            Log.wtf("GmsClient", sb.toString(), new Exception());
        }
    }

    protected d(Context context, Looper looper, int i2, a aVar, b bVar, String str) {
        this(context, looper, com.google.android.gms.common.internal.l.a(context), com.google.android.gms.common.f.b(), i2, (a) aa.a(aVar), (b) aa.a(bVar), str);
    }

    protected d(Context context, Looper looper, com.google.android.gms.common.internal.l lVar, com.google.android.gms.common.f fVar, int i2, a aVar, b bVar, String str) {
        this.p = new Object();
        this.q = new Object();
        this.t = new ArrayList<>();
        this.v = 1;
        this.A = null;
        this.B = false;
        this.C = null;
        this.f3770c = new AtomicInteger(0);
        this.l = (Context) aa.a(context, "Context must not be null");
        this.m = (Looper) aa.a(looper, "Looper must not be null");
        this.n = (com.google.android.gms.common.internal.l) aa.a(lVar, "Supervisor must not be null");
        this.o = (com.google.android.gms.common.f) aa.a(fVar, "API availability must not be null");
        this.f3768a = new l(looper);
        this.y = i2;
        this.w = aVar;
        this.x = bVar;
        this.z = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean D() {
        if (this.B || TextUtils.isEmpty(b()) || TextUtils.isEmpty(r())) {
            return false;
        }
        try {
            Class.forName(b());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(ConnectionInfo connectionInfo) {
        this.C = connectionInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a(int i2, int i3, T t) {
        synchronized (this.p) {
            if (this.v != i2) {
                return false;
            }
            b(i3, t);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2, T t) {
        aa.b((i2 == 4) == (t != null));
        synchronized (this.p) {
            this.v = i2;
            this.s = t;
            a(i2, t);
            if (i2 != 1) {
                if (i2 == 2 || i2 == 3) {
                    if (this.u != null && this.k != null) {
                        String strA = this.k.a();
                        String strB = this.k.b();
                        StringBuilder sb = new StringBuilder(String.valueOf(strA).length() + 70 + String.valueOf(strB).length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(strA);
                        sb.append(" on ");
                        sb.append(strB);
                        Log.e("GmsClient", sb.toString());
                        this.n.b(this.k.a(), this.k.b(), this.k.c(), this.u, q());
                        this.f3770c.incrementAndGet();
                    }
                    this.u = new f(this.f3770c.get());
                    o oVar = (this.v != 3 || r() == null) ? new o(f_(), a_(), false, p()) : new o(t().getPackageName(), r(), true, p());
                    this.k = oVar;
                    if (!this.n.a(oVar.a(), this.k.b(), this.k.c(), this.u, q())) {
                        String strA2 = this.k.a();
                        String strB2 = this.k.b();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(strA2).length() + 34 + String.valueOf(strB2).length());
                        sb2.append("unable to connect to service: ");
                        sb2.append(strA2);
                        sb2.append(" on ");
                        sb2.append(strB2);
                        Log.e("GmsClient", sb2.toString());
                        a(16, (Bundle) null, this.f3770c.get());
                    }
                } else if (i2 == 4) {
                    a(t);
                }
            } else if (this.u != null) {
                this.n.b(a_(), f_(), p(), this.u, q());
                this.u = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(int i2) {
        int i3;
        if (e()) {
            i3 = 5;
            this.B = true;
        } else {
            i3 = 4;
        }
        Handler handler = this.f3768a;
        handler.sendMessage(handler.obtainMessage(i3, this.f3770c.get(), 16));
    }

    private final boolean e() {
        boolean z;
        synchronized (this.p) {
            z = this.v == 3;
        }
        return z;
    }

    public final T A() throws DeadObjectException {
        T t;
        synchronized (this.p) {
            if (this.v == 5) {
                throw new DeadObjectException();
            }
            z();
            aa.a(this.s != null, "Client is connected but service is null");
            t = this.s;
        }
        return t;
    }

    public boolean B() {
        return false;
    }

    protected Set<Scope> C() {
        return Collections.EMPTY_SET;
    }

    public Bundle a() {
        return null;
    }

    protected abstract T a(IBinder iBinder);

    protected void a(int i2) {
        this.f = i2;
        this.g = System.currentTimeMillis();
    }

    protected void a(int i2, Bundle bundle, int i3) {
        Handler handler = this.f3768a;
        handler.sendMessage(handler.obtainMessage(7, i3, -1, new i(i2, bundle)));
    }

    protected void a(int i2, IBinder iBinder, Bundle bundle, int i3) {
        Handler handler = this.f3768a;
        handler.sendMessage(handler.obtainMessage(1, i3, -1, new h(i2, iBinder, bundle)));
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

    public void a(InterfaceC0090d interfaceC0090d) {
        this.f3769b = (InterfaceC0090d) aa.a(interfaceC0090d, "Connection progress callbacks cannot be null.");
        b(2, null);
    }

    protected void a(InterfaceC0090d interfaceC0090d, int i2, PendingIntent pendingIntent) {
        this.f3769b = (InterfaceC0090d) aa.a(interfaceC0090d, "Connection progress callbacks cannot be null.");
        Handler handler = this.f3768a;
        handler.sendMessage(handler.obtainMessage(3, this.f3770c.get(), i2, pendingIntent));
    }

    public void a(j jVar) {
        jVar.a();
    }

    public void a(q qVar, Set<Scope> set) {
        GetServiceRequest getServiceRequestA = new GetServiceRequest(this.y).a(this.l.getPackageName()).a(y());
        if (set != null) {
            getServiceRequestA.a(set);
        }
        if (j()) {
            getServiceRequestA.a(x()).a(qVar);
        } else if (B()) {
            getServiceRequestA.a(u());
        }
        getServiceRequestA.a(v());
        getServiceRequestA.b(w());
        try {
            synchronized (this.q) {
                if (this.r != null) {
                    this.r.a(new e(this, this.f3770c.get()), getServiceRequestA);
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
            a(8, (IBinder) null, (Bundle) null, this.f3770c.get());
        } catch (SecurityException e4) {
            throw e4;
        } catch (RuntimeException e5) {
            e = e5;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            a(8, (IBinder) null, (Bundle) null, this.f3770c.get());
        }
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i2;
        T t;
        u uVar;
        synchronized (this.p) {
            i2 = this.v;
            t = this.s;
        }
        synchronized (this.q) {
            uVar = this.r;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        printWriter.print(i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? "UNKNOWN" : "DISCONNECTING" : "CONNECTED" : "LOCAL_CONNECTING" : "REMOTE_CONNECTING" : "DISCONNECTED");
        printWriter.append(" mService=");
        if (t == null) {
            printWriter.append("null");
        } else {
            printWriter.append((CharSequence) b()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(t.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (uVar == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(uVar.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.h > 0) {
            PrintWriter printWriterAppend = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j2 = this.h;
            String str2 = simpleDateFormat.format(new Date(this.h));
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 21);
            sb.append(j2);
            sb.append(" ");
            sb.append(str2);
            printWriterAppend.println(sb.toString());
        }
        if (this.g > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i3 = this.f;
            printWriter.append((CharSequence) (i3 != 1 ? i3 != 2 ? String.valueOf(i3) : "CAUSE_NETWORK_LOST" : "CAUSE_SERVICE_DISCONNECTED"));
            PrintWriter printWriterAppend2 = printWriter.append(" lastSuspendedTime=");
            long j3 = this.g;
            String str3 = simpleDateFormat.format(new Date(this.g));
            StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + 21);
            sb2.append(j3);
            sb2.append(" ");
            sb2.append(str3);
            printWriterAppend2.println(sb2.toString());
        }
        if (this.j > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) com.google.android.gms.common.api.d.a(this.i));
            PrintWriter printWriterAppend3 = printWriter.append(" lastFailedTime=");
            long j4 = this.j;
            String str4 = simpleDateFormat.format(new Date(this.j));
            StringBuilder sb3 = new StringBuilder(String.valueOf(str4).length() + 21);
            sb3.append(j4);
            sb3.append(" ");
            sb3.append(str4);
            printWriterAppend3.println(sb3.toString());
        }
    }

    protected abstract String a_();

    protected abstract String b();

    public void b(int i2) {
        Handler handler = this.f3768a;
        handler.sendMessage(handler.obtainMessage(6, this.f3770c.get(), i2));
    }

    public boolean c() {
        return false;
    }

    public Intent d() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    public int f() {
        return com.google.android.gms.common.f.f3704b;
    }

    protected String f_() {
        return "com.google.android.gms";
    }

    public void g() {
        this.f3770c.incrementAndGet();
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

    public boolean h() {
        boolean z;
        synchronized (this.p) {
            z = this.v == 4;
        }
        return z;
    }

    public boolean i() {
        boolean z;
        synchronized (this.p) {
            z = this.v == 2 || this.v == 3;
        }
        return z;
    }

    public boolean j() {
        return false;
    }

    public boolean k() {
        return true;
    }

    public IBinder l() {
        synchronized (this.q) {
            if (this.r == null) {
                return null;
            }
            return this.r.asBinder();
        }
    }

    public String m() {
        o oVar;
        if (!h() || (oVar = this.k) == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return oVar.b();
    }

    public final Feature[] n() {
        ConnectionInfo connectionInfo = this.C;
        if (connectionInfo == null) {
            return null;
        }
        return connectionInfo.b();
    }

    protected int p() {
        return 129;
    }

    protected final String q() {
        String str = this.z;
        return str == null ? this.l.getClass().getName() : str;
    }

    protected String r() {
        return null;
    }

    public void s() {
        int iB = this.o.b(this.l, f());
        if (iB == 0) {
            a(new g());
        } else {
            b(1, null);
            a(new g(), iB, (PendingIntent) null);
        }
    }

    public final Context t() {
        return this.l;
    }

    public Account u() {
        return null;
    }

    public Feature[] v() {
        return f3767e;
    }

    public Feature[] w() {
        return f3767e;
    }

    public final Account x() {
        return u() != null ? u() : new Account("<<default account>>", "com.google");
    }

    protected Bundle y() {
        return new Bundle();
    }

    protected final void z() {
        if (!h()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }
}
