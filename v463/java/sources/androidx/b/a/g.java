package androidx.b.a;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class g extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f1051a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f1052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RectF f1053c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Rect f1054d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f1055e;
    private boolean f;
    private boolean g;
    private ColorStateList h;
    private PorterDuffColorFilter i;
    private ColorStateList j;
    private PorterDuff.Mode k;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    private void b(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.h = colorStateList;
        this.f1052b.setColor(colorStateList.getColorForState(getState(), this.h.getDefaultColor()));
    }

    void a(float f, boolean z, boolean z2) {
        if (f == this.f1055e && this.f == z && this.g == z2) {
            return;
        }
        this.f1055e = f;
        this.f = z;
        this.g = z2;
        a((Rect) null);
        invalidateSelf();
    }

    float a() {
        return this.f1055e;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f1052b;
        if (this.i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.i);
            z = true;
        }
        RectF rectF = this.f1053c;
        float f = this.f1051a;
        canvas.drawRoundRect(rectF, f, f, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    private void a(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        this.f1053c.set(rect.left, rect.top, rect.right, rect.bottom);
        this.f1054d.set(rect);
        if (this.f) {
            this.f1054d.inset((int) Math.ceil(h.b(this.f1055e, this.f1051a, this.g)), (int) Math.ceil(h.a(this.f1055e, this.f1051a, this.g)));
            this.f1053c.set(this.f1054d);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        a(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f1054d, this.f1051a);
    }

    void a(float f) {
        if (f == this.f1051a) {
            return;
        }
        this.f1051a = f;
        a((Rect) null);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1052b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1052b.setColorFilter(colorFilter);
    }

    public float b() {
        return this.f1051a;
    }

    public void a(ColorStateList colorStateList) {
        b(colorStateList);
        invalidateSelf();
    }

    public ColorStateList c() {
        return this.h;
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.j = colorStateList;
        this.i = a(colorStateList, this.k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.k = mode;
        this.i = a(this.j, mode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f1052b.getColor();
        if (z) {
            this.f1052b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.j;
        if (colorStateList2 == null || (mode = this.k) == null) {
            return z;
        }
        this.i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    private PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }
}
