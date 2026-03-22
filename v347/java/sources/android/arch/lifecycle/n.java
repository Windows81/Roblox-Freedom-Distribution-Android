package android.arch.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.arch.lifecycle.d;
import android.arch.lifecycle.o;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class n implements g {
    private static final n i = new n();
    private Handler e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f153a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f154b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f155c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f156d = true;
    private final h f = new h(this);
    private Runnable g = new Runnable() { // from class: android.arch.lifecycle.n.1
        @Override // java.lang.Runnable
        public void run() {
            n.this.e();
            n.this.f();
        }
    };
    private o.a h = new o.a() { // from class: android.arch.lifecycle.n.2
        @Override // android.arch.lifecycle.o.a
        public void a() {
        }

        @Override // android.arch.lifecycle.o.a
        public void b() {
            n.this.a();
        }

        @Override // android.arch.lifecycle.o.a
        public void c() {
            n.this.b();
        }
    };

    static void a(Context context) {
        i.b(context);
    }

    void a() {
        this.f153a++;
        if (this.f153a == 1 && this.f156d) {
            this.f.a(d.a.ON_START);
            this.f156d = false;
        }
    }

    void b() {
        this.f154b++;
        if (this.f154b == 1) {
            if (this.f155c) {
                this.f.a(d.a.ON_RESUME);
                this.f155c = false;
            } else {
                this.e.removeCallbacks(this.g);
            }
        }
    }

    void c() {
        this.f154b--;
        if (this.f154b == 0) {
            this.e.postDelayed(this.g, 700L);
        }
    }

    void d() {
        this.f153a--;
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.f154b == 0) {
            this.f155c = true;
            this.f.a(d.a.ON_PAUSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.f153a == 0 && this.f155c) {
            this.f.a(d.a.ON_STOP);
            this.f156d = true;
        }
    }

    private n() {
    }

    void b(Context context) {
        this.e = new Handler();
        this.f.a(d.a.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new b() { // from class: android.arch.lifecycle.n.3
            @Override // android.arch.lifecycle.b, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                o.b(activity).a(n.this.h);
            }

            @Override // android.arch.lifecycle.b, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                n.this.c();
            }

            @Override // android.arch.lifecycle.b, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                n.this.d();
            }
        });
    }

    @Override // android.arch.lifecycle.g
    public d getLifecycle() {
        return this.f;
    }
}
