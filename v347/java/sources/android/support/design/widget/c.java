package android.support.design.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class c extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Paint f384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Rect f385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final RectF f386c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float f387d;
    private int e;
    private int f;
    private int g;
    private int h;
    private ColorStateList i;
    private int j;
    private boolean k;
    private float l;

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.k) {
            this.f384a.setShader(a());
            this.k = false;
        }
        float strokeWidth = this.f384a.getStrokeWidth() / 2.0f;
        RectF rectF = this.f386c;
        copyBounds(this.f385b);
        rectF.set(this.f385b);
        rectF.left += strokeWidth;
        rectF.top += strokeWidth;
        rectF.right -= strokeWidth;
        rectF.bottom -= strokeWidth;
        canvas.save();
        canvas.rotate(this.l, rectF.centerX(), rectF.centerY());
        canvas.drawOval(rectF, this.f384a);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int iRound = Math.round(this.f387d);
        rect.set(iRound, iRound, iRound, iRound);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f384a.setAlpha(i);
        invalidateSelf();
    }

    void a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.j = colorStateList.getColorForState(getState(), this.j);
        }
        this.i = colorStateList;
        this.k = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f384a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f387d > 0.0f ? -3 : -2;
    }

    final void a(float f) {
        if (f != this.l) {
            this.l = f;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.k = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return (this.i != null && this.i.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        if (this.i != null && (colorForState = this.i.getColorForState(iArr, this.j)) != this.j) {
            this.k = true;
            this.j = colorForState;
        }
        if (this.k) {
            invalidateSelf();
        }
        return this.k;
    }

    private Shader a() {
        copyBounds(this.f385b);
        float fHeight = this.f387d / r3.height();
        return new LinearGradient(0.0f, r3.top, 0.0f, r3.bottom, new int[]{android.support.v4.b.a.a(this.e, this.j), android.support.v4.b.a.a(this.f, this.j), android.support.v4.b.a.a(android.support.v4.b.a.b(this.f, 0), this.j), android.support.v4.b.a.a(android.support.v4.b.a.b(this.h, 0), this.j), android.support.v4.b.a.a(this.h, this.j), android.support.v4.b.a.a(this.g, this.j)}, new float[]{0.0f, fHeight, 0.5f, 0.5f, 1.0f - fHeight, 1.0f}, Shader.TileMode.CLAMP);
    }
}
