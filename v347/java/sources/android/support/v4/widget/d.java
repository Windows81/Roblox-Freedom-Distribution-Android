package android.support.v4.widget;

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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d extends Drawable implements Animatable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Interpolator f1152a = new LinearInterpolator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Interpolator f1153b = new android.support.v4.view.b.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f1154c = {-16777216};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f1155d = new a();
    private float e;
    private Resources f;
    private Animator g;
    private float h;
    private boolean i;

    public d(Context context) {
        this.f = ((Context) android.support.v4.g.l.a(context)).getResources();
        this.f1155d.a(f1154c);
        a(2.5f);
        a();
    }

    private void a(float f, float f2, float f3, float f4) {
        a aVar = this.f1155d;
        float f5 = this.f.getDisplayMetrics().density;
        aVar.a(f2 * f5);
        aVar.e(f * f5);
        aVar.b(0);
        aVar.a(f3 * f5, f5 * f4);
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
        this.f1155d.a(f);
        invalidateSelf();
    }

    public void a(boolean z) {
        this.f1155d.a(z);
        invalidateSelf();
    }

    public void b(float f) {
        this.f1155d.f(f);
        invalidateSelf();
    }

    public void a(float f, float f2) {
        this.f1155d.b(f);
        this.f1155d.c(f2);
        invalidateSelf();
    }

    public void c(float f) {
        this.f1155d.d(f);
        invalidateSelf();
    }

    public void a(int... iArr) {
        this.f1155d.a(iArr);
        this.f1155d.b(0);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.e, bounds.exactCenterX(), bounds.exactCenterY());
        this.f1155d.a(canvas, bounds);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1155d.c(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f1155d.d();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1155d.a(colorFilter);
        invalidateSelf();
    }

    private void d(float f) {
        this.e = f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.g.isRunning();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.g.cancel();
        this.f1155d.k();
        if (this.f1155d.i() != this.f1155d.e()) {
            this.i = true;
            this.g.setDuration(666L);
            this.g.start();
        } else {
            this.f1155d.b(0);
            this.f1155d.l();
            this.g.setDuration(1332L);
            this.g.start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.g.cancel();
        d(0.0f);
        this.f1155d.a(false);
        this.f1155d.b(0);
        this.f1155d.l();
        invalidateSelf();
    }

    private int a(float f, int i, int i2) {
        return ((((i >> 24) & 255) + ((int) ((((i2 >> 24) & 255) - r0) * f))) << 24) | ((((i >> 16) & 255) + ((int) ((((i2 >> 16) & 255) - r1) * f))) << 16) | ((((int) ((((i2 >> 8) & 255) - r2) * f)) + ((i >> 8) & 255)) << 8) | (((int) (((i2 & 255) - r3) * f)) + (i & 255));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float f, a aVar) {
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
        aVar.d(((fFloor - aVar.j()) * f) + aVar.j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float f, a aVar, boolean z) {
        float f2;
        float interpolation;
        if (this.i) {
            b(f, aVar);
            return;
        }
        if (f != 1.0f || z) {
            float fJ = aVar.j();
            if (f < 0.5f) {
                interpolation = aVar.f();
                f2 = (f1153b.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + interpolation;
            } else {
                f2 = aVar.f() + 0.79f;
                interpolation = f2 - (((1.0f - f1153b.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
            }
            float f3 = 216.0f * (this.h + f);
            aVar.b(interpolation);
            aVar.c(f2);
            aVar.d(fJ + (0.20999998f * f));
            d(f3);
        }
    }

    private void a() {
        final a aVar = this.f1155d;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.v4.widget.d.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                d.this.a(fFloatValue, aVar);
                d.this.a(fFloatValue, aVar, false);
                d.this.invalidateSelf();
            }
        });
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setRepeatMode(1);
        valueAnimatorOfFloat.setInterpolator(f1152a);
        valueAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: android.support.v4.widget.d.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                d.this.h = 0.0f;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                d.this.a(1.0f, aVar, true);
                aVar.k();
                aVar.c();
                if (d.this.i) {
                    d.this.i = false;
                    animator.cancel();
                    animator.setDuration(1332L);
                    animator.start();
                    aVar.a(false);
                    return;
                }
                d.this.h += 1.0f;
            }
        });
        this.g = valueAnimatorOfFloat;
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
        final RectF f1160a = new RectF();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Paint f1161b = new Paint();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Paint f1162c = new Paint();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Paint f1163d = new Paint();
        float e = 0.0f;
        float f = 0.0f;
        float g = 0.0f;
        float h = 5.0f;
        float p = 1.0f;
        int t = 255;

        a() {
            this.f1161b.setStrokeCap(Paint.Cap.SQUARE);
            this.f1161b.setAntiAlias(true);
            this.f1161b.setStyle(Paint.Style.STROKE);
            this.f1162c.setStyle(Paint.Style.FILL);
            this.f1162c.setAntiAlias(true);
            this.f1163d.setColor(0);
        }

        void a(float f, float f2) {
            this.r = (int) f;
            this.s = (int) f2;
        }

        void a(Canvas canvas, Rect rect) {
            RectF rectF = this.f1160a;
            float fMin = this.q + (this.h / 2.0f);
            if (this.q <= 0.0f) {
                fMin = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.r * this.p) / 2.0f, this.h / 2.0f);
            }
            rectF.set(rect.centerX() - fMin, rect.centerY() - fMin, rect.centerX() + fMin, fMin + rect.centerY());
            float f = (this.e + this.g) * 360.0f;
            float f2 = ((this.f + this.g) * 360.0f) - f;
            this.f1161b.setColor(this.u);
            this.f1161b.setAlpha(this.t);
            float f3 = this.h / 2.0f;
            rectF.inset(f3, f3);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f1163d);
            rectF.inset(-f3, -f3);
            canvas.drawArc(rectF, f, f2, false, this.f1161b);
            a(canvas, f, f2, rectF);
        }

        void a(Canvas canvas, float f, float f2, RectF rectF) {
            if (this.n) {
                if (this.o == null) {
                    this.o = new Path();
                    this.o.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    this.o.reset();
                }
                float fMin = Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f3 = (this.r * this.p) / 2.0f;
                this.o.moveTo(0.0f, 0.0f);
                this.o.lineTo(this.r * this.p, 0.0f);
                this.o.lineTo((this.r * this.p) / 2.0f, this.s * this.p);
                this.o.offset((fMin + rectF.centerX()) - f3, rectF.centerY() + (this.h / 2.0f));
                this.o.close();
                this.f1162c.setColor(this.u);
                this.f1162c.setAlpha(this.t);
                canvas.save();
                canvas.rotate(f + f2, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.o, this.f1162c);
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
            this.u = this.i[this.j];
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
            this.f1161b.setColorFilter(colorFilter);
        }

        void c(int i) {
            this.t = i;
        }

        int d() {
            return this.t;
        }

        void a(float f) {
            this.h = f;
            this.f1161b.setStrokeWidth(f);
        }

        void b(float f) {
            this.e = f;
        }

        float e() {
            return this.e;
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
            this.k = this.e;
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
