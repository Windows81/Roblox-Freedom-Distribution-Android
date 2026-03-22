package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f5043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f5044b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f5045c = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.b.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            b.this.a((C0112b) message.obj);
            return true;
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private C0112b f5046d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private C0112b f5047e;

    interface a {
        void a();

        void a(int i);
    }

    static b a() {
        if (f5043a == null) {
            f5043a = new b();
        }
        return f5043a;
    }

    private b() {
    }

    public void a(a aVar, int i) {
        synchronized (this.f5044b) {
            if (f(aVar)) {
                a(this.f5046d, i);
            } else if (g(aVar)) {
                a(this.f5047e, i);
            }
        }
    }

    public void a(a aVar) {
        synchronized (this.f5044b) {
            if (f(aVar)) {
                this.f5046d = null;
                if (this.f5047e != null) {
                    b();
                }
            }
        }
    }

    public void b(a aVar) {
        synchronized (this.f5044b) {
            if (f(aVar)) {
                b(this.f5046d);
            }
        }
    }

    public void c(a aVar) {
        synchronized (this.f5044b) {
            if (f(aVar) && !this.f5046d.f5051c) {
                this.f5046d.f5051c = true;
                this.f5045c.removeCallbacksAndMessages(this.f5046d);
            }
        }
    }

    public void d(a aVar) {
        synchronized (this.f5044b) {
            if (f(aVar) && this.f5046d.f5051c) {
                this.f5046d.f5051c = false;
                b(this.f5046d);
            }
        }
    }

    public boolean e(a aVar) {
        boolean z;
        synchronized (this.f5044b) {
            z = f(aVar) || g(aVar);
        }
        return z;
    }

    /* JADX INFO: renamed from: com.google.android.material.snackbar.b$b, reason: collision with other inner class name */
    private static class C0112b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final WeakReference<a> f5049a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f5050b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f5051c;

        boolean a(a aVar) {
            return aVar != null && this.f5049a.get() == aVar;
        }
    }

    private void b() {
        C0112b c0112b = this.f5047e;
        if (c0112b != null) {
            this.f5046d = c0112b;
            this.f5047e = null;
            a aVar = c0112b.f5049a.get();
            if (aVar != null) {
                aVar.a();
            } else {
                this.f5046d = null;
            }
        }
    }

    private boolean a(C0112b c0112b, int i) {
        a aVar = c0112b.f5049a.get();
        if (aVar == null) {
            return false;
        }
        this.f5045c.removeCallbacksAndMessages(c0112b);
        aVar.a(i);
        return true;
    }

    private boolean f(a aVar) {
        C0112b c0112b = this.f5046d;
        return c0112b != null && c0112b.a(aVar);
    }

    private boolean g(a aVar) {
        C0112b c0112b = this.f5047e;
        return c0112b != null && c0112b.a(aVar);
    }

    private void b(C0112b c0112b) {
        if (c0112b.f5050b == -2) {
            return;
        }
        int i = 2750;
        if (c0112b.f5050b > 0) {
            i = c0112b.f5050b;
        } else if (c0112b.f5050b == -1) {
            i = 1500;
        }
        this.f5045c.removeCallbacksAndMessages(c0112b);
        Handler handler = this.f5045c;
        handler.sendMessageDelayed(Message.obtain(handler, 0, c0112b), i);
    }

    void a(C0112b c0112b) {
        synchronized (this.f5044b) {
            if (this.f5046d == c0112b || this.f5047e == c0112b) {
                a(c0112b, 2);
            }
        }
    }
}
