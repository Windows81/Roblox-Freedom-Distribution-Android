package android.support.design.widget;

import android.R;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.support.v7.a.a;
import android.support.v7.widget.TintTypedArray;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f388a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Paint f389b;
    private boolean A;
    private Bitmap B;
    private Paint C;
    private float D;
    private float E;
    private float F;
    private float G;
    private int[] H;
    private boolean I;
    private Interpolator K;
    private Interpolator L;
    private float M;
    private float N;
    private float O;
    private int P;
    private float Q;
    private float R;
    private float S;
    private int T;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f390c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f391d;
    private float e;
    private ColorStateList m;
    private ColorStateList n;
    private float o;
    private float p;
    private float q;
    private float r;
    private float s;
    private float t;
    private Typeface u;
    private Typeface v;
    private Typeface w;
    private CharSequence x;
    private CharSequence y;
    private boolean z;
    private int i = 16;
    private int j = 16;
    private float k = 15.0f;
    private float l = 15.0f;
    private final TextPaint J = new TextPaint(129);
    private final Rect g = new Rect();
    private final Rect f = new Rect();
    private final RectF h = new RectF();

    static {
        f388a = Build.VERSION.SDK_INT < 18;
        f389b = null;
        if (f389b != null) {
            f389b.setAntiAlias(true);
            f389b.setColor(-65281);
        }
    }

    public d(View view) {
        this.f390c = view;
    }

    void a(Interpolator interpolator) {
        this.L = interpolator;
        f();
    }

    void b(Interpolator interpolator) {
        this.K = interpolator;
        f();
    }

    void a(float f) {
        if (this.k != f) {
            this.k = f;
            f();
        }
    }

    void a(ColorStateList colorStateList) {
        if (this.n != colorStateList) {
            this.n = colorStateList;
            f();
        }
    }

    void b(ColorStateList colorStateList) {
        if (this.m != colorStateList) {
            this.m = colorStateList;
            f();
        }
    }

    void a(int i, int i2, int i3, int i4) {
        if (!a(this.f, i, i2, i3, i4)) {
            this.f.set(i, i2, i3, i4);
            this.I = true;
            a();
        }
    }

    void b(int i, int i2, int i3, int i4) {
        if (!a(this.g, i, i2, i3, i4)) {
            this.g.set(i, i2, i3, i4);
            this.I = true;
            a();
        }
    }

    void a() {
        this.f391d = this.g.width() > 0 && this.g.height() > 0 && this.f.width() > 0 && this.f.height() > 0;
    }

    void a(int i) {
        if (this.i != i) {
            this.i = i;
            f();
        }
    }

    void b(int i) {
        if (this.j != i) {
            this.j = i;
            f();
        }
    }

    void c(int i) {
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.f390c.getContext(), i, a.j.TextAppearance);
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.TextAppearance_android_textColor)) {
            this.n = tintTypedArrayObtainStyledAttributes.getColorStateList(a.j.TextAppearance_android_textColor);
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.TextAppearance_android_textSize)) {
            this.l = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.TextAppearance_android_textSize, (int) this.l);
        }
        this.P = tintTypedArrayObtainStyledAttributes.getInt(a.j.TextAppearance_android_shadowColor, 0);
        this.N = tintTypedArrayObtainStyledAttributes.getFloat(a.j.TextAppearance_android_shadowDx, 0.0f);
        this.O = tintTypedArrayObtainStyledAttributes.getFloat(a.j.TextAppearance_android_shadowDy, 0.0f);
        this.M = tintTypedArrayObtainStyledAttributes.getFloat(a.j.TextAppearance_android_shadowRadius, 0.0f);
        tintTypedArrayObtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT >= 16) {
            this.u = d(i);
        }
        f();
    }

    private Typeface d(int i) {
        TypedArray typedArrayObtainStyledAttributes = this.f390c.getContext().obtainStyledAttributes(i, new int[]{R.attr.fontFamily});
        try {
            String string = typedArrayObtainStyledAttributes.getString(0);
            if (string != null) {
                return Typeface.create(string, 0);
            }
            typedArrayObtainStyledAttributes.recycle();
            return null;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    void a(Typeface typeface) {
        this.v = typeface;
        this.u = typeface;
        f();
    }

    Typeface b() {
        return this.u != null ? this.u : Typeface.DEFAULT;
    }

    void b(float f) {
        float fA = android.support.v4.d.a.a(f, 0.0f, 1.0f);
        if (fA != this.e) {
            this.e = fA;
            i();
        }
    }

    final boolean a(int[] iArr) {
        this.H = iArr;
        if (!c()) {
            return false;
        }
        f();
        return true;
    }

    final boolean c() {
        return (this.n != null && this.n.isStateful()) || (this.m != null && this.m.isStateful());
    }

    float d() {
        return this.e;
    }

    float e() {
        return this.l;
    }

    private void i() {
        c(this.e);
    }

    private void c(float f) {
        d(f);
        this.s = a(this.q, this.r, f, this.K);
        this.t = a(this.o, this.p, f, this.K);
        e(a(this.k, this.l, f, this.L));
        if (this.n != this.m) {
            this.J.setColor(a(j(), k(), f));
        } else {
            this.J.setColor(k());
        }
        this.J.setShadowLayer(a(this.Q, this.M, f, (Interpolator) null), a(this.R, this.N, f, (Interpolator) null), a(this.S, this.O, f, (Interpolator) null), a(this.T, this.P, f));
        android.support.v4.view.s.c(this.f390c);
    }

    private int j() {
        return this.H != null ? this.m.getColorForState(this.H, 0) : this.m.getDefaultColor();
    }

    private int k() {
        return this.H != null ? this.n.getColorForState(this.H, 0) : this.n.getDefaultColor();
    }

    private void l() {
        float f = this.G;
        f(this.l);
        float fMeasureText = this.y != null ? this.J.measureText(this.y, 0, this.y.length()) : 0.0f;
        int iA = android.support.v4.view.d.a(this.j, this.z ? 1 : 0);
        switch (iA & 112) {
            case 48:
                this.p = this.g.top - this.J.ascent();
                break;
            case 80:
                this.p = this.g.bottom;
                break;
            default:
                this.p = (((this.J.descent() - this.J.ascent()) / 2.0f) - this.J.descent()) + this.g.centerY();
                break;
        }
        switch (iA & 8388615) {
            case 1:
                this.r = this.g.centerX() - (fMeasureText / 2.0f);
                break;
            case 5:
                this.r = this.g.right - fMeasureText;
                break;
            default:
                this.r = this.g.left;
                break;
        }
        f(this.k);
        float fMeasureText2 = this.y != null ? this.J.measureText(this.y, 0, this.y.length()) : 0.0f;
        int iA2 = android.support.v4.view.d.a(this.i, this.z ? 1 : 0);
        switch (iA2 & 112) {
            case 48:
                this.o = this.f.top - this.J.ascent();
                break;
            case 80:
                this.o = this.f.bottom;
                break;
            default:
                this.o = (((this.J.descent() - this.J.ascent()) / 2.0f) - this.J.descent()) + this.f.centerY();
                break;
        }
        switch (iA2 & 8388615) {
            case 1:
                this.q = this.f.centerX() - (fMeasureText2 / 2.0f);
                break;
            case 5:
                this.q = this.f.right - fMeasureText2;
                break;
            default:
                this.q = this.f.left;
                break;
        }
        n();
        e(f);
    }

    private void d(float f) {
        this.h.left = a(this.f.left, this.g.left, f, this.K);
        this.h.top = a(this.o, this.p, f, this.K);
        this.h.right = a(this.f.right, this.g.right, f, this.K);
        this.h.bottom = a(this.f.bottom, this.g.bottom, f, this.K);
    }

    public void a(Canvas canvas) {
        float fAscent;
        int iSave = canvas.save();
        if (this.y != null && this.f391d) {
            float f = this.s;
            float f2 = this.t;
            boolean z = this.A && this.B != null;
            if (z) {
                fAscent = this.D * this.F;
                float f3 = this.E * this.F;
            } else {
                fAscent = this.J.ascent() * this.F;
                float fDescent = this.J.descent() * this.F;
            }
            if (z) {
                f2 += fAscent;
            }
            if (this.F != 1.0f) {
                canvas.scale(this.F, this.F, f, f2);
            }
            if (z) {
                canvas.drawBitmap(this.B, f, f2, this.C);
            } else {
                canvas.drawText(this.y, 0, this.y.length(), f, f2, this.J);
            }
        }
        canvas.restoreToCount(iSave);
    }

    private boolean b(CharSequence charSequence) {
        return (android.support.v4.view.s.e(this.f390c) == 1 ? android.support.v4.f.c.f913d : android.support.v4.f.c.f912c).a(charSequence, 0, charSequence.length());
    }

    private void e(float f) {
        f(f);
        this.A = f388a && this.F != 1.0f;
        if (this.A) {
            m();
        }
        android.support.v4.view.s.c(this.f390c);
    }

    private boolean a(Typeface typeface, Typeface typeface2) {
        return !(typeface == null || typeface.equals(typeface2)) || (typeface == null && typeface2 != null);
    }

    private void f(float f) {
        float f2;
        boolean z;
        if (this.x != null) {
            float fWidth = this.g.width();
            float fWidth2 = this.f.width();
            if (a(f, this.l)) {
                f2 = this.l;
                this.F = 1.0f;
                if (a(this.w, this.u)) {
                    this.w = this.u;
                    z = true;
                } else {
                    z = false;
                }
            } else {
                f2 = this.k;
                if (a(this.w, this.v)) {
                    this.w = this.v;
                    z = true;
                } else {
                    z = false;
                }
                if (a(f, this.k)) {
                    this.F = 1.0f;
                } else {
                    this.F = f / this.k;
                }
                float f3 = this.l / this.k;
                fWidth = fWidth2 * f3 > fWidth ? Math.min(fWidth / f3, fWidth2) : fWidth2;
            }
            if (fWidth > 0.0f) {
                z = this.G != f2 || this.I || z;
                this.G = f2;
                this.I = false;
            }
            if (this.y == null || z) {
                this.J.setTextSize(this.G);
                this.J.setTypeface(this.w);
                this.J.setLinearText(this.F != 1.0f);
                CharSequence charSequenceEllipsize = TextUtils.ellipsize(this.x, this.J, fWidth, TextUtils.TruncateAt.END);
                if (!TextUtils.equals(charSequenceEllipsize, this.y)) {
                    this.y = charSequenceEllipsize;
                    this.z = b(this.y);
                }
            }
        }
    }

    private void m() {
        if (this.B == null && !this.f.isEmpty() && !TextUtils.isEmpty(this.y)) {
            c(0.0f);
            this.D = this.J.ascent();
            this.E = this.J.descent();
            int iRound = Math.round(this.J.measureText(this.y, 0, this.y.length()));
            int iRound2 = Math.round(this.E - this.D);
            if (iRound > 0 && iRound2 > 0) {
                this.B = Bitmap.createBitmap(iRound, iRound2, Bitmap.Config.ARGB_8888);
                new Canvas(this.B).drawText(this.y, 0, this.y.length(), 0.0f, iRound2 - this.J.descent(), this.J);
                if (this.C == null) {
                    this.C = new Paint(3);
                }
            }
        }
    }

    public void f() {
        if (this.f390c.getHeight() > 0 && this.f390c.getWidth() > 0) {
            l();
            i();
        }
    }

    void a(CharSequence charSequence) {
        if (charSequence == null || !charSequence.equals(this.x)) {
            this.x = charSequence;
            this.y = null;
            n();
            f();
        }
    }

    CharSequence g() {
        return this.x;
    }

    private void n() {
        if (this.B != null) {
            this.B.recycle();
            this.B = null;
        }
    }

    private static boolean a(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    ColorStateList h() {
        return this.n;
    }

    private static int a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((f2 * Color.blue(i)) + (Color.blue(i2) * f)));
    }

    private static float a(float f, float f2, float f3, Interpolator interpolator) {
        if (interpolator != null) {
            f3 = interpolator.getInterpolation(f3);
        }
        return a.a(f, f2, f3);
    }

    private static boolean a(Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }
}
