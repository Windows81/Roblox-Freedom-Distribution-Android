package com.google.android.material.internal;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Paint f4992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Rect f4993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final RectF f4994c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final C0111a f4995d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f4996e;
    private int f;
    private int g;
    private int h;
    private int i;
    private ColorStateList j;
    private int k;
    private boolean l;
    private float m;

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f4995d;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.l) {
            this.f4992a.setShader(a());
            this.l = false;
        }
        float strokeWidth = this.f4992a.getStrokeWidth() / 2.0f;
        RectF rectF = this.f4994c;
        copyBounds(this.f4993b);
        rectF.set(this.f4993b);
        rectF.left += strokeWidth;
        rectF.top += strokeWidth;
        rectF.right -= strokeWidth;
        rectF.bottom -= strokeWidth;
        canvas.save();
        canvas.rotate(this.m, rectF.centerX(), rectF.centerY());
        canvas.drawOval(rectF, this.f4992a);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int iRound = Math.round(this.f4996e);
        rect.set(iRound, iRound, iRound, iRound);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f4992a.setAlpha(i);
        invalidateSelf();
    }

    public void a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.k = colorStateList.getColorForState(getState(), this.k);
        }
        this.j = colorStateList;
        this.l = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f4992a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f4996e > 0.0f ? -3 : -2;
    }

    public final void a(float f) {
        if (f != this.m) {
            this.m = f;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.l = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.j;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.j;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.k)) != this.k) {
            this.l = true;
            this.k = colorForState;
        }
        if (this.l) {
            invalidateSelf();
        }
        return this.l;
    }

    private Shader a() {
        copyBounds(this.f4993b);
        float fHeight = this.f4996e / r0.height();
        return new LinearGradient(0.0f, r0.top, 0.0f, r0.bottom, new int[]{androidx.core.graphics.a.a(this.f, this.k), androidx.core.graphics.a.a(this.g, this.k), androidx.core.graphics.a.a(androidx.core.graphics.a.b(this.g, 0), this.k), androidx.core.graphics.a.a(androidx.core.graphics.a.b(this.i, 0), this.k), androidx.core.graphics.a.a(this.i, this.k), androidx.core.graphics.a.a(this.h, this.k)}, new float[]{0.0f, fHeight, 0.5f, 0.5f, 1.0f - fHeight, 1.0f}, Shader.TileMode.CLAMP);
    }

    /* JADX INFO: renamed from: com.google.android.material.internal.a$a, reason: collision with other inner class name */
    private class C0111a extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ a f4997a;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return this.f4997a;
        }
    }
}
