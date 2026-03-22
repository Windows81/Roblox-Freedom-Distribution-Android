package android.support.v4.a;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e<D> {
    int n;
    c<D> o;
    b<D> p;
    Context q;
    boolean r = false;
    boolean s = false;
    boolean t = true;
    boolean u = false;
    boolean v = false;

    public interface b<D> {
        void a(e<D> eVar);
    }

    public interface c<D> {
        void a(e<D> eVar, D d2);
    }

    public final class a extends ContentObserver {
        public a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            e.this.A();
        }
    }

    public e(Context context) {
        this.q = context.getApplicationContext();
    }

    public void b(D d2) {
        if (this.o != null) {
            this.o.a(this, d2);
        }
    }

    public void l() {
        if (this.p != null) {
            this.p.a(this);
        }
    }

    public Context m() {
        return this.q;
    }

    public void a(int i, c<D> cVar) {
        if (this.o != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.o = cVar;
        this.n = i;
    }

    public void a(c<D> cVar) {
        if (this.o == null) {
            throw new IllegalStateException("No listener register");
        }
        if (this.o != cVar) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.o = null;
    }

    public void a(b<D> bVar) {
        if (this.p != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.p = bVar;
    }

    public void b(b<D> bVar) {
        if (this.p == null) {
            throw new IllegalStateException("No listener register");
        }
        if (this.p != bVar) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.p = null;
    }

    public boolean n() {
        return this.r;
    }

    public boolean o() {
        return this.s;
    }

    public boolean p() {
        return this.t;
    }

    public final void q() {
        this.r = true;
        this.t = false;
        this.s = false;
        i();
    }

    protected void i() {
    }

    public boolean r() {
        return b();
    }

    protected boolean b() {
        return false;
    }

    public void s() {
        a();
    }

    protected void a() {
    }

    public void t() {
        this.r = false;
        j();
    }

    protected void j() {
    }

    public void u() {
        this.s = true;
        v();
    }

    protected void v() {
    }

    public void w() {
        k();
        this.t = true;
        this.r = false;
        this.s = false;
        this.u = false;
        this.v = false;
    }

    protected void k() {
    }

    public boolean x() {
        boolean z = this.u;
        this.u = false;
        this.v |= z;
        return z;
    }

    public void y() {
        this.v = false;
    }

    public void z() {
        if (this.v) {
            A();
        }
    }

    public void A() {
        if (this.r) {
            s();
        } else {
            this.u = true;
        }
    }

    public String c(D d2) {
        StringBuilder sb = new StringBuilder(64);
        android.support.v4.g.d.a(d2, sb);
        sb.append("}");
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        android.support.v4.g.d.a(this, sb);
        sb.append(" id=");
        sb.append(this.n);
        sb.append("}");
        return sb.toString();
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.n);
        printWriter.print(" mListener=");
        printWriter.println(this.o);
        if (this.r || this.u || this.v) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.r);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.u);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.v);
        }
        if (this.s || this.t) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.s);
            printWriter.print(" mReset=");
            printWriter.println(this.t);
        }
    }
}
