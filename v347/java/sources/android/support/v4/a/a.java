package android.support.v4.a;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.g.o;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class a<D> extends e<D> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    volatile a<D>.RunnableC0012a f575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    volatile a<D>.RunnableC0012a f576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f577c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f578d;
    Handler e;
    private final Executor f;

    public abstract D d();

    /* JADX INFO: renamed from: android.support.v4.a.a$a, reason: collision with other inner class name */
    final class RunnableC0012a extends g<Void, Void, D> implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f579a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final CountDownLatch f581d = new CountDownLatch(1);

        RunnableC0012a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.a.g
        public D a(Void... voidArr) {
            try {
                return (D) a.this.e();
            } catch (android.support.v4.os.d e) {
                if (!c()) {
                    throw e;
                }
                return null;
            }
        }

        @Override // android.support.v4.a.g
        protected void a(D d2) {
            try {
                a.this.b(this, d2);
            } finally {
                this.f581d.countDown();
            }
        }

        @Override // android.support.v4.a.g
        protected void b(D d2) {
            try {
                a.this.a(this, d2);
            } finally {
                this.f581d.countDown();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f579a = false;
            a.this.c();
        }
    }

    public a(Context context) {
        this(context, g.f610c);
    }

    private a(Context context, Executor executor) {
        super(context);
        this.f578d = -10000L;
        this.f = executor;
    }

    @Override // android.support.v4.a.e
    protected void a() {
        super.a();
        r();
        this.f575a = new RunnableC0012a();
        c();
    }

    @Override // android.support.v4.a.e
    protected boolean b() {
        boolean zA = false;
        if (this.f575a != null) {
            if (!this.r) {
                this.u = true;
            }
            if (this.f576b != null) {
                if (this.f575a.f579a) {
                    this.f575a.f579a = false;
                    this.e.removeCallbacks(this.f575a);
                }
                this.f575a = null;
            } else if (this.f575a.f579a) {
                this.f575a.f579a = false;
                this.e.removeCallbacks(this.f575a);
                this.f575a = null;
            } else {
                zA = this.f575a.a(false);
                if (zA) {
                    this.f576b = this.f575a;
                    f();
                }
                this.f575a = null;
            }
        }
        return zA;
    }

    public void a(D d2) {
    }

    void c() {
        if (this.f576b == null && this.f575a != null) {
            if (this.f575a.f579a) {
                this.f575a.f579a = false;
                this.e.removeCallbacks(this.f575a);
            }
            if (this.f577c > 0 && SystemClock.uptimeMillis() < this.f578d + this.f577c) {
                this.f575a.f579a = true;
                this.e.postAtTime(this.f575a, this.f578d + this.f577c);
            } else {
                this.f575a.a(this.f, (Void[]) null);
            }
        }
    }

    void a(a<D>.RunnableC0012a runnableC0012a, D d2) {
        a(d2);
        if (this.f576b == runnableC0012a) {
            z();
            this.f578d = SystemClock.uptimeMillis();
            this.f576b = null;
            l();
            c();
        }
    }

    void b(a<D>.RunnableC0012a runnableC0012a, D d2) {
        if (this.f575a != runnableC0012a) {
            a(runnableC0012a, d2);
            return;
        }
        if (o()) {
            a(d2);
            return;
        }
        y();
        this.f578d = SystemClock.uptimeMillis();
        this.f575a = null;
        b(d2);
    }

    protected D e() {
        return d();
    }

    public void f() {
    }

    public boolean g() {
        return this.f576b != null;
    }

    @Override // android.support.v4.a.e
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.a(str, fileDescriptor, printWriter, strArr);
        if (this.f575a != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.f575a);
            printWriter.print(" waiting=");
            printWriter.println(this.f575a.f579a);
        }
        if (this.f576b != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.f576b);
            printWriter.print(" waiting=");
            printWriter.println(this.f576b.f579a);
        }
        if (this.f577c != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            o.a(this.f577c, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            o.a(this.f578d, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }
}
