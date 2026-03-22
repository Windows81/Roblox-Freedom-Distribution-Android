package androidx.j.a;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.core.g.e;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends Drawable implements Animatable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Interpolator f1893c = new LinearInterpolator();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Interpolator f1894d = new androidx.e.a.a.b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f1895e = {-16777216};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float f1896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f1897b;
    private final a f;
    private float g;
    private Resources h;
    private Animator i;

    private int a(float f, int i, int i2) {
        return ((((i >> 24) & 255) + ((int) ((((i2 >> 24) & 255) - r0) * f))) << 24) | ((((i >> 16) & 255) + ((int) ((((i2 >> 16) & 255) - r1) * f))) << 16) | ((((i >> 8) & 255) + ((int) ((((i2 >> 8) & 255) - r2) * f))) << 8) | ((i & 255) + ((int) (f * ((i2 & 255) - r8))));
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public b(Context context) {
        this.h = ((Context) e.a(context)).getResources();
        a aVar = new a();
        this.f = aVar;
        aVar.a(f1895e);
        a(2.5f);
        a();
    }

    private void a(float f, float f2, float f3, float f4) {
        a aVar = this.f;
        float f5 = this.h.getDisplayMetrics().density;
        aVar.a(f2 * f5);
        aVar.e(f * f5);
        aVar.b(0);
        aVar.a(f3 * f5, f4 * f5);
    }

    public void a(int i) {
        if (i == 0) {
            a(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            a(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    public void a(float f) {
        this.f.a(f);
        invalidateSelf();
    }

    public void a(boolean z) {
        this.f.a(z);
        invalidateSelf();
    }

    public void b(float f) {
        this.f.f(f);
        invalidateSelf();
    }

    public void a(float f, float f2) {
        this.f.b(f);
        this.f.c(f2);
        invalidateSelf();
    }

    public void c(float f) {
        this.f.d(f);
        invalidateSelf();
    }

    public void a(int... iArr) {
        this.f.a(iArr);
        this.f.b(0);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.g, bounds.exactCenterX(), bounds.exactCenterY());
        this.f.a(canvas, bounds);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f.c(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f.d();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f.a(colorFilter);
        invalidateSelf();
    }

    private void d(float f) {
        this.g = f;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.i.isRunning();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.i.cancel();
        this.f.k();
        if (this.f.i() != this.f.e()) {
            this.f1897b = true;
            this.i.setDuration(666L);
            this.i.start();
        } else {
            this.f.b(0);
            this.f.l();
            this.i.setDuration(1332L);
            this.i.start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.i.cancel();
        d(0.0f);
        this.f.a(false);
        this.f.b(0);
        this.f.l();
        invalidateSelf();
    }

    void a(float f, a aVar) {
        if (f > 0.75f) {
            aVar.a(a((f - 0.75f) / 0.25f, aVar.h(), aVar.a()));
        } else {
            aVar.a(aVar.h());
        }
    }

    private void b(float f, a aVar) {
        a(f, aVar);
        float fFloor = (float) (Math.floor(aVar.j() / 0.8f) + 1.0d);
        aVar.b(aVar.f() + (((aVar.g() - 0.01f) - aVar.f()) * f));
        aVar.c(aVar.g());
        aVar.d(aVar.j() + ((fFloor - aVar.j()) * f));
    }

    void a(float f, a aVar, boolean z) {
        float interpolation;
        float interpolation2;
        if (this.f1897b) {
            b(f, aVar);
            return;
        }
        if (f != 1.0f || z) {
            float fJ = aVar.j();
            if (f < 0.5f) {
                interpolation = aVar.f();
                interpolation2 = (f1894d.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + interpolation;
            } else {
                float f2 = aVar.f() + 0.79f;
                interpolation = f2 - (((1.0f - f1894d.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                interpolation2 = f2;
            }
            float f3 = fJ + (0.20999998f * f);
            float f4 = (f + this.f1896a) * 216.0f;
            aVar.b(interpolation);
            aVar.c(interpolation2);
            aVar.d(f3);
            d(f4);
        }
    }

    private void a() {
        final a aVar = this.f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.j.a.b.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                b.this.a(fFloatValue, aVar);
                b.this.a(fFloatValue, aVar, false);
                b.this.invalidateSelf();
            }
        });
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setRepeatMode(1);
        valueAnimatorOfFloat.setInterpolator(f1893c);
        valueAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: androidx.j.a.b.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                b.this.f1896a = 0.0f;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                b.this.a(1.0f, aVar, true);
                aVar.k();
                aVar.c();
                if (b.this.f1897b) {
                    b.this.f1897b = false;
                    animator.cancel();
                    animator.setDuration(1332L);
                    animator.start();
                    aVar.a(false);
                    return;
                }
                b.this.f1896a += 1.0f;
            }
        });
        this.i = valueAnimatorOfFloat;
    }

    private static class a {
        int[] i;
        int j;
        float k;
        float l;
        float m;
        boolean n;
        Path o;
        float q;
        int r;
        int s;
        int u;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final RectF f1902a = new RectF();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Paint f1903b = new Paint();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Paint f1904c = new Paint();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Paint f1905d = new Paint();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f1906e = 0.0f;
        float f = 0.0f;
        float g = 0.0f;
        float h = 5.0f;
        float p = 1.0f;
        int t = 255;

        a() {
            this.f1903b.setStrokeCap(Paint.Cap.SQUARE);
            this.f1903b.setAntiAlias(true);
            this.f1903b.setStyle(Paint.Style.STROKE);
            this.f1904c.setStyle(Paint.Style.FILL);
            this.f1904c.setAntiAlias(true);
            this.f1905d.setColor(0);
        }

        void a(float f, float f2) {
            this.r = (int) f;
            this.s = (int) f2;
        }

        void a(Canvas canvas, Rect rect) {
            RectF rectF = this.f1902a;
            float f = this.q;
            float fMin = (this.h / 2.0f) + f;
            if (f <= 0.0f) {
                fMin = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.r * this.p) / 2.0f, this.h / 2.0f);
            }
            rectF.set(rect.centerX() - fMin, rect.centerY() - fMin, rect.centerX() + fMin, rect.centerY() + fMin);
            float f2 = this.f1906e;
            float f3 = this.g;
            float f4 = (f2 + f3) * 360.0f;
            float f5 = ((this.f + f3) * 360.0f) - f4;
            this.f1903b.setColor(this.u);
            this.f1903b.setAlpha(this.t);
            float f6 = this.h / 2.0f;
            rectF.inset(f6, f6);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f1905d);
            float f7 = -f6;
            rectF.inset(f7, f7);
            canvas.drawArc(rectF, f4, f5, false, this.f1903b);
            a(canvas, f4, f5, rectF);
        }

        void a(Canvas canvas, float f, float f2, RectF rectF) {
            if (this.n) {
                Path path = this.o;
                if (path == null) {
                    Path path2 = new Path();
                    this.o = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float fMin = Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f3 = (this.r * this.p) / 2.0f;
                this.o.moveTo(0.0f, 0.0f);
                this.o.lineTo(this.r * this.p, 0.0f);
                Path path3 = this.o;
                float f4 = this.r;
                float f5 = this.p;
                path3.lineTo((f4 * f5) / 2.0f, this.s * f5);
                this.o.offset((fMin + rectF.centerX()) - f3, rectF.centerY() + (this.h / 2.0f));
                this.o.close();
                this.f1904c.setColor(this.u);
                this.f1904c.setAlpha(this.t);
                canvas.save();
                canvas.rotate(f + f2, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.o, this.f1904c);
                canvas.restore();
            }
        }

        void a(int[] iArr) {
            this.i = iArr;
            b(0);
        }

        void a(int i) {
            this.u = i;
        }

        void b(int i) {
            this.j = i;
            this.u = this.i[i];
        }

        int a() {
            return this.i[b()];
        }

        int b() {
            return (this.j + 1) % this.i.length;
        }

        void c() {
            b(b());
        }

        void a(ColorFilter colorFilter) {
            this.f1903b.setColorFilter(colorFilter);
        }

        void c(int i) {
            this.t = i;
        }

        int d() {
            return this.t;
        }

        void a(float f) {
            this.h = f;
            this.f1903b.setStrokeWidth(f);
        }

        void b(float f) {
            this.f1906e = f;
        }

        float e() {
            return this.f1906e;
        }

        float f() {
            return this.k;
        }

        float g() {
            return this.l;
        }

        int h() {
            return this.i[this.j];
        }

        void c(float f) {
            this.f = f;
        }

        float i() {
            return this.f;
        }

        void d(float f) {
            this.g = f;
        }

        void e(float f) {
            this.q = f;
        }

        void a(boolean z) {
            if (this.n != z) {
                this.n = z;
            }
        }

        void f(float f) {
            if (f != this.p) {
                this.p = f;
            }
        }

        float j() {
            return this.m;
        }

        void k() {
            this.k = this.f1906e;
            this.l = this.f;
            this.m = this.g;
        }

        void l() {
            this.k = 0.0f;
            this.l = 0.0f;
            this.m = 0.0f;
            b(0.0f);
            c(0.0f);
            d(0.0f);
        }
    }
}
