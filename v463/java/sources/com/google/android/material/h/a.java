package com.google.android.material.h;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.appcompat.b.a.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final double f4957a = Math.cos(Math.toRadians(45.0d));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Paint f4958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Paint f4959c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final RectF f4960d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f4961e;
    Path f;
    float g;
    float h;
    float i;
    float j;
    private boolean k;
    private final int l;
    private final int m;
    private final int n;
    private boolean o;
    private float p;
    private boolean q;

    @Override // androidx.appcompat.b.a.c, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    private static int c(float f) {
        int iRound = Math.round(f);
        return iRound % 2 == 1 ? iRound - 1 : iRound;
    }

    @Override // androidx.appcompat.b.a.c, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        super.setAlpha(i);
        this.f4958b.setAlpha(i);
        this.f4959c.setAlpha(i);
    }

    @Override // androidx.appcompat.b.a.c, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.k = true;
    }

    public void a(float f, float f2) {
        if (f < 0.0f || f2 < 0.0f) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float fC = c(f);
        float fC2 = c(f2);
        if (fC > fC2) {
            if (!this.q) {
                this.q = true;
            }
            fC = fC2;
        }
        if (this.j == fC && this.h == fC2) {
            return;
        }
        this.j = fC;
        this.h = fC2;
        this.i = Math.round(fC * 1.5f);
        this.g = fC2;
        this.k = true;
        invalidateSelf();
    }

    public void a(float f) {
        a(f, this.h);
    }

    public float b() {
        return this.j;
    }

    @Override // androidx.appcompat.b.a.c, android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int iCeil = (int) Math.ceil(a(this.h, this.f4961e, this.o));
        int iCeil2 = (int) Math.ceil(b(this.h, this.f4961e, this.o));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    public static float a(float f, float f2, boolean z) {
        if (!z) {
            return f * 1.5f;
        }
        double d2 = f * 1.5f;
        double d3 = 1.0d - f4957a;
        double d4 = f2;
        Double.isNaN(d4);
        Double.isNaN(d2);
        return (float) (d2 + (d3 * d4));
    }

    public static float b(float f, float f2, boolean z) {
        if (!z) {
            return f;
        }
        double d2 = f;
        double d3 = 1.0d - f4957a;
        double d4 = f2;
        Double.isNaN(d4);
        Double.isNaN(d2);
        return (float) (d2 + (d3 * d4));
    }

    @Override // androidx.appcompat.b.a.c, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.k) {
            a(getBounds());
            this.k = false;
        }
        a(canvas);
        super.draw(canvas);
    }

    public final void b(float f) {
        if (this.p != f) {
            this.p = f;
            invalidateSelf();
        }
    }

    private void a(Canvas canvas) {
        int i;
        float f;
        int i2;
        float f2;
        float f3;
        float f4;
        int iSave = canvas.save();
        canvas.rotate(this.p, this.f4960d.centerX(), this.f4960d.centerY());
        float f5 = this.f4961e;
        float f6 = (-f5) - this.i;
        float f7 = f5 * 2.0f;
        boolean z = this.f4960d.width() - f7 > 0.0f;
        boolean z2 = this.f4960d.height() - f7 > 0.0f;
        float f8 = this.j;
        float f9 = f5 / ((f8 - (0.5f * f8)) + f5);
        float f10 = f5 / ((f8 - (0.25f * f8)) + f5);
        float f11 = f5 / ((f8 - (f8 * 1.0f)) + f5);
        int iSave2 = canvas.save();
        canvas.translate(this.f4960d.left + f5, this.f4960d.top + f5);
        canvas.scale(f9, f10);
        canvas.drawPath(this.f, this.f4958b);
        if (z) {
            canvas.scale(1.0f / f9, 1.0f);
            i = iSave2;
            f = f11;
            i2 = iSave;
            f2 = f10;
            canvas.drawRect(0.0f, f6, this.f4960d.width() - f7, -this.f4961e, this.f4959c);
        } else {
            i = iSave2;
            f = f11;
            i2 = iSave;
            f2 = f10;
        }
        canvas.restoreToCount(i);
        int iSave3 = canvas.save();
        canvas.translate(this.f4960d.right - f5, this.f4960d.bottom - f5);
        float f12 = f;
        canvas.scale(f9, f12);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f, this.f4958b);
        if (z) {
            canvas.scale(1.0f / f9, 1.0f);
            f3 = f2;
            f4 = f12;
            canvas.drawRect(0.0f, f6, this.f4960d.width() - f7, (-this.f4961e) + this.i, this.f4959c);
        } else {
            f3 = f2;
            f4 = f12;
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        canvas.translate(this.f4960d.left + f5, this.f4960d.bottom - f5);
        canvas.scale(f9, f4);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f, this.f4958b);
        if (z2) {
            canvas.scale(1.0f / f4, 1.0f);
            canvas.drawRect(0.0f, f6, this.f4960d.height() - f7, -this.f4961e, this.f4959c);
        }
        canvas.restoreToCount(iSave4);
        int iSave5 = canvas.save();
        canvas.translate(this.f4960d.right - f5, this.f4960d.top + f5);
        float f13 = f3;
        canvas.scale(f9, f13);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f, this.f4958b);
        if (z2) {
            canvas.scale(1.0f / f13, 1.0f);
            canvas.drawRect(0.0f, f6, this.f4960d.height() - f7, -this.f4961e, this.f4959c);
        }
        canvas.restoreToCount(iSave5);
        canvas.restoreToCount(i2);
    }

    private void c() {
        float f = this.f4961e;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.i;
        rectF2.inset(-f2, -f2);
        Path path = this.f;
        if (path == null) {
            this.f = new Path();
        } else {
            path.reset();
        }
        this.f.setFillType(Path.FillType.EVEN_ODD);
        this.f.moveTo(-this.f4961e, 0.0f);
        this.f.rLineTo(-this.i, 0.0f);
        this.f.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f.arcTo(rectF, 270.0f, -90.0f, false);
        this.f.close();
        float f3 = -rectF2.top;
        if (f3 > 0.0f) {
            float f4 = this.f4961e / f3;
            this.f4958b.setShader(new RadialGradient(0.0f, 0.0f, f3, new int[]{0, this.l, this.m, this.n}, new float[]{0.0f, f4, ((1.0f - f4) / 2.0f) + f4, 1.0f}, Shader.TileMode.CLAMP));
        }
        this.f4959c.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.l, this.m, this.n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f4959c.setAntiAlias(false);
    }

    private void a(Rect rect) {
        float f = this.h * 1.5f;
        this.f4960d.set(rect.left + this.h, rect.top + f, rect.right - this.h, rect.bottom - f);
        a().setBounds((int) this.f4960d.left, (int) this.f4960d.top, (int) this.f4960d.right, (int) this.f4960d.bottom);
        c();
    }
}
