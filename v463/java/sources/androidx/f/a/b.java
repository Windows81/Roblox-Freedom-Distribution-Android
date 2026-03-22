package androidx.f.a;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.c.h;
import androidx.f.a.a;
import androidx.f.b.c;
import androidx.lifecycle.j;
import androidx.lifecycle.p;
import androidx.lifecycle.q;
import androidx.lifecycle.u;
import androidx.lifecycle.v;
import androidx.lifecycle.x;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class b extends androidx.f.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f1593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f1594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f1595c;

    public static class a<D> extends p<D> implements c.InterfaceC0042c<D> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f1596e;
        private final Bundle f;
        private final androidx.f.b.c<D> g;
        private j h;
        private C0040b<D> i;
        private androidx.f.b.c<D> j;

        a(int i, Bundle bundle, androidx.f.b.c<D> cVar, androidx.f.b.c<D> cVar2) {
            this.f1596e = i;
            this.f = bundle;
            this.g = cVar;
            this.j = cVar2;
            cVar.a(i, this);
        }

        androidx.f.b.c<D> f() {
            return this.g;
        }

        @Override // androidx.lifecycle.LiveData
        protected void o_() {
            if (b.f1593a) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            this.g.q();
        }

        @Override // androidx.lifecycle.LiveData
        protected void d() {
            if (b.f1593a) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.g.t();
        }

        androidx.f.b.c<D> a(j jVar, a.InterfaceC0039a<D> interfaceC0039a) {
            C0040b<D> c0040b = new C0040b<>(this.g, interfaceC0039a);
            a(jVar, c0040b);
            C0040b<D> c0040b2 = this.i;
            if (c0040b2 != null) {
                b((q) c0040b2);
            }
            this.h = jVar;
            this.i = c0040b;
            return this.g;
        }

        void g() {
            j jVar = this.h;
            C0040b<D> c0040b = this.i;
            if (jVar == null || c0040b == null) {
                return;
            }
            super.b((q) c0040b);
            a(jVar, c0040b);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void b(q<? super D> qVar) {
            super.b((q) qVar);
            this.h = null;
            this.i = null;
        }

        androidx.f.b.c<D> a(boolean z) {
            if (b.f1593a) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.g.r();
            this.g.u();
            C0040b<D> c0040b = this.i;
            if (c0040b != null) {
                b((q) c0040b);
                if (z) {
                    c0040b.b();
                }
            }
            this.g.a(this);
            if ((c0040b != null && !c0040b.a()) || z) {
                this.g.w();
                return this.j;
            }
            return this.g;
        }

        @Override // androidx.f.b.c.InterfaceC0042c
        public void a(androidx.f.b.c<D> cVar, D d2) {
            if (b.f1593a) {
                Log.v("LoaderManager", "onLoadComplete: " + this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                b(d2);
                return;
            }
            if (b.f1593a) {
                Log.w("LoaderManager", "onLoadComplete was incorrectly called on a background thread");
            }
            a(d2);
        }

        @Override // androidx.lifecycle.p, androidx.lifecycle.LiveData
        public void b(D d2) {
            super.b(d2);
            androidx.f.b.c<D> cVar = this.j;
            if (cVar != null) {
                cVar.w();
                this.j = null;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f1596e);
            sb.append(" : ");
            androidx.core.g.a.a(this.g, sb);
            sb.append("}}");
            return sb.toString();
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f1596e);
            printWriter.print(" mArgs=");
            printWriter.println(this.f);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.g);
            this.g.a(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.i != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.i);
                this.i.a(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(f().c(m_()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(e());
        }
    }

    /* JADX INFO: renamed from: androidx.f.a.b$b, reason: collision with other inner class name */
    static class C0040b<D> implements q<D> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.f.b.c<D> f1597a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a.InterfaceC0039a<D> f1598b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f1599c = false;

        C0040b(androidx.f.b.c<D> cVar, a.InterfaceC0039a<D> interfaceC0039a) {
            this.f1597a = cVar;
            this.f1598b = interfaceC0039a;
        }

        @Override // androidx.lifecycle.q
        public void a(D d2) {
            if (b.f1593a) {
                Log.v("LoaderManager", "  onLoadFinished in " + this.f1597a + ": " + this.f1597a.c(d2));
            }
            this.f1598b.a(this.f1597a, d2);
            this.f1599c = true;
        }

        boolean a() {
            return this.f1599c;
        }

        void b() {
            if (this.f1599c) {
                if (b.f1593a) {
                    Log.v("LoaderManager", "  Resetting: " + this.f1597a);
                }
                this.f1598b.a(this.f1597a);
            }
        }

        public String toString() {
            return this.f1598b.toString();
        }

        public void a(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.f1599c);
        }
    }

    static class c extends u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final v.b f1600a = new v.b() { // from class: androidx.f.a.b.c.1
            @Override // androidx.lifecycle.v.b
            public <T extends u> T a(Class<T> cls) {
                return new c();
            }
        };

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private h<a> f1601b = new h<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f1602c = false;

        c() {
        }

        static c a(x xVar) {
            return (c) new v(xVar, f1600a).a(c.class);
        }

        void b() {
            this.f1602c = true;
        }

        boolean c() {
            return this.f1602c;
        }

        void d() {
            this.f1602c = false;
        }

        void a(int i, a aVar) {
            this.f1601b.b(i, aVar);
        }

        <D> a<D> a(int i) {
            return this.f1601b.a(i);
        }

        void e() {
            int iB = this.f1601b.b();
            for (int i = 0; i < iB; i++) {
                this.f1601b.e(i).g();
            }
        }

        @Override // androidx.lifecycle.u
        protected void a() {
            super.a();
            int iB = this.f1601b.b();
            for (int i = 0; i < iB; i++) {
                this.f1601b.e(i).a(true);
            }
            this.f1601b.c();
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f1601b.b() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i = 0; i < this.f1601b.b(); i++) {
                    a aVarE = this.f1601b.e(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f1601b.d(i));
                    printWriter.print(": ");
                    printWriter.println(aVarE.toString());
                    aVarE.a(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
    }

    b(j jVar, x xVar) {
        this.f1594b = jVar;
        this.f1595c = c.a(xVar);
    }

    private <D> androidx.f.b.c<D> a(int i, Bundle bundle, a.InterfaceC0039a<D> interfaceC0039a, androidx.f.b.c<D> cVar) {
        try {
            this.f1595c.b();
            androidx.f.b.c<D> cVarA = interfaceC0039a.a(i, bundle);
            if (cVarA == null) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
            }
            if (cVarA.getClass().isMemberClass() && !Modifier.isStatic(cVarA.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + cVarA);
            }
            a aVar = new a(i, bundle, cVarA, cVar);
            if (f1593a) {
                Log.v("LoaderManager", "  Created new loader " + aVar);
            }
            this.f1595c.a(i, aVar);
            this.f1595c.d();
            return aVar.a(this.f1594b, interfaceC0039a);
        } catch (Throwable th) {
            this.f1595c.d();
            throw th;
        }
    }

    @Override // androidx.f.a.a
    public <D> androidx.f.b.c<D> a(int i, Bundle bundle, a.InterfaceC0039a<D> interfaceC0039a) {
        if (this.f1595c.c()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        a<D> aVarA = this.f1595c.a(i);
        if (f1593a) {
            Log.v("LoaderManager", "initLoader in " + this + ": args=" + bundle);
        }
        if (aVarA == null) {
            return a(i, bundle, interfaceC0039a, (androidx.f.b.c) null);
        }
        if (f1593a) {
            Log.v("LoaderManager", "  Re-using existing loader " + aVarA);
        }
        return aVarA.a(this.f1594b, interfaceC0039a);
    }

    @Override // androidx.f.a.a
    public <D> androidx.f.b.c<D> b(int i, Bundle bundle, a.InterfaceC0039a<D> interfaceC0039a) {
        if (this.f1595c.c()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("restartLoader must be called on the main thread");
        }
        if (f1593a) {
            Log.v("LoaderManager", "restartLoader in " + this + ": args=" + bundle);
        }
        a<D> aVarA = this.f1595c.a(i);
        return a(i, bundle, interfaceC0039a, aVarA != null ? aVarA.a(false) : null);
    }

    @Override // androidx.f.a.a
    public void a() {
        this.f1595c.e();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        androidx.core.g.a.a(this.f1594b, sb);
        sb.append("}}");
        return sb.toString();
    }

    @Override // androidx.f.a.a
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f1595c.a(str, fileDescriptor, printWriter, strArr);
    }
}
