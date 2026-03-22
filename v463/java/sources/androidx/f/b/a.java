package androidx.f.b;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import androidx.core.g.f;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a<D> extends c<D> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    volatile a<D>.RunnableC0041a f1603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    volatile a<D>.RunnableC0041a f1604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f1605c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f1606d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Handler f1607e;
    private final Executor f;

    public void a(D d2) {
    }

    public abstract D d();

    public void f() {
    }

    /* JADX INFO: renamed from: androidx.f.b.a$a, reason: collision with other inner class name */
    final class RunnableC0041a extends d<Void, Void, D> implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f1608a;
        private final CountDownLatch f = new CountDownLatch(1);

        RunnableC0041a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.f.b.d
        public D a(Void... voidArr) {
            try {
                return (D) a.this.e();
            } catch (androidx.core.d.c e2) {
                if (c()) {
                    return null;
                }
                throw e2;
            }
        }

        @Override // androidx.f.b.d
        protected void a(D d2) {
            try {
                a.this.b(this, d2);
            } finally {
                this.f.countDown();
            }
        }

        @Override // androidx.f.b.d
        protected void b(D d2) {
            try {
                a.this.a(this, d2);
            } finally {
                this.f.countDown();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1608a = false;
            a.this.c();
        }
    }

    public a(Context context) {
        this(context, d.f1613c);
    }

    private a(Context context, Executor executor) {
        super(context);
        this.f1606d = -10000L;
        this.f = executor;
    }

    @Override // androidx.f.b.c
    protected void a() {
        super.a();
        r();
        this.f1603a = new RunnableC0041a();
        c();
    }

    @Override // androidx.f.b.c
    protected boolean b() {
        if (this.f1603a == null) {
            return false;
        }
        if (!this.r) {
            this.u = true;
        }
        if (this.f1604b != null) {
            if (this.f1603a.f1608a) {
                this.f1603a.f1608a = false;
                this.f1607e.removeCallbacks(this.f1603a);
            }
            this.f1603a = null;
            return false;
        }
        if (this.f1603a.f1608a) {
            this.f1603a.f1608a = false;
            this.f1607e.removeCallbacks(this.f1603a);
            this.f1603a = null;
            return false;
        }
        boolean zA = this.f1603a.a(false);
        if (zA) {
            this.f1604b = this.f1603a;
            f();
        }
        this.f1603a = null;
        return zA;
    }

    void c() {
        if (this.f1604b != null || this.f1603a == null) {
            return;
        }
        if (this.f1603a.f1608a) {
            this.f1603a.f1608a = false;
            this.f1607e.removeCallbacks(this.f1603a);
        }
        if (this.f1605c > 0 && SystemClock.uptimeMillis() < this.f1606d + this.f1605c) {
            this.f1603a.f1608a = true;
            this.f1607e.postAtTime(this.f1603a, this.f1606d + this.f1605c);
        } else {
            this.f1603a.a(this.f, (Void[]) null);
        }
    }

    void a(a<D>.RunnableC0041a runnableC0041a, D d2) {
        a(d2);
        if (this.f1604b == runnableC0041a) {
            z();
            this.f1606d = SystemClock.uptimeMillis();
            this.f1604b = null;
            l();
            c();
        }
    }

    void b(a<D>.RunnableC0041a runnableC0041a, D d2) {
        if (this.f1603a != runnableC0041a) {
            a(runnableC0041a, d2);
            return;
        }
        if (o()) {
            a(d2);
            return;
        }
        y();
        this.f1606d = SystemClock.uptimeMillis();
        this.f1603a = null;
        b(d2);
    }

    protected D e() {
        return d();
    }

    public boolean g() {
        return this.f1604b != null;
    }

    @Override // androidx.f.b.c
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.a(str, fileDescriptor, printWriter, strArr);
        if (this.f1603a != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.f1603a);
            printWriter.print(" waiting=");
            printWriter.println(this.f1603a.f1608a);
        }
        if (this.f1604b != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.f1604b);
            printWriter.print(" waiting=");
            printWriter.println(this.f1604b.f1608a);
        }
        if (this.f1605c != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            f.a(this.f1605c, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            f.a(this.f1606d, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }
}
