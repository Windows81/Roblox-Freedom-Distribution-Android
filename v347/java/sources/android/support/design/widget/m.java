package android.support.design.widget;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static m f432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f433b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f434c = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: android.support.design.widget.m.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    m.this.a((b) message.obj);
                    return true;
                default:
                    return false;
            }
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f435d;
    private b e;

    interface a {
        void a();

        void a(int i);
    }

    static m a() {
        if (f432a == null) {
            f432a = new m();
        }
        return f432a;
    }

    private m() {
    }

    public void a(a aVar, int i) {
        synchronized (this.f433b) {
            if (f(aVar)) {
                a(this.f435d, i);
            } else if (g(aVar)) {
                a(this.e, i);
            }
        }
    }

    public void a(a aVar) {
        synchronized (this.f433b) {
            if (f(aVar)) {
                this.f435d = null;
                if (this.e != null) {
                    b();
                }
            }
        }
    }

    public void b(a aVar) {
        synchronized (this.f433b) {
            if (f(aVar)) {
                b(this.f435d);
            }
        }
    }

    public void c(a aVar) {
        synchronized (this.f433b) {
            if (f(aVar) && !this.f435d.f439c) {
                this.f435d.f439c = true;
                this.f434c.removeCallbacksAndMessages(this.f435d);
            }
        }
    }

    public void d(a aVar) {
        synchronized (this.f433b) {
            if (f(aVar) && this.f435d.f439c) {
                this.f435d.f439c = false;
                b(this.f435d);
            }
        }
    }

    public boolean e(a aVar) {
        boolean z;
        synchronized (this.f433b) {
            z = f(aVar) || g(aVar);
        }
        return z;
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final WeakReference<a> f437a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f438b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f439c;

        boolean a(a aVar) {
            return aVar != null && this.f437a.get() == aVar;
        }
    }

    private void b() {
        if (this.e != null) {
            this.f435d = this.e;
            this.e = null;
            a aVar = this.f435d.f437a.get();
            if (aVar != null) {
                aVar.a();
            } else {
                this.f435d = null;
            }
        }
    }

    private boolean a(b bVar, int i) {
        a aVar = bVar.f437a.get();
        if (aVar == null) {
            return false;
        }
        this.f434c.removeCallbacksAndMessages(bVar);
        aVar.a(i);
        return true;
    }

    private boolean f(a aVar) {
        return this.f435d != null && this.f435d.a(aVar);
    }

    private boolean g(a aVar) {
        return this.e != null && this.e.a(aVar);
    }

    private void b(b bVar) {
        if (bVar.f438b != -2) {
            int i = 2750;
            if (bVar.f438b > 0) {
                i = bVar.f438b;
            } else if (bVar.f438b == -1) {
                i = 1500;
            }
            this.f434c.removeCallbacksAndMessages(bVar);
            this.f434c.sendMessageDelayed(Message.obtain(this.f434c, 0, bVar), i);
        }
    }

    void a(b bVar) {
        synchronized (this.f433b) {
            if (this.f435d == bVar || this.e == bVar) {
                a(bVar, 2);
            }
        }
    }
}
