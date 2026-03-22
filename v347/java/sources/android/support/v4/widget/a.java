package android.support.v4.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.support.v4.view.s;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class a implements View.OnTouchListener {
    private static final int r = ViewConfiguration.getTapTimeout();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final View f1138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f1139c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f1140d;
    boolean e;
    private Runnable g;
    private int j;
    private int k;
    private boolean o;
    private boolean p;
    private boolean q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final C0031a f1137a = new C0031a();
    private final Interpolator f = new AccelerateInterpolator();
    private float[] h = {0.0f, 0.0f};
    private float[] i = {Float.MAX_VALUE, Float.MAX_VALUE};
    private float[] l = {0.0f, 0.0f};
    private float[] m = {0.0f, 0.0f};
    private float[] n = {Float.MAX_VALUE, Float.MAX_VALUE};

    public abstract void a(int i, int i2);

    public abstract boolean e(int i);

    public abstract boolean f(int i);

    public a(View view) {
        this.f1138b = view;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int i = (int) ((1575.0f * displayMetrics.density) + 0.5f);
        int i2 = (int) ((displayMetrics.density * 315.0f) + 0.5f);
        a(i, i);
        b(i2, i2);
        a(1);
        e(Float.MAX_VALUE, Float.MAX_VALUE);
        d(0.2f, 0.2f);
        c(1.0f, 1.0f);
        b(r);
        c(500);
        d(500);
    }

    public a a(boolean z) {
        if (this.p && !z) {
            d();
        }
        this.p = z;
        return this;
    }

    public a a(float f, float f2) {
        this.n[0] = f / 1000.0f;
        this.n[1] = f2 / 1000.0f;
        return this;
    }

    public a b(float f, float f2) {
        this.m[0] = f / 1000.0f;
        this.m[1] = f2 / 1000.0f;
        return this;
    }

    public a c(float f, float f2) {
        this.l[0] = f / 1000.0f;
        this.l[1] = f2 / 1000.0f;
        return this;
    }

    public a a(int i) {
        this.j = i;
        return this;
    }

    public a d(float f, float f2) {
        this.h[0] = f;
        this.h[1] = f2;
        return this;
    }

    public a e(float f, float f2) {
        this.i[0] = f;
        this.i[1] = f2;
        return this;
    }

    public a b(int i) {
        this.k = i;
        return this;
    }

    public a c(int i) {
        this.f1137a.a(i);
        return this;
    }

    public a d(int i) {
        this.f1137a.b(i);
        return this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.p) {
            return false;
        }
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.f1140d = true;
                this.o = false;
                this.f1137a.a(a(0, motionEvent.getX(), view.getWidth(), this.f1138b.getWidth()), a(1, motionEvent.getY(), view.getHeight(), this.f1138b.getHeight()));
                if (!this.e && a()) {
                    c();
                }
                break;
            case 1:
            case 3:
                d();
                break;
            case 2:
                this.f1137a.a(a(0, motionEvent.getX(), view.getWidth(), this.f1138b.getWidth()), a(1, motionEvent.getY(), view.getHeight(), this.f1138b.getHeight()));
                if (!this.e) {
                    c();
                }
                break;
        }
        return this.q && this.e;
    }

    boolean a() {
        C0031a c0031a = this.f1137a;
        int iF = c0031a.f();
        int iE = c0031a.e();
        return (iF != 0 && f(iF)) || (iE != 0 && e(iE));
    }

    private void c() {
        if (this.g == null) {
            this.g = new b();
        }
        this.e = true;
        this.f1139c = true;
        if (!this.o && this.k > 0) {
            s.a(this.f1138b, this.g, this.k);
        } else {
            this.g.run();
        }
        this.o = true;
    }

    private void d() {
        if (this.f1139c) {
            this.e = false;
        } else {
            this.f1137a.b();
        }
    }

    private float a(int i, float f, float f2, float f3) {
        float fA = a(this.h[i], f2, this.i[i], f);
        if (fA == 0.0f) {
            return 0.0f;
        }
        float f4 = this.l[i];
        float f5 = this.m[i];
        float f6 = this.n[i];
        float f7 = f4 * f3;
        if (fA > 0.0f) {
            return a(fA * f7, f5, f6);
        }
        return -a((-fA) * f7, f5, f6);
    }

    private float a(float f, float f2, float f3, float f4) {
        float interpolation;
        float fA = a(f * f2, 0.0f, f3);
        float f5 = f(f2 - f4, fA) - f(f4, fA);
        if (f5 < 0.0f) {
            interpolation = -this.f.getInterpolation(-f5);
        } else {
            if (f5 <= 0.0f) {
                return 0.0f;
            }
            interpolation = this.f.getInterpolation(f5);
        }
        return a(interpolation, -1.0f, 1.0f);
    }

    private float f(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        switch (this.j) {
            case 0:
            case 1:
                if (f < f2) {
                    if (f >= 0.0f) {
                        break;
                    } else if (this.e && this.j == 1) {
                        break;
                    }
                }
                break;
            case 2:
                if (f < 0.0f) {
                }
                break;
        }
        return 0.0f;
    }

    static int a(int i, int i2, int i3) {
        if (i > i3) {
            return i3;
        }
        return i < i2 ? i2 : i;
    }

    static float a(float f, float f2, float f3) {
        if (f > f3) {
            return f3;
        }
        return f < f2 ? f2 : f;
    }

    void b() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f1138b.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.e) {
                if (a.this.f1139c) {
                    a.this.f1139c = false;
                    a.this.f1137a.a();
                }
                C0031a c0031a = a.this.f1137a;
                if (c0031a.c() || !a.this.a()) {
                    a.this.e = false;
                    return;
                }
                if (a.this.f1140d) {
                    a.this.f1140d = false;
                    a.this.b();
                }
                c0031a.d();
                a.this.a(c0031a.g(), c0031a.h());
                s.a(a.this.f1138b, this);
            }
        }
    }

    /* JADX INFO: renamed from: android.support.v4.widget.a$a, reason: collision with other inner class name */
    private static class C0031a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f1141a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1142b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f1143c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f1144d;
        private float j;
        private int k;
        private long e = Long.MIN_VALUE;
        private long i = -1;
        private long f = 0;
        private int g = 0;
        private int h = 0;

        C0031a() {
        }

        public void a(int i) {
            this.f1141a = i;
        }

        public void b(int i) {
            this.f1142b = i;
        }

        public void a() {
            this.e = AnimationUtils.currentAnimationTimeMillis();
            this.i = -1L;
            this.f = this.e;
            this.j = 0.5f;
            this.g = 0;
            this.h = 0;
        }

        public void b() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.k = a.a((int) (jCurrentAnimationTimeMillis - this.e), 0, this.f1142b);
            this.j = a(jCurrentAnimationTimeMillis);
            this.i = jCurrentAnimationTimeMillis;
        }

        public boolean c() {
            return this.i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.i + ((long) this.k);
        }

        private float a(long j) {
            if (j < this.e) {
                return 0.0f;
            }
            if (this.i < 0 || j < this.i) {
                return a.a((j - this.e) / this.f1141a, 0.0f, 1.0f) * 0.5f;
            }
            return (a.a((j - this.i) / this.k, 0.0f, 1.0f) * this.j) + (1.0f - this.j);
        }

        private float a(float f) {
            return ((-4.0f) * f * f) + (4.0f * f);
        }

        public void d() {
            if (this.f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float fA = a(a(jCurrentAnimationTimeMillis));
            long j = jCurrentAnimationTimeMillis - this.f;
            this.f = jCurrentAnimationTimeMillis;
            this.g = (int) (j * fA * this.f1143c);
            this.h = (int) (j * fA * this.f1144d);
        }

        public void a(float f, float f2) {
            this.f1143c = f;
            this.f1144d = f2;
        }

        public int e() {
            return (int) (this.f1143c / Math.abs(this.f1143c));
        }

        public int f() {
            return (int) (this.f1144d / Math.abs(this.f1144d));
        }

        public int g() {
            return this.g;
        }

        public int h() {
            return this.h;
        }
    }
}
