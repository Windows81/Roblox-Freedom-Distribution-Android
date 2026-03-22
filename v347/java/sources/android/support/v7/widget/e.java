package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v7.a.a;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f1640a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private y f1643d;
    private y e;
    private y f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1642c = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AppCompatDrawableManager f1641b = AppCompatDrawableManager.get();

    e(View view) {
        this.f1640a = view;
    }

    void a(AttributeSet attributeSet, int i) {
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.f1640a.getContext(), attributeSet, a.j.ViewBackgroundHelper, i, 0);
        try {
            if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.ViewBackgroundHelper_android_background)) {
                this.f1642c = tintTypedArrayObtainStyledAttributes.getResourceId(a.j.ViewBackgroundHelper_android_background, -1);
                ColorStateList tintList = this.f1641b.getTintList(this.f1640a.getContext(), this.f1642c);
                if (tintList != null) {
                    b(tintList);
                }
            }
            if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.ViewBackgroundHelper_backgroundTint)) {
                android.support.v4.view.s.a(this.f1640a, tintTypedArrayObtainStyledAttributes.getColorStateList(a.j.ViewBackgroundHelper_backgroundTint));
            }
            if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.ViewBackgroundHelper_backgroundTintMode)) {
                android.support.v4.view.s.a(this.f1640a, DrawableUtils.parseTintMode(tintTypedArrayObtainStyledAttributes.getInt(a.j.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            tintTypedArrayObtainStyledAttributes.recycle();
        }
    }

    void a(int i) {
        this.f1642c = i;
        b(this.f1641b != null ? this.f1641b.getTintList(this.f1640a.getContext(), i) : null);
        c();
    }

    void a(Drawable drawable) {
        this.f1642c = -1;
        b((ColorStateList) null);
        c();
    }

    void a(ColorStateList colorStateList) {
        if (this.e == null) {
            this.e = new y();
        }
        this.e.f1728a = colorStateList;
        this.e.f1731d = true;
        c();
    }

    ColorStateList a() {
        if (this.e != null) {
            return this.e.f1728a;
        }
        return null;
    }

    void a(PorterDuff.Mode mode) {
        if (this.e == null) {
            this.e = new y();
        }
        this.e.f1729b = mode;
        this.e.f1730c = true;
        c();
    }

    PorterDuff.Mode b() {
        if (this.e != null) {
            return this.e.f1729b;
        }
        return null;
    }

    void c() {
        Drawable background = this.f1640a.getBackground();
        if (background != null) {
            if (!d() || !b(background)) {
                if (this.e != null) {
                    AppCompatDrawableManager.tintDrawable(background, this.e, this.f1640a.getDrawableState());
                } else if (this.f1643d != null) {
                    AppCompatDrawableManager.tintDrawable(background, this.f1643d, this.f1640a.getDrawableState());
                }
            }
        }
    }

    void b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1643d == null) {
                this.f1643d = new y();
            }
            this.f1643d.f1728a = colorStateList;
            this.f1643d.f1731d = true;
        } else {
            this.f1643d = null;
        }
        c();
    }

    private boolean d() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.f1643d != null : i == 21;
    }

    private boolean b(Drawable drawable) {
        if (this.f == null) {
            this.f = new y();
        }
        y yVar = this.f;
        yVar.a();
        ColorStateList colorStateListR = android.support.v4.view.s.r(this.f1640a);
        if (colorStateListR != null) {
            yVar.f1731d = true;
            yVar.f1728a = colorStateListR;
        }
        PorterDuff.Mode modeS = android.support.v4.view.s.s(this.f1640a);
        if (modeS != null) {
            yVar.f1730c = true;
            yVar.f1729b = modeS;
        }
        if (!yVar.f1731d && !yVar.f1730c) {
            return false;
        }
        AppCompatDrawableManager.tintDrawable(drawable, yVar, this.f1640a.getDrawableState());
        return true;
    }
}
