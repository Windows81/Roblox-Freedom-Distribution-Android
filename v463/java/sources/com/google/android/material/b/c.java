package com.google.android.material.b;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.core.h.r;
import com.google.android.material.a;
import com.google.android.material.internal.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f4839a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f4840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4841c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4842d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4843e;
    private int f;
    private int g;
    private int h;
    private PorterDuff.Mode i;
    private ColorStateList j;
    private ColorStateList k;
    private ColorStateList l;
    private GradientDrawable p;
    private Drawable q;
    private GradientDrawable r;
    private Drawable s;
    private GradientDrawable t;
    private GradientDrawable u;
    private GradientDrawable v;
    private final Paint m = new Paint(1);
    private final Rect n = new Rect();
    private final RectF o = new RectF();
    private boolean w = false;

    static {
        f4839a = Build.VERSION.SDK_INT >= 21;
    }

    public c(a aVar) {
        this.f4840b = aVar;
    }

    public void a(TypedArray typedArray) {
        this.f4841c = typedArray.getDimensionPixelOffset(a.i.MaterialButton_android_insetLeft, 0);
        this.f4842d = typedArray.getDimensionPixelOffset(a.i.MaterialButton_android_insetRight, 0);
        this.f4843e = typedArray.getDimensionPixelOffset(a.i.MaterialButton_android_insetTop, 0);
        this.f = typedArray.getDimensionPixelOffset(a.i.MaterialButton_android_insetBottom, 0);
        this.g = typedArray.getDimensionPixelSize(a.i.MaterialButton_cornerRadius, 0);
        this.h = typedArray.getDimensionPixelSize(a.i.MaterialButton_strokeWidth, 0);
        this.i = f.a(typedArray.getInt(a.i.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.j = com.google.android.material.f.a.a(this.f4840b.getContext(), typedArray, a.i.MaterialButton_backgroundTint);
        this.k = com.google.android.material.f.a.a(this.f4840b.getContext(), typedArray, a.i.MaterialButton_strokeColor);
        this.l = com.google.android.material.f.a.a(this.f4840b.getContext(), typedArray, a.i.MaterialButton_rippleColor);
        this.m.setStyle(Paint.Style.STROKE);
        this.m.setStrokeWidth(this.h);
        Paint paint = this.m;
        ColorStateList colorStateList = this.k;
        paint.setColor(colorStateList != null ? colorStateList.getColorForState(this.f4840b.getDrawableState(), 0) : 0);
        int iG = r.g(this.f4840b);
        int paddingTop = this.f4840b.getPaddingTop();
        int iH = r.h(this.f4840b);
        int paddingBottom = this.f4840b.getPaddingBottom();
        this.f4840b.setInternalBackground(f4839a ? k() : i());
        r.a(this.f4840b, iG + this.f4841c, paddingTop + this.f4843e, iH + this.f4842d, paddingBottom + this.f);
    }

    void a() {
        this.w = true;
        this.f4840b.setSupportBackgroundTintList(this.j);
        this.f4840b.setSupportBackgroundTintMode(this.i);
    }

    boolean b() {
        return this.w;
    }

    void a(Canvas canvas) {
        if (canvas == null || this.k == null || this.h <= 0) {
            return;
        }
        this.n.set(this.f4840b.getBackground().getBounds());
        this.o.set(this.n.left + (this.h / 2.0f) + this.f4841c, this.n.top + (this.h / 2.0f) + this.f4843e, (this.n.right - (this.h / 2.0f)) - this.f4842d, (this.n.bottom - (this.h / 2.0f)) - this.f);
        float f = this.g - (this.h / 2.0f);
        canvas.drawRoundRect(this.o, f, f, this.m);
    }

    private Drawable i() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.p = gradientDrawable;
        gradientDrawable.setCornerRadius(this.g + 1.0E-5f);
        this.p.setColor(-1);
        Drawable drawableG = androidx.core.graphics.drawable.a.g(this.p);
        this.q = drawableG;
        androidx.core.graphics.drawable.a.a(drawableG, this.j);
        PorterDuff.Mode mode = this.i;
        if (mode != null) {
            androidx.core.graphics.drawable.a.a(this.q, mode);
        }
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        this.r = gradientDrawable2;
        gradientDrawable2.setCornerRadius(this.g + 1.0E-5f);
        this.r.setColor(-1);
        Drawable drawableG2 = androidx.core.graphics.drawable.a.g(this.r);
        this.s = drawableG2;
        androidx.core.graphics.drawable.a.a(drawableG2, this.l);
        return a(new LayerDrawable(new Drawable[]{this.q, this.s}));
    }

    private InsetDrawable a(Drawable drawable) {
        return new InsetDrawable(drawable, this.f4841c, this.f4843e, this.f4842d, this.f);
    }

    void a(ColorStateList colorStateList) {
        if (this.j != colorStateList) {
            this.j = colorStateList;
            if (f4839a) {
                j();
                return;
            }
            Drawable drawable = this.q;
            if (drawable != null) {
                androidx.core.graphics.drawable.a.a(drawable, colorStateList);
            }
        }
    }

    ColorStateList c() {
        return this.j;
    }

    void a(PorterDuff.Mode mode) {
        if (this.i != mode) {
            this.i = mode;
            if (f4839a) {
                j();
                return;
            }
            Drawable drawable = this.q;
            if (drawable == null || mode == null) {
                return;
            }
            androidx.core.graphics.drawable.a.a(drawable, mode);
        }
    }

    PorterDuff.Mode d() {
        return this.i;
    }

    private void j() {
        GradientDrawable gradientDrawable = this.t;
        if (gradientDrawable != null) {
            androidx.core.graphics.drawable.a.a(gradientDrawable, this.j);
            PorterDuff.Mode mode = this.i;
            if (mode != null) {
                androidx.core.graphics.drawable.a.a(this.t, mode);
            }
        }
    }

    private Drawable k() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.t = gradientDrawable;
        gradientDrawable.setCornerRadius(this.g + 1.0E-5f);
        this.t.setColor(-1);
        j();
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        this.u = gradientDrawable2;
        gradientDrawable2.setCornerRadius(this.g + 1.0E-5f);
        this.u.setColor(0);
        this.u.setStroke(this.h, this.k);
        InsetDrawable insetDrawableA = a(new LayerDrawable(new Drawable[]{this.t, this.u}));
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        this.v = gradientDrawable3;
        gradientDrawable3.setCornerRadius(this.g + 1.0E-5f);
        this.v.setColor(-1);
        return new b(com.google.android.material.g.a.a(this.l), insetDrawableA, this.v);
    }

    void a(int i, int i2) {
        GradientDrawable gradientDrawable = this.v;
        if (gradientDrawable != null) {
            gradientDrawable.setBounds(this.f4841c, this.f4843e, i2 - this.f4842d, i - this.f);
        }
    }

    void a(int i) {
        GradientDrawable gradientDrawable;
        GradientDrawable gradientDrawable2;
        if (f4839a && (gradientDrawable2 = this.t) != null) {
            gradientDrawable2.setColor(i);
        } else {
            if (f4839a || (gradientDrawable = this.p) == null) {
                return;
            }
            gradientDrawable.setColor(i);
        }
    }

    void b(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.l != colorStateList) {
            this.l = colorStateList;
            if (f4839a && (this.f4840b.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f4840b.getBackground()).setColor(colorStateList);
            } else {
                if (f4839a || (drawable = this.s) == null) {
                    return;
                }
                androidx.core.graphics.drawable.a.a(drawable, colorStateList);
            }
        }
    }

    ColorStateList e() {
        return this.l;
    }

    void c(ColorStateList colorStateList) {
        if (this.k != colorStateList) {
            this.k = colorStateList;
            this.m.setColor(colorStateList != null ? colorStateList.getColorForState(this.f4840b.getDrawableState(), 0) : 0);
            l();
        }
    }

    ColorStateList f() {
        return this.k;
    }

    void b(int i) {
        if (this.h != i) {
            this.h = i;
            this.m.setStrokeWidth(i);
            l();
        }
    }

    int g() {
        return this.h;
    }

    private void l() {
        if (f4839a && this.u != null) {
            this.f4840b.setInternalBackground(k());
        } else {
            if (f4839a) {
                return;
            }
            this.f4840b.invalidate();
        }
    }

    void c(int i) {
        GradientDrawable gradientDrawable;
        if (this.g != i) {
            this.g = i;
            if (f4839a && this.t != null && this.u != null && this.v != null) {
                if (Build.VERSION.SDK_INT == 21) {
                    float f = i + 1.0E-5f;
                    n().setCornerRadius(f);
                    m().setCornerRadius(f);
                }
                float f2 = i + 1.0E-5f;
                this.t.setCornerRadius(f2);
                this.u.setCornerRadius(f2);
                this.v.setCornerRadius(f2);
                return;
            }
            if (f4839a || (gradientDrawable = this.p) == null || this.r == null) {
                return;
            }
            float f3 = i + 1.0E-5f;
            gradientDrawable.setCornerRadius(f3);
            this.r.setCornerRadius(f3);
            this.f4840b.invalidate();
        }
    }

    int h() {
        return this.g;
    }

    private GradientDrawable m() {
        if (!f4839a || this.f4840b.getBackground() == null) {
            return null;
        }
        return (GradientDrawable) ((LayerDrawable) ((InsetDrawable) ((RippleDrawable) this.f4840b.getBackground()).getDrawable(0)).getDrawable()).getDrawable(1);
    }

    private GradientDrawable n() {
        if (!f4839a || this.f4840b.getBackground() == null) {
            return null;
        }
        return (GradientDrawable) ((LayerDrawable) ((InsetDrawable) ((RippleDrawable) this.f4840b.getBackground()).getDrawable(0)).getDrawable()).getDrawable(0);
    }
}
