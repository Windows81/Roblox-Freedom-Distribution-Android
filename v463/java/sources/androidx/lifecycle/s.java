package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.g;
import androidx.lifecycle.t;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class s implements j {
    private static final s i = new s();
    private Handler f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2141b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2142c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2143d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2144e = true;
    private final k g = new k(this);
    private Runnable h = new Runnable() { // from class: androidx.lifecycle.s.1
        @Override // java.lang.Runnable
        public void run() {
            s.this.e();
            s.this.f();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    t.a f2140a = new t.a() { // from class: androidx.lifecycle.s.2
        @Override // androidx.lifecycle.t.a
        public void a() {
        }

        @Override // androidx.lifecycle.t.a
        public void b() {
            s.this.a();
        }

        @Override // androidx.lifecycle.t.a
        public void c() {
            s.this.b();
        }
    };

    static void a(Context context) {
        i.b(context);
    }

    void a() {
        int i2 = this.f2141b + 1;
        this.f2141b = i2;
        if (i2 == 1 && this.f2144e) {
            this.g.a(g.a.ON_START);
            this.f2144e = false;
        }
    }

    void b() {
        int i2 = this.f2142c + 1;
        this.f2142c = i2;
        if (i2 == 1) {
            if (this.f2143d) {
                this.g.a(g.a.ON_RESUME);
                this.f2143d = false;
            } else {
                this.f.removeCallbacks(this.h);
            }
        }
    }

    void c() {
        int i2 = this.f2142c - 1;
        this.f2142c = i2;
        if (i2 == 0) {
            this.f.postDelayed(this.h, 700L);
        }
    }

    void d() {
        this.f2141b--;
        f();
    }

    void e() {
        if (this.f2142c == 0) {
            this.f2143d = true;
            this.g.a(g.a.ON_PAUSE);
        }
    }

    void f() {
        if (this.f2141b == 0 && this.f2143d) {
            this.g.a(g.a.ON_STOP);
            this.f2144e = true;
        }
    }

    private s() {
    }

    void b(Context context) {
        this.f = new Handler();
        this.g.a(g.a.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new c() { // from class: androidx.lifecycle.s.3
            @Override // androidx.lifecycle.c, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                t.b(activity).a(s.this.f2140a);
            }

            @Override // androidx.lifecycle.c, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                s.this.c();
            }

            @Override // androidx.lifecycle.c, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                s.this.d();
            }
        });
    }

    @Override // androidx.lifecycle.j
    public g g() {
        return this.g;
    }
}
