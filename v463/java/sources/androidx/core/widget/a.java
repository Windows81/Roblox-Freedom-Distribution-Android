package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.core.h.r;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a implements View.OnTouchListener {
    private static final int r = ViewConfiguration.getTapTimeout();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final View f1522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f1523c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f1524d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f1525e;
    private Runnable g;
    private int j;
    private int k;
    private boolean o;
    private boolean p;
    private boolean q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final C0035a f1521a = new C0035a();
    private final Interpolator f = new AccelerateInterpolator();
    private float[] h = {0.0f, 0.0f};
    private float[] i = {Float.MAX_VALUE, Float.MAX_VALUE};
    private float[] l = {0.0f, 0.0f};
    private float[] m = {0.0f, 0.0f};
    private float[] n = {Float.MAX_VALUE, Float.MAX_VALUE};

    static float a(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    static int a(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    public abstract void a(int i, int i2);

    public abstract boolean e(int i);

    public abstract boolean f(int i);

    public a(View view) {
        this.f1522b = view;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int i = (int) ((displayMetrics.density * 1575.0f) + 0.5f);
        int i2 = (int) ((displayMetrics.density * 315.0f) + 0.5f);
        float f = i;
        a(f, f);
        float f2 = i2;
        b(f2, f2);
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
        float[] fArr = this.n;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    public a b(float f, float f2) {
        float[] fArr = this.m;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    public a c(float f, float f2) {
        float[] fArr = this.l;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    public a a(int i) {
        this.j = i;
        return this;
    }

    public a d(float f, float f2) {
        float[] fArr = this.h;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    public a e(float f, float f2) {
        float[] fArr = this.i;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    public a b(int i) {
        this.k = i;
        return this;
    }

    public a c(int i) {
        this.f1521a.a(i);
        return this;
    }

    public a d(int i) {
        this.f1521a.b(i);
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.p
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r7.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r6 = 3
            if (r0 == r6) goto L16
            goto L58
        L16:
            r5.d()
            goto L58
        L1a:
            r5.f1524d = r2
            r5.o = r1
        L1e:
            float r0 = r7.getX()
            int r3 = r6.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r5.f1522b
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r5.a(r1, r0, r3, r4)
            float r7 = r7.getY()
            int r6 = r6.getHeight()
            float r6 = (float) r6
            android.view.View r3 = r5.f1522b
            int r3 = r3.getHeight()
            float r3 = (float) r3
            float r6 = r5.a(r2, r7, r6, r3)
            androidx.core.widget.a$a r7 = r5.f1521a
            r7.a(r0, r6)
            boolean r6 = r5.f1525e
            if (r6 != 0) goto L58
            boolean r6 = r5.a()
            if (r6 == 0) goto L58
            r5.c()
        L58:
            boolean r6 = r5.q
            if (r6 == 0) goto L61
            boolean r6 = r5.f1525e
            if (r6 == 0) goto L61
            r1 = 1
        L61:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    boolean a() {
        C0035a c0035a = this.f1521a;
        int iF = c0035a.f();
        int iE = c0035a.e();
        return (iF != 0 && f(iF)) || (iE != 0 && e(iE));
    }

    private void c() {
        int i;
        if (this.g == null) {
            this.g = new b();
        }
        this.f1525e = true;
        this.f1523c = true;
        if (!this.o && (i = this.k) > 0) {
            r.a(this.f1522b, this.g, i);
        } else {
            this.g.run();
        }
        this.o = true;
    }

    private void d() {
        if (this.f1523c) {
            this.f1525e = false;
        } else {
            this.f1521a.b();
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
        int i = this.j;
        if (i == 0 || i == 1) {
            if (f < f2) {
                if (f >= 0.0f) {
                    return 1.0f - (f / f2);
                }
                if (this.f1525e && this.j == 1) {
                    return 1.0f;
                }
            }
        } else if (i == 2 && f < 0.0f) {
            return f / (-f2);
        }
        return 0.0f;
    }

    void b() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f1522b.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f1525e) {
                if (a.this.f1523c) {
                    a.this.f1523c = false;
                    a.this.f1521a.a();
                }
                C0035a c0035a = a.this.f1521a;
                if (c0035a.c() || !a.this.a()) {
                    a.this.f1525e = false;
                    return;
                }
                if (a.this.f1524d) {
                    a.this.f1524d = false;
                    a.this.b();
                }
                c0035a.d();
                a.this.a(c0035a.g(), c0035a.h());
                r.a(a.this.f1522b, this);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.core.widget.a$a, reason: collision with other inner class name */
    private static class C0035a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f1526a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1527b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f1528c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f1529d;
        private float j;
        private int k;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f1530e = Long.MIN_VALUE;
        private long i = -1;
        private long f = 0;
        private int g = 0;
        private int h = 0;

        private float a(float f) {
            return ((-4.0f) * f * f) + (f * 4.0f);
        }

        C0035a() {
        }

        public void a(int i) {
            this.f1526a = i;
        }

        public void b(int i) {
            this.f1527b = i;
        }

        public void a() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f1530e = jCurrentAnimationTimeMillis;
            this.i = -1L;
            this.f = jCurrentAnimationTimeMillis;
            this.j = 0.5f;
            this.g = 0;
            this.h = 0;
        }

        public void b() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.k = a.a((int) (jCurrentAnimationTimeMillis - this.f1530e), 0, this.f1527b);
            this.j = a(jCurrentAnimationTimeMillis);
            this.i = jCurrentAnimationTimeMillis;
        }

        public boolean c() {
            return this.i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.i + ((long) this.k);
        }

        private float a(long j) {
            if (j < this.f1530e) {
                return 0.0f;
            }
            long j2 = this.i;
            if (j2 < 0 || j < j2) {
                return a.a((j - this.f1530e) / this.f1526a, 0.0f, 1.0f) * 0.5f;
            }
            long j3 = j - j2;
            float f = this.j;
            return (1.0f - f) + (f * a.a(j3 / this.k, 0.0f, 1.0f));
        }

        public void d() {
            if (this.f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float fA = a(a(jCurrentAnimationTimeMillis));
            long j = jCurrentAnimationTimeMillis - this.f;
            this.f = jCurrentAnimationTimeMillis;
            float f = j * fA;
            this.g = (int) (this.f1528c * f);
            this.h = (int) (f * this.f1529d);
        }

        public void a(float f, float f2) {
            this.f1528c = f;
            this.f1529d = f2;
        }

        public int e() {
            float f = this.f1528c;
            return (int) (f / Math.abs(f));
        }

        public int f() {
            float f = this.f1529d;
            return (int) (f / Math.abs(f));
        }

        public int g() {
            return this.g;
        }

        public int h() {
            return this.h;
        }
    }
}
