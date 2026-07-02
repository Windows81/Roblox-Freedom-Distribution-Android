package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public abstract class k<E> extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Context f714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f715c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final m f716d;
    private final Handler e;
    private android.support.v4.g.m<String, v> f;
    private boolean g;
    private w h;
    private boolean i;
    private boolean j;

    public abstract E g();

    k(h hVar) {
        this(hVar, hVar, hVar.f705c, 0);
    }

    k(Activity activity, Context context, Handler handler, int i) {
        this.f716d = new m();
        this.f713a = activity;
        this.f714b = context;
        this.e = handler;
        this.f715c = i;
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public boolean a(Fragment fragment) {
        return true;
    }

    public LayoutInflater b() {
        return LayoutInflater.from(this.f714b);
    }

    public void d() {
    }

    public void a(Fragment fragment, Intent intent, int i, Bundle bundle) {
        if (i != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        this.f714b.startActivity(intent);
    }

    public void a(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (i != -1) {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        a.a(this.f713a, intentSender, i, intent, i2, i3, i4, bundle);
    }

    public void a(Fragment fragment, String[] strArr, int i) {
    }

    public boolean a(String str) {
        return false;
    }

    public boolean e() {
        return true;
    }

    public int f() {
        return this.f715c;
    }

    @Override // android.support.v4.app.i
    public View a(int i) {
        return null;
    }

    @Override // android.support.v4.app.i
    public boolean a() {
        return true;
    }

    Activity h() {
        return this.f713a;
    }

    Context i() {
        return this.f714b;
    }

    Handler j() {
        return this.e;
    }

    m k() {
        return this.f716d;
    }

    void b(String str) {
        w wVar;
        if (this.f != null && (wVar = (w) this.f.get(str)) != null && !wVar.f) {
            wVar.h();
            this.f.remove(str);
        }
    }

    void b(Fragment fragment) {
    }

    boolean l() {
        return this.g;
    }

    void m() {
        if (!this.j) {
            this.j = true;
            if (this.h != null) {
                this.h.b();
            } else if (!this.i) {
                this.h = a("(root)", this.j, false);
                if (this.h != null && !this.h.e) {
                    this.h.b();
                }
            }
            this.i = true;
        }
    }

    void a(boolean z) {
        this.g = z;
        if (this.h != null && this.j) {
            this.j = false;
            if (z) {
                this.h.d();
            } else {
                this.h.c();
            }
        }
    }

    void n() {
        if (this.h != null) {
            this.h.h();
        }
    }

    void o() {
        if (this.f != null) {
            int size = this.f.size();
            w[] wVarArr = new w[size];
            for (int i = size - 1; i >= 0; i--) {
                wVarArr[i] = (w) this.f.c(i);
            }
            for (int i2 = 0; i2 < size; i2++) {
                w wVar = wVarArr[i2];
                wVar.e();
                wVar.g();
            }
        }
    }

    w a(String str, boolean z, boolean z2) {
        if (this.f == null) {
            this.f = new android.support.v4.g.m<>();
        }
        w wVar = (w) this.f.get(str);
        if (wVar == null && z2) {
            w wVar2 = new w(str, this, z);
            this.f.put(str, wVar2);
            return wVar2;
        }
        if (z && wVar != null && !wVar.e) {
            wVar.b();
            return wVar;
        }
        return wVar;
    }

    android.support.v4.g.m<String, v> p() {
        boolean z;
        if (this.f != null) {
            int size = this.f.size();
            w[] wVarArr = new w[size];
            for (int i = size - 1; i >= 0; i--) {
                wVarArr[i] = (w) this.f.c(i);
            }
            boolean zL = l();
            z = false;
            for (int i2 = 0; i2 < size; i2++) {
                w wVar = wVarArr[i2];
                if (!wVar.f && zL) {
                    if (!wVar.e) {
                        wVar.b();
                    }
                    wVar.d();
                }
                if (wVar.f) {
                    z = true;
                } else {
                    wVar.h();
                    this.f.remove(wVar.f819d);
                }
            }
        } else {
            z = false;
        }
        if (z) {
            return this.f;
        }
        return null;
    }

    void a(android.support.v4.g.m<String, v> mVar) {
        if (mVar != null) {
            int size = mVar.size();
            for (int i = 0; i < size; i++) {
                ((w) mVar.c(i)).a(this);
            }
        }
        this.f = mVar;
    }

    void b(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mLoadersStarted=");
        printWriter.println(this.j);
        if (this.h != null) {
            printWriter.print(str);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.h)));
            printWriter.println(":");
            this.h.a(str + "  ", fileDescriptor, printWriter, strArr);
        }
    }
}
