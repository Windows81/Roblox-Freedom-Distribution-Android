package android.support.v7.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.a.a.b;
import android.support.v7.a.a;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final TextView f1672a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private y f1673b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private y f1674c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private y f1675d;
    private y e;
    private final m f;
    private int g = 0;
    private Typeface h;
    private boolean i;

    static k a(TextView textView) {
        return Build.VERSION.SDK_INT >= 17 ? new l(textView) : new k(textView);
    }

    k(TextView textView) {
        this.f1672a = textView;
        this.f = new m(this.f1672a);
    }

    @SuppressLint({"NewApi"})
    void a(AttributeSet attributeSet, int i) {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        boolean z;
        boolean z2;
        ColorStateList colorStateList3 = null;
        Context context = this.f1672a.getContext();
        AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, a.j.AppCompatTextHelper, i, 0);
        int resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTextHelper_android_textAppearance, -1);
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextHelper_android_drawableLeft)) {
            this.f1673b = a(context, appCompatDrawableManager, tintTypedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextHelper_android_drawableTop)) {
            this.f1674c = a(context, appCompatDrawableManager, tintTypedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextHelper_android_drawableRight)) {
            this.f1675d = a(context, appCompatDrawableManager, tintTypedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextHelper_android_drawableBottom)) {
            this.e = a(context, appCompatDrawableManager, tintTypedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTextHelper_android_drawableBottom, 0));
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        boolean z3 = this.f1672a.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (resourceId != -1) {
            TintTypedArray tintTypedArrayObtainStyledAttributes2 = TintTypedArray.obtainStyledAttributes(context, resourceId, a.j.TextAppearance);
            if (z3 || !tintTypedArrayObtainStyledAttributes2.hasValue(a.j.TextAppearance_textAllCaps)) {
                z = false;
                z2 = false;
            } else {
                z2 = tintTypedArrayObtainStyledAttributes2.getBoolean(a.j.TextAppearance_textAllCaps, false);
                z = true;
            }
            a(context, tintTypedArrayObtainStyledAttributes2);
            if (Build.VERSION.SDK_INT < 23) {
                colorStateList2 = tintTypedArrayObtainStyledAttributes2.hasValue(a.j.TextAppearance_android_textColor) ? tintTypedArrayObtainStyledAttributes2.getColorStateList(a.j.TextAppearance_android_textColor) : null;
                colorStateList = tintTypedArrayObtainStyledAttributes2.hasValue(a.j.TextAppearance_android_textColorHint) ? tintTypedArrayObtainStyledAttributes2.getColorStateList(a.j.TextAppearance_android_textColorHint) : null;
                if (tintTypedArrayObtainStyledAttributes2.hasValue(a.j.TextAppearance_android_textColorLink)) {
                    colorStateList3 = tintTypedArrayObtainStyledAttributes2.getColorStateList(a.j.TextAppearance_android_textColorLink);
                }
            } else {
                colorStateList = null;
                colorStateList2 = null;
            }
            tintTypedArrayObtainStyledAttributes2.recycle();
        } else {
            colorStateList = null;
            colorStateList2 = null;
            z = false;
            z2 = false;
        }
        TintTypedArray tintTypedArrayObtainStyledAttributes3 = TintTypedArray.obtainStyledAttributes(context, attributeSet, a.j.TextAppearance, i, 0);
        if (!z3 && tintTypedArrayObtainStyledAttributes3.hasValue(a.j.TextAppearance_textAllCaps)) {
            z2 = tintTypedArrayObtainStyledAttributes3.getBoolean(a.j.TextAppearance_textAllCaps, false);
            z = true;
        }
        if (Build.VERSION.SDK_INT < 23) {
            if (tintTypedArrayObtainStyledAttributes3.hasValue(a.j.TextAppearance_android_textColor)) {
                colorStateList2 = tintTypedArrayObtainStyledAttributes3.getColorStateList(a.j.TextAppearance_android_textColor);
            }
            if (tintTypedArrayObtainStyledAttributes3.hasValue(a.j.TextAppearance_android_textColorHint)) {
                colorStateList = tintTypedArrayObtainStyledAttributes3.getColorStateList(a.j.TextAppearance_android_textColorHint);
            }
            if (tintTypedArrayObtainStyledAttributes3.hasValue(a.j.TextAppearance_android_textColorLink)) {
                colorStateList3 = tintTypedArrayObtainStyledAttributes3.getColorStateList(a.j.TextAppearance_android_textColorLink);
            }
        }
        a(context, tintTypedArrayObtainStyledAttributes3);
        tintTypedArrayObtainStyledAttributes3.recycle();
        if (colorStateList2 != null) {
            this.f1672a.setTextColor(colorStateList2);
        }
        if (colorStateList != null) {
            this.f1672a.setHintTextColor(colorStateList);
        }
        if (colorStateList3 != null) {
            this.f1672a.setLinkTextColor(colorStateList3);
        }
        if (!z3 && z) {
            a(z2);
        }
        if (this.h != null) {
            this.f1672a.setTypeface(this.h, this.g);
        }
        this.f.a(attributeSet, i);
        if (android.support.v4.widget.b.f1146a && this.f.a() != 0) {
            int[] iArrE = this.f.e();
            if (iArrE.length > 0) {
                if (this.f1672a.getAutoSizeStepGranularity() != -1.0f) {
                    this.f1672a.setAutoSizeTextTypeUniformWithConfiguration(this.f.c(), this.f.d(), this.f.b(), 0);
                } else {
                    this.f1672a.setAutoSizeTextTypeUniformWithPresetSizes(iArrE, 0);
                }
            }
        }
    }

    private void a(Context context, TintTypedArray tintTypedArray) {
        String string;
        this.g = tintTypedArray.getInt(a.j.TextAppearance_android_textStyle, this.g);
        if (tintTypedArray.hasValue(a.j.TextAppearance_android_fontFamily) || tintTypedArray.hasValue(a.j.TextAppearance_fontFamily)) {
            this.h = null;
            int i = tintTypedArray.hasValue(a.j.TextAppearance_fontFamily) ? a.j.TextAppearance_fontFamily : a.j.TextAppearance_android_fontFamily;
            if (!context.isRestricted()) {
                final WeakReference weakReference = new WeakReference(this.f1672a);
                try {
                    this.h = tintTypedArray.getFont(i, this.g, new b.a() { // from class: android.support.v7.widget.k.1
                        @Override // android.support.v4.a.a.b.a
                        public void a(Typeface typeface) {
                            k.this.a((WeakReference<TextView>) weakReference, typeface);
                        }

                        @Override // android.support.v4.a.a.b.a
                        public void a(int i2) {
                        }
                    });
                    this.i = this.h == null;
                } catch (Resources.NotFoundException e) {
                } catch (UnsupportedOperationException e2) {
                }
            }
            if (this.h == null && (string = tintTypedArray.getString(i)) != null) {
                this.h = Typeface.create(string, this.g);
            }
            return;
        }
        if (tintTypedArray.hasValue(a.j.TextAppearance_android_typeface)) {
            this.i = false;
            switch (tintTypedArray.getInt(a.j.TextAppearance_android_typeface, 1)) {
                case 1:
                    this.h = Typeface.SANS_SERIF;
                    break;
                case 2:
                    this.h = Typeface.SERIF;
                    break;
                case 3:
                    this.h = Typeface.MONOSPACE;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.i) {
            this.h = typeface;
            TextView textView = weakReference.get();
            if (textView != null) {
                textView.setTypeface(typeface, this.g);
            }
        }
    }

    void a(Context context, int i) {
        ColorStateList colorStateList;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, i, a.j.TextAppearance);
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.TextAppearance_textAllCaps)) {
            a(tintTypedArrayObtainStyledAttributes.getBoolean(a.j.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && tintTypedArrayObtainStyledAttributes.hasValue(a.j.TextAppearance_android_textColor) && (colorStateList = tintTypedArrayObtainStyledAttributes.getColorStateList(a.j.TextAppearance_android_textColor)) != null) {
            this.f1672a.setTextColor(colorStateList);
        }
        a(context, tintTypedArrayObtainStyledAttributes);
        tintTypedArrayObtainStyledAttributes.recycle();
        if (this.h != null) {
            this.f1672a.setTypeface(this.h, this.g);
        }
    }

    void a(boolean z) {
        this.f1672a.setAllCaps(z);
    }

    void a() {
        if (this.f1673b != null || this.f1674c != null || this.f1675d != null || this.e != null) {
            Drawable[] compoundDrawables = this.f1672a.getCompoundDrawables();
            a(compoundDrawables[0], this.f1673b);
            a(compoundDrawables[1], this.f1674c);
            a(compoundDrawables[2], this.f1675d);
            a(compoundDrawables[3], this.e);
        }
    }

    final void a(Drawable drawable, y yVar) {
        if (drawable != null && yVar != null) {
            AppCompatDrawableManager.tintDrawable(drawable, yVar, this.f1672a.getDrawableState());
        }
    }

    protected static y a(Context context, AppCompatDrawableManager appCompatDrawableManager, int i) {
        ColorStateList tintList = appCompatDrawableManager.getTintList(context, i);
        if (tintList == null) {
            return null;
        }
        y yVar = new y();
        yVar.f1731d = true;
        yVar.f1728a = tintList;
        return yVar;
    }

    void a(boolean z, int i, int i2, int i3, int i4) {
        if (!android.support.v4.widget.b.f1146a) {
            b();
        }
    }

    void a(int i, float f) {
        if (!android.support.v4.widget.b.f1146a && !c()) {
            b(i, f);
        }
    }

    void b() {
        this.f.f();
    }

    boolean c() {
        return this.f.g();
    }

    private void b(int i, float f) {
        this.f.a(i, f);
    }

    void a(int i) {
        this.f.a(i);
    }

    void a(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        this.f.a(i, i2, i3, i4);
    }

    void a(int[] iArr, int i) throws IllegalArgumentException {
        this.f.a(iArr, i);
    }

    int d() {
        return this.f.a();
    }

    int e() {
        return this.f.b();
    }

    int f() {
        return this.f.c();
    }

    int g() {
        return this.f.d();
    }

    int[] h() {
        return this.f.e();
    }
}
