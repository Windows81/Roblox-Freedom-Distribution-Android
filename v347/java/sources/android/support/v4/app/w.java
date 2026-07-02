package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.a.e;
import android.support.v4.app.v;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes.dex */
class w extends v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f816a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final android.support.v4.g.n<a> f817b = new android.support.v4.g.n<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final android.support.v4.g.n<a> f818c = new android.support.v4.g.n<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String f819d;
    boolean e;
    boolean f;
    boolean g;
    k h;

    final class a implements e.b<Object>, e.c<Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f820a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Bundle f821b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        v.a<Object> f822c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        android.support.v4.a.e<Object> f823d;
        boolean e;
        boolean f;
        Object g;
        boolean h;
        boolean i;
        boolean j;
        boolean k;
        boolean l;
        boolean m;
        a n;

        public a(int i, Bundle bundle, v.a<Object> aVar) {
            this.f820a = i;
            this.f821b = bundle;
            this.f822c = aVar;
        }

        void a() {
            if (this.i && this.j) {
                this.h = true;
                return;
            }
            if (!this.h) {
                this.h = true;
                if (w.f816a) {
                    Log.v("LoaderManager", "  Starting: " + this);
                }
                if (this.f823d == null && this.f822c != null) {
                    this.f823d = this.f822c.a(this.f820a, this.f821b);
                }
                if (this.f823d != null) {
                    if (this.f823d.getClass().isMemberClass() && !Modifier.isStatic(this.f823d.getClass().getModifiers())) {
                        throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.f823d);
                    }
                    if (!this.m) {
                        this.f823d.a(this.f820a, this);
                        this.f823d.a((e.b<Object>) this);
                        this.m = true;
                    }
                    this.f823d.q();
                }
            }
        }

        void b() {
            if (w.f816a) {
                Log.v("LoaderManager", "  Retaining: " + this);
            }
            this.i = true;
            this.j = this.h;
            this.h = false;
            this.f822c = null;
        }

        void c() {
            if (this.i) {
                if (w.f816a) {
                    Log.v("LoaderManager", "  Finished Retaining: " + this);
                }
                this.i = false;
                if (this.h != this.j && !this.h) {
                    e();
                }
            }
            if (this.h && this.e && !this.k) {
                b(this.f823d, this.g);
            }
        }

        void d() {
            if (this.h && this.k) {
                this.k = false;
                if (this.e && !this.i) {
                    b(this.f823d, this.g);
                }
            }
        }

        void e() {
            if (w.f816a) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.h = false;
            if (!this.i && this.f823d != null && this.m) {
                this.m = false;
                this.f823d.a((e.c<Object>) this);
                this.f823d.b((e.b<Object>) this);
                this.f823d.t();
            }
        }

        boolean f() {
            if (w.f816a) {
                Log.v("LoaderManager", "  Canceling: " + this);
            }
            if (!this.h || this.f823d == null || !this.m) {
                return false;
            }
            boolean zR = this.f823d.r();
            if (!zR) {
                a(this.f823d);
                return zR;
            }
            return zR;
        }

        void g() {
            String str;
            if (w.f816a) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.l = true;
            boolean z = this.f;
            this.f = false;
            if (this.f822c != null && this.f823d != null && this.e && z) {
                if (w.f816a) {
                    Log.v("LoaderManager", "  Resetting: " + this);
                }
                if (w.this.h != null) {
                    String str2 = w.this.h.f716d.u;
                    w.this.h.f716d.u = "onLoaderReset";
                    str = str2;
                } else {
                    str = null;
                }
                try {
                    this.f822c.a(this.f823d);
                } finally {
                    if (w.this.h != null) {
                        w.this.h.f716d.u = str;
                    }
                }
            }
            this.f822c = null;
            this.g = null;
            this.e = false;
            if (this.f823d != null) {
                if (this.m) {
                    this.m = false;
                    this.f823d.a((e.c<Object>) this);
                    this.f823d.b((e.b<Object>) this);
                }
                this.f823d.w();
            }
            if (this.n != null) {
                this.n.g();
            }
        }

        @Override // android.support.v4.a.e.b
        public void a(android.support.v4.a.e<Object> eVar) {
            if (w.f816a) {
                Log.v("LoaderManager", "onLoadCanceled: " + this);
            }
            if (this.l) {
                if (w.f816a) {
                    Log.v("LoaderManager", "  Ignoring load canceled -- destroyed");
                }
            } else {
                if (w.this.f817b.a(this.f820a) != this) {
                    if (w.f816a) {
                        Log.v("LoaderManager", "  Ignoring load canceled -- not active");
                        return;
                    }
                    return;
                }
                a aVar = this.n;
                if (aVar != null) {
                    if (w.f816a) {
                        Log.v("LoaderManager", "  Switching to pending loader: " + aVar);
                    }
                    this.n = null;
                    w.this.f817b.b(this.f820a, null);
                    g();
                    w.this.a(aVar);
                }
            }
        }

        @Override // android.support.v4.a.e.c
        public void a(android.support.v4.a.e<Object> eVar, Object obj) {
            if (w.f816a) {
                Log.v("LoaderManager", "onLoadComplete: " + this);
            }
            if (this.l) {
                if (w.f816a) {
                    Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
                    return;
                }
                return;
            }
            if (w.this.f817b.a(this.f820a) != this) {
                if (w.f816a) {
                    Log.v("LoaderManager", "  Ignoring load complete -- not active");
                    return;
                }
                return;
            }
            a aVar = this.n;
            if (aVar != null) {
                if (w.f816a) {
                    Log.v("LoaderManager", "  Switching to pending loader: " + aVar);
                }
                this.n = null;
                w.this.f817b.b(this.f820a, null);
                g();
                w.this.a(aVar);
                return;
            }
            if (this.g != obj || !this.e) {
                this.g = obj;
                this.e = true;
                if (this.h) {
                    b(eVar, obj);
                }
            }
            a aVarA = w.this.f818c.a(this.f820a);
            if (aVarA != null && aVarA != this) {
                aVarA.f = false;
                aVarA.g();
                w.this.f818c.c(this.f820a);
            }
            if (w.this.h != null && !w.this.a()) {
                w.this.h.f716d.h();
            }
        }

        void b(android.support.v4.a.e<Object> eVar, Object obj) {
            String str;
            if (this.f822c != null) {
                if (w.this.h == null) {
                    str = null;
                } else {
                    String str2 = w.this.h.f716d.u;
                    w.this.h.f716d.u = "onLoadFinished";
                    str = str2;
                }
                try {
                    if (w.f816a) {
                        Log.v("LoaderManager", "  onLoadFinished in " + eVar + ": " + eVar.c(obj));
                    }
                    this.f822c.a(eVar, obj);
                    this.f = true;
                } finally {
                    if (w.this.h != null) {
                        w.this.h.f716d.u = str;
                    }
                }
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f820a);
            sb.append(" : ");
            android.support.v4.g.d.a(this.f823d, sb);
            sb.append("}}");
            return sb.toString();
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f820a);
            printWriter.print(" mArgs=");
            printWriter.println(this.f821b);
            printWriter.print(str);
            printWriter.print("mCallbacks=");
            printWriter.println(this.f822c);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f823d);
            if (this.f823d != null) {
                this.f823d.a(str + "  ", fileDescriptor, printWriter, strArr);
            }
            if (this.e || this.f) {
                printWriter.print(str);
                printWriter.print("mHaveData=");
                printWriter.print(this.e);
                printWriter.print("  mDeliveredData=");
                printWriter.println(this.f);
                printWriter.print(str);
                printWriter.print("mData=");
                printWriter.println(this.g);
            }
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.h);
            printWriter.print(" mReportNextStart=");
            printWriter.print(this.k);
            printWriter.print(" mDestroyed=");
            printWriter.println(this.l);
            printWriter.print(str);
            printWriter.print("mRetaining=");
            printWriter.print(this.i);
            printWriter.print(" mRetainingStarted=");
            printWriter.print(this.j);
            printWriter.print(" mListenerRegistered=");
            printWriter.println(this.m);
            if (this.n != null) {
                printWriter.print(str);
                printWriter.println("Pending Loader ");
                printWriter.print(this.n);
                printWriter.println(":");
                this.n.a(str + "  ", fileDescriptor, printWriter, strArr);
            }
        }
    }

    w(String str, k kVar, boolean z) {
        this.f819d = str;
        this.h = kVar;
        this.e = z;
    }

    void a(k kVar) {
        this.h = kVar;
    }

    private a b(int i, Bundle bundle, v.a<Object> aVar) {
        a aVar2 = new a(i, bundle, aVar);
        aVar2.f823d = aVar.a(i, bundle);
        return aVar2;
    }

    private a c(int i, Bundle bundle, v.a<Object> aVar) {
        try {
            this.g = true;
            a aVarB = b(i, bundle, aVar);
            a(aVarB);
            return aVarB;
        } finally {
            this.g = false;
        }
    }

    void a(a aVar) {
        this.f817b.b(aVar.f820a, aVar);
        if (this.e) {
            aVar.a();
        }
    }

    @Override // android.support.v4.app.v
    public <D> android.support.v4.a.e<D> a(int i, Bundle bundle, v.a<D> aVar) {
        if (this.g) {
            throw new IllegalStateException("Called while creating a loader");
        }
        a aVarA = this.f817b.a(i);
        if (f816a) {
            Log.v("LoaderManager", "restartLoader in " + this + ": args=" + bundle);
        }
        if (aVarA != null) {
            a aVarA2 = this.f818c.a(i);
            if (aVarA2 != null) {
                if (aVarA.e) {
                    if (f816a) {
                        Log.v("LoaderManager", "  Removing last inactive loader: " + aVarA);
                    }
                    aVarA2.f = false;
                    aVarA2.g();
                    aVarA.f823d.u();
                    this.f818c.b(i, aVarA);
                } else if (!aVarA.f()) {
                    if (f816a) {
                        Log.v("LoaderManager", "  Current loader is stopped; replacing");
                    }
                    this.f817b.b(i, null);
                    aVarA.g();
                } else {
                    if (f816a) {
                        Log.v("LoaderManager", "  Current loader is running; configuring pending loader");
                    }
                    if (aVarA.n != null) {
                        if (f816a) {
                            Log.v("LoaderManager", "  Removing pending loader: " + aVarA.n);
                        }
                        aVarA.n.g();
                        aVarA.n = null;
                    }
                    if (f816a) {
                        Log.v("LoaderManager", "  Enqueuing as new pending loader");
                    }
                    aVarA.n = b(i, bundle, aVar);
                    return (android.support.v4.a.e<D>) aVarA.n.f823d;
                }
            } else {
                if (f816a) {
                    Log.v("LoaderManager", "  Making last loader inactive: " + aVarA);
                }
                aVarA.f823d.u();
                this.f818c.b(i, aVarA);
            }
        }
        return (android.support.v4.a.e<D>) c(i, bundle, aVar).f823d;
    }

    void b() {
        if (f816a) {
            Log.v("LoaderManager", "Starting in " + this);
        }
        if (this.e) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doStart when already started: " + this, runtimeException);
        } else {
            this.e = true;
            for (int iB = this.f817b.b() - 1; iB >= 0; iB--) {
                this.f817b.e(iB).a();
            }
        }
    }

    void c() {
        if (f816a) {
            Log.v("LoaderManager", "Stopping in " + this);
        }
        if (!this.e) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doStop when not started: " + this, runtimeException);
        } else {
            for (int iB = this.f817b.b() - 1; iB >= 0; iB--) {
                this.f817b.e(iB).e();
            }
            this.e = false;
        }
    }

    void d() {
        if (f816a) {
            Log.v("LoaderManager", "Retaining in " + this);
        }
        if (!this.e) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doRetain when not started: " + this, runtimeException);
        } else {
            this.f = true;
            this.e = false;
            for (int iB = this.f817b.b() - 1; iB >= 0; iB--) {
                this.f817b.e(iB).b();
            }
        }
    }

    void e() {
        if (this.f) {
            if (f816a) {
                Log.v("LoaderManager", "Finished Retaining in " + this);
            }
            this.f = false;
            for (int iB = this.f817b.b() - 1; iB >= 0; iB--) {
                this.f817b.e(iB).c();
            }
        }
    }

    void f() {
        for (int iB = this.f817b.b() - 1; iB >= 0; iB--) {
            this.f817b.e(iB).k = true;
        }
    }

    void g() {
        for (int iB = this.f817b.b() - 1; iB >= 0; iB--) {
            this.f817b.e(iB).d();
        }
    }

    void h() {
        if (!this.f) {
            if (f816a) {
                Log.v("LoaderManager", "Destroying Active in " + this);
            }
            for (int iB = this.f817b.b() - 1; iB >= 0; iB--) {
                this.f817b.e(iB).g();
            }
            this.f817b.c();
        }
        if (f816a) {
            Log.v("LoaderManager", "Destroying Inactive in " + this);
        }
        for (int iB2 = this.f818c.b() - 1; iB2 >= 0; iB2--) {
            this.f818c.e(iB2).g();
        }
        this.f818c.c();
        this.h = null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        android.support.v4.g.d.a(this.h, sb);
        sb.append("}}");
        return sb.toString();
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (this.f817b.b() > 0) {
            printWriter.print(str);
            printWriter.println("Active Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < this.f817b.b(); i++) {
                a aVarE = this.f817b.e(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.f817b.d(i));
                printWriter.print(": ");
                printWriter.println(aVarE.toString());
                aVarE.a(str2, fileDescriptor, printWriter, strArr);
            }
        }
        if (this.f818c.b() > 0) {
            printWriter.print(str);
            printWriter.println("Inactive Loaders:");
            String str3 = str + "    ";
            for (int i2 = 0; i2 < this.f818c.b(); i2++) {
                a aVarE2 = this.f818c.e(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.f818c.d(i2));
                printWriter.print(": ");
                printWriter.println(aVarE2.toString());
                aVarE2.a(str3, fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override // android.support.v4.app.v
    public boolean a() {
        int iB = this.f817b.b();
        boolean z = false;
        for (int i = 0; i < iB; i++) {
            a aVarE = this.f817b.e(i);
            z |= aVarE.h && !aVarE.f;
        }
        return z;
    }
}
