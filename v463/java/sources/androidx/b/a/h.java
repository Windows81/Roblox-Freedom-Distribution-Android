package androidx.b.a;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class h extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static a f1056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final double f1057b = Math.cos(Math.toRadians(45.0d));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f1058c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f1059d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f1060e;
    private Paint f;
    private final RectF g;
    private float h;
    private Path i;
    private float j;
    private float k;
    private float l;
    private ColorStateList m;
    private boolean n;
    private final int o;
    private final int p;
    private boolean q;
    private boolean r;

    interface a {
        void a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    private void b(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.m = colorStateList;
        this.f1059d.setColor(colorStateList.getColorForState(getState(), this.m.getDefaultColor()));
    }

    private int d(float f) {
        int i = (int) (f + 0.5f);
        return i % 2 == 1 ? i - 1 : i;
    }

    void a(boolean z) {
        this.q = z;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1059d.setAlpha(i);
        this.f1060e.setAlpha(i);
        this.f.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.n = true;
    }

    private void a(float f, float f2) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        }
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        }
        float fD = d(f);
        float fD2 = d(f2);
        if (fD > fD2) {
            if (!this.r) {
                this.r = true;
            }
            fD = fD2;
        }
        if (this.l == fD && this.j == fD2) {
            return;
        }
        this.l = fD;
        this.j = fD2;
        this.k = (int) ((fD * 1.5f) + this.f1058c + 0.5f);
        this.n = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int iCeil = (int) Math.ceil(a(this.j, this.h, this.q));
        int iCeil2 = (int) Math.ceil(b(this.j, this.h, this.q));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    static float a(float f, float f2, boolean z) {
        if (!z) {
            return f * 1.5f;
        }
        double d2 = f * 1.5f;
        double d3 = 1.0d - f1057b;
        double d4 = f2;
        Double.isNaN(d4);
        Double.isNaN(d2);
        return (float) (d2 + (d3 * d4));
    }

    static float b(float f, float f2, boolean z) {
        if (!z) {
            return f;
        }
        double d2 = f;
        double d3 = 1.0d - f1057b;
        double d4 = f2;
        Double.isNaN(d4);
        Double.isNaN(d2);
        return (float) (d2 + (d3 * d4));
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.m;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f1059d.getColor() == colorForState) {
            return false;
        }
        this.f1059d.setColor(colorForState);
        this.n = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.m;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1059d.setColorFilter(colorFilter);
    }

    void a(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
        }
        float f2 = (int) (f + 0.5f);
        if (this.h == f2) {
            return;
        }
        this.h = f2;
        this.n = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.n) {
            b(getBounds());
            this.n = false;
        }
        canvas.translate(0.0f, this.l / 2.0f);
        a(canvas);
        canvas.translate(0.0f, (-this.l) / 2.0f);
        f1056a.a(canvas, this.g, this.h, this.f1059d);
    }

    private void a(Canvas canvas) {
        float f = this.h;
        float f2 = (-f) - this.k;
        float f3 = f + this.f1058c + (this.l / 2.0f);
        float f4 = f3 * 2.0f;
        boolean z = this.g.width() - f4 > 0.0f;
        boolean z2 = this.g.height() - f4 > 0.0f;
        int iSave = canvas.save();
        canvas.translate(this.g.left + f3, this.g.top + f3);
        canvas.drawPath(this.i, this.f1060e);
        if (z) {
            canvas.drawRect(0.0f, f2, this.g.width() - f4, -this.h, this.f);
        }
        canvas.restoreToCount(iSave);
        int iSave2 = canvas.save();
        canvas.translate(this.g.right - f3, this.g.bottom - f3);
        canvas.rotate(180.0f);
        canvas.drawPath(this.i, this.f1060e);
        if (z) {
            canvas.drawRect(0.0f, f2, this.g.width() - f4, (-this.h) + this.k, this.f);
        }
        canvas.restoreToCount(iSave2);
        int iSave3 = canvas.save();
        canvas.translate(this.g.left + f3, this.g.bottom - f3);
        canvas.rotate(270.0f);
        canvas.drawPath(this.i, this.f1060e);
        if (z2) {
            canvas.drawRect(0.0f, f2, this.g.height() - f4, -this.h, this.f);
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        canvas.translate(this.g.right - f3, this.g.top + f3);
        canvas.rotate(90.0f);
        canvas.drawPath(this.i, this.f1060e);
        if (z2) {
            canvas.drawRect(0.0f, f2, this.g.height() - f4, -this.h, this.f);
        }
        canvas.restoreToCount(iSave4);
    }

    private void g() {
        float f = this.h;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.k;
        rectF2.inset(-f2, -f2);
        Path path = this.i;
        if (path == null) {
            this.i = new Path();
        } else {
            path.reset();
        }
        this.i.setFillType(Path.FillType.EVEN_ODD);
        this.i.moveTo(-this.h, 0.0f);
        this.i.rLineTo(-this.k, 0.0f);
        this.i.arcTo(rectF2, 180.0f, 90.0f, false);
        this.i.arcTo(rectF, 270.0f, -90.0f, false);
        this.i.close();
        float f3 = this.h;
        float f4 = f3 / (this.k + f3);
        Paint paint = this.f1060e;
        float f5 = this.h + this.k;
        int i = this.o;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f5, new int[]{i, i, this.p}, new float[]{0.0f, f4, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f;
        float f6 = this.h;
        float f7 = this.k;
        int i2 = this.o;
        paint2.setShader(new LinearGradient(0.0f, (-f6) + f7, 0.0f, (-f6) - f7, new int[]{i2, i2, this.p}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f.setAntiAlias(false);
    }

    private void b(Rect rect) {
        float f = this.j * 1.5f;
        this.g.set(rect.left + this.j, rect.top + f, rect.right - this.j, rect.bottom - f);
        g();
    }

    float a() {
        return this.h;
    }

    void a(Rect rect) {
        getPadding(rect);
    }

    void b(float f) {
        a(f, this.j);
    }

    void c(float f) {
        a(this.l, f);
    }

    float b() {
        return this.l;
    }

    float c() {
        return this.j;
    }

    float d() {
        float f = this.j;
        return (Math.max(f, this.h + this.f1058c + (f / 2.0f)) * 2.0f) + ((this.j + this.f1058c) * 2.0f);
    }

    float e() {
        float f = this.j;
        return (Math.max(f, this.h + this.f1058c + ((f * 1.5f) / 2.0f)) * 2.0f) + (((this.j * 1.5f) + this.f1058c) * 2.0f);
    }

    void a(ColorStateList colorStateList) {
        b(colorStateList);
        invalidateSelf();
    }

    ColorStateList f() {
        return this.m;
    }
}
