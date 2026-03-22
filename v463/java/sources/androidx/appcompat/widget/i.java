package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.a;
import androidx.core.a.a.f;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private p f997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private p f998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private p f999d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private p f1000e;
    private p f;
    private p g;
    private final j h;
    private int i = 0;
    private Typeface j;
    private boolean k;

    i(TextView textView) {
        this.f996a = textView;
        this.h = new j(textView);
    }

    void a(AttributeSet attributeSet, int i) {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        boolean z;
        boolean z2;
        Context context = this.f996a.getContext();
        AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, a.j.AppCompatTextHelper, i, 0);
        int resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTextHelper_android_textAppearance, -1);
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextHelper_android_drawableLeft)) {
            this.f997b = a(context, appCompatDrawableManager, tintTypedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextHelper_android_drawableTop)) {
            this.f998c = a(context, appCompatDrawableManager, tintTypedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextHelper_android_drawableRight)) {
            this.f999d = a(context, appCompatDrawableManager, tintTypedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextHelper_android_drawableBottom)) {
            this.f1000e = a(context, appCompatDrawableManager, tintTypedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTextHelper_android_drawableBottom, 0));
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextHelper_android_drawableStart)) {
                this.f = a(context, appCompatDrawableManager, tintTypedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTextHelper_android_drawableStart, 0));
            }
            if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextHelper_android_drawableEnd)) {
                this.g = a(context, appCompatDrawableManager, tintTypedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTextHelper_android_drawableEnd, 0));
            }
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        boolean z3 = this.f996a.getTransformationMethod() instanceof PasswordTransformationMethod;
        boolean z4 = true;
        if (resourceId != -1) {
            TintTypedArray tintTypedArrayObtainStyledAttributes2 = TintTypedArray.obtainStyledAttributes(context, resourceId, a.j.TextAppearance);
            if (z3 || !tintTypedArrayObtainStyledAttributes2.hasValue(a.j.TextAppearance_textAllCaps)) {
                z = false;
                z2 = false;
            } else {
                z = tintTypedArrayObtainStyledAttributes2.getBoolean(a.j.TextAppearance_textAllCaps, false);
                z2 = true;
            }
            a(context, tintTypedArrayObtainStyledAttributes2);
            if (Build.VERSION.SDK_INT < 23) {
                ColorStateList colorStateList3 = tintTypedArrayObtainStyledAttributes2.hasValue(a.j.TextAppearance_android_textColor) ? tintTypedArrayObtainStyledAttributes2.getColorStateList(a.j.TextAppearance_android_textColor) : null;
                colorStateList2 = tintTypedArrayObtainStyledAttributes2.hasValue(a.j.TextAppearance_android_textColorHint) ? tintTypedArrayObtainStyledAttributes2.getColorStateList(a.j.TextAppearance_android_textColorHint) : null;
                ColorStateList colorStateList4 = colorStateList3;
                colorStateList = tintTypedArrayObtainStyledAttributes2.hasValue(a.j.TextAppearance_android_textColorLink) ? tintTypedArrayObtainStyledAttributes2.getColorStateList(a.j.TextAppearance_android_textColorLink) : null;
                colorStateList = colorStateList4;
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
        if (z3 || !tintTypedArrayObtainStyledAttributes3.hasValue(a.j.TextAppearance_textAllCaps)) {
            z4 = z2;
        } else {
            z = tintTypedArrayObtainStyledAttributes3.getBoolean(a.j.TextAppearance_textAllCaps, false);
        }
        if (Build.VERSION.SDK_INT < 23) {
            if (tintTypedArrayObtainStyledAttributes3.hasValue(a.j.TextAppearance_android_textColor)) {
                colorStateList = tintTypedArrayObtainStyledAttributes3.getColorStateList(a.j.TextAppearance_android_textColor);
            }
            if (tintTypedArrayObtainStyledAttributes3.hasValue(a.j.TextAppearance_android_textColorHint)) {
                colorStateList2 = tintTypedArrayObtainStyledAttributes3.getColorStateList(a.j.TextAppearance_android_textColorHint);
            }
            if (tintTypedArrayObtainStyledAttributes3.hasValue(a.j.TextAppearance_android_textColorLink)) {
                colorStateList = tintTypedArrayObtainStyledAttributes3.getColorStateList(a.j.TextAppearance_android_textColorLink);
            }
        }
        if (Build.VERSION.SDK_INT >= 28 && tintTypedArrayObtainStyledAttributes3.hasValue(a.j.TextAppearance_android_textSize) && tintTypedArrayObtainStyledAttributes3.getDimensionPixelSize(a.j.TextAppearance_android_textSize, -1) == 0) {
            this.f996a.setTextSize(0, 0.0f);
        }
        a(context, tintTypedArrayObtainStyledAttributes3);
        tintTypedArrayObtainStyledAttributes3.recycle();
        if (colorStateList != null) {
            this.f996a.setTextColor(colorStateList);
        }
        if (colorStateList2 != null) {
            this.f996a.setHintTextColor(colorStateList2);
        }
        if (colorStateList != null) {
            this.f996a.setLinkTextColor(colorStateList);
        }
        if (!z3 && z4) {
            a(z);
        }
        Typeface typeface = this.j;
        if (typeface != null) {
            this.f996a.setTypeface(typeface, this.i);
        }
        this.h.a(attributeSet, i);
        if (androidx.core.widget.b.f1532d && this.h.a() != 0) {
            int[] iArrE = this.h.e();
            if (iArrE.length > 0) {
                if (this.f996a.getAutoSizeStepGranularity() != -1.0f) {
                    this.f996a.setAutoSizeTextTypeUniformWithConfiguration(this.h.c(), this.h.d(), this.h.b(), 0);
                } else {
                    this.f996a.setAutoSizeTextTypeUniformWithPresetSizes(iArrE, 0);
                }
            }
        }
        TintTypedArray tintTypedArrayObtainStyledAttributes4 = TintTypedArray.obtainStyledAttributes(context, attributeSet, a.j.AppCompatTextView);
        int dimensionPixelSize = tintTypedArrayObtainStyledAttributes4.getDimensionPixelSize(a.j.AppCompatTextView_firstBaselineToTopHeight, -1);
        int dimensionPixelSize2 = tintTypedArrayObtainStyledAttributes4.getDimensionPixelSize(a.j.AppCompatTextView_lastBaselineToBottomHeight, -1);
        int dimensionPixelSize3 = tintTypedArrayObtainStyledAttributes4.getDimensionPixelSize(a.j.AppCompatTextView_lineHeight, -1);
        tintTypedArrayObtainStyledAttributes4.recycle();
        if (dimensionPixelSize != -1) {
            androidx.core.widget.i.b(this.f996a, dimensionPixelSize);
        }
        if (dimensionPixelSize2 != -1) {
            androidx.core.widget.i.c(this.f996a, dimensionPixelSize2);
        }
        if (dimensionPixelSize3 != -1) {
            androidx.core.widget.i.d(this.f996a, dimensionPixelSize3);
        }
    }

    private void a(Context context, TintTypedArray tintTypedArray) {
        String string;
        this.i = tintTypedArray.getInt(a.j.TextAppearance_android_textStyle, this.i);
        if (tintTypedArray.hasValue(a.j.TextAppearance_android_fontFamily) || tintTypedArray.hasValue(a.j.TextAppearance_fontFamily)) {
            this.j = null;
            int i = tintTypedArray.hasValue(a.j.TextAppearance_fontFamily) ? a.j.TextAppearance_fontFamily : a.j.TextAppearance_android_fontFamily;
            if (!context.isRestricted()) {
                final WeakReference weakReference = new WeakReference(this.f996a);
                try {
                    Typeface font = tintTypedArray.getFont(i, this.i, new f.a() { // from class: androidx.appcompat.widget.i.1
                        @Override // androidx.core.a.a.f.a
                        public void a(int i2) {
                        }

                        @Override // androidx.core.a.a.f.a
                        public void a(Typeface typeface) {
                            i.this.a(weakReference, typeface);
                        }
                    });
                    this.j = font;
                    this.k = font == null;
                } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
                }
            }
            if (this.j != null || (string = tintTypedArray.getString(i)) == null) {
                return;
            }
            this.j = Typeface.create(string, this.i);
            return;
        }
        if (tintTypedArray.hasValue(a.j.TextAppearance_android_typeface)) {
            this.k = false;
            int i2 = tintTypedArray.getInt(a.j.TextAppearance_android_typeface, 1);
            if (i2 == 1) {
                this.j = Typeface.SANS_SERIF;
            } else if (i2 == 2) {
                this.j = Typeface.SERIF;
            } else {
                if (i2 != 3) {
                    return;
                }
                this.j = Typeface.MONOSPACE;
            }
        }
    }

    void a(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.k) {
            this.j = typeface;
            TextView textView = weakReference.get();
            if (textView != null) {
                textView.setTypeface(typeface, this.i);
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
            this.f996a.setTextColor(colorStateList);
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.TextAppearance_android_textSize) && tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.TextAppearance_android_textSize, -1) == 0) {
            this.f996a.setTextSize(0, 0.0f);
        }
        a(context, tintTypedArrayObtainStyledAttributes);
        tintTypedArrayObtainStyledAttributes.recycle();
        Typeface typeface = this.j;
        if (typeface != null) {
            this.f996a.setTypeface(typeface, this.i);
        }
    }

    void a(boolean z) {
        this.f996a.setAllCaps(z);
    }

    void a() {
        if (this.f997b != null || this.f998c != null || this.f999d != null || this.f1000e != null) {
            Drawable[] compoundDrawables = this.f996a.getCompoundDrawables();
            a(compoundDrawables[0], this.f997b);
            a(compoundDrawables[1], this.f998c);
            a(compoundDrawables[2], this.f999d);
            a(compoundDrawables[3], this.f1000e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f == null && this.g == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.f996a.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.f);
            a(compoundDrawablesRelative[2], this.g);
        }
    }

    private void a(Drawable drawable, p pVar) {
        if (drawable == null || pVar == null) {
            return;
        }
        AppCompatDrawableManager.tintDrawable(drawable, pVar, this.f996a.getDrawableState());
    }

    private static p a(Context context, AppCompatDrawableManager appCompatDrawableManager, int i) {
        ColorStateList tintList = appCompatDrawableManager.getTintList(context, i);
        if (tintList == null) {
            return null;
        }
        p pVar = new p();
        pVar.f1029d = true;
        pVar.f1026a = tintList;
        return pVar;
    }

    void a(boolean z, int i, int i2, int i3, int i4) {
        if (androidx.core.widget.b.f1532d) {
            return;
        }
        b();
    }

    void a(int i, float f) {
        if (androidx.core.widget.b.f1532d || c()) {
            return;
        }
        b(i, f);
    }

    void b() {
        this.h.f();
    }

    boolean c() {
        return this.h.g();
    }

    private void b(int i, float f) {
        this.h.a(i, f);
    }

    void a(int i) {
        this.h.a(i);
    }

    void a(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        this.h.a(i, i2, i3, i4);
    }

    void a(int[] iArr, int i) throws IllegalArgumentException {
        this.h.a(iArr, i);
    }

    int d() {
        return this.h.a();
    }

    int e() {
        return this.h.b();
    }

    int f() {
        return this.h.c();
    }

    int g() {
        return this.h.d();
    }

    int[] h() {
        return this.h.e();
    }
}
