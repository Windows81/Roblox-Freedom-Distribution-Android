package androidx.f.b;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c<D> {
    int n;
    InterfaceC0042c<D> o;
    b<D> p;
    Context q;
    boolean r = false;
    boolean s = false;
    boolean t = true;
    boolean u = false;
    boolean v = false;

    public interface b<D> {
        void a(c<D> cVar);
    }

    /* JADX INFO: renamed from: androidx.f.b.c$c, reason: collision with other inner class name */
    public interface InterfaceC0042c<D> {
        void a(c<D> cVar, D d2);
    }

    protected void a() {
    }

    protected boolean b() {
        return false;
    }

    protected void i() {
    }

    protected void j() {
    }

    protected void k() {
    }

    protected void v() {
    }

    public final class a extends ContentObserver {
        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        public a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            c.this.A();
        }
    }

    public c(Context context) {
        this.q = context.getApplicationContext();
    }

    public void b(D d2) {
        InterfaceC0042c<D> interfaceC0042c = this.o;
        if (interfaceC0042c != null) {
            interfaceC0042c.a(this, d2);
        }
    }

    public void l() {
        b<D> bVar = this.p;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    public Context m() {
        return this.q;
    }

    public void a(int i, InterfaceC0042c<D> interfaceC0042c) {
        if (this.o != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.o = interfaceC0042c;
        this.n = i;
    }

    public void a(InterfaceC0042c<D> interfaceC0042c) {
        InterfaceC0042c<D> interfaceC0042c2 = this.o;
        if (interfaceC0042c2 == null) {
            throw new IllegalStateException("No listener register");
        }
        if (interfaceC0042c2 != interfaceC0042c) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.o = null;
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

    public boolean r() {
        return b();
    }

    public void s() {
        a();
    }

    public void t() {
        this.r = false;
        j();
    }

    public void u() {
        this.s = true;
        v();
    }

    public void w() {
        k();
        this.t = true;
        this.r = false;
        this.s = false;
        this.u = false;
        this.v = false;
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
        androidx.core.g.a.a(d2, sb);
        sb.append("}");
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        androidx.core.g.a.a(this, sb);
        sb.append(" id=");
        sb.append(this.n);
        sb.append("}");
        return sb.toString();
    }

    @Deprecated
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
