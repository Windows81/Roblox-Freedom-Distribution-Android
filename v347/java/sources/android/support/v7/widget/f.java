package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v7.a.a;
import android.util.AttributeSet;
import android.widget.CompoundButton;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CompoundButton f1644a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ColorStateList f1645b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PorterDuff.Mode f1646c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1647d = false;
    private boolean e = false;
    private boolean f;

    f(CompoundButton compoundButton) {
        this.f1644a = compoundButton;
    }

    void a(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray typedArrayObtainStyledAttributes = this.f1644a.getContext().obtainStyledAttributes(attributeSet, a.j.CompoundButton, i, 0);
        try {
            if (typedArrayObtainStyledAttributes.hasValue(a.j.CompoundButton_android_button) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(a.j.CompoundButton_android_button, 0)) != 0) {
                this.f1644a.setButtonDrawable(android.support.v7.b.a.b.b(this.f1644a.getContext(), resourceId));
            }
            if (typedArrayObtainStyledAttributes.hasValue(a.j.CompoundButton_buttonTint)) {
                android.support.v4.widget.e.a(this.f1644a, typedArrayObtainStyledAttributes.getColorStateList(a.j.CompoundButton_buttonTint));
            }
            if (typedArrayObtainStyledAttributes.hasValue(a.j.CompoundButton_buttonTintMode)) {
                android.support.v4.widget.e.a(this.f1644a, DrawableUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(a.j.CompoundButton_buttonTintMode, -1), null));
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    void a(ColorStateList colorStateList) {
        this.f1645b = colorStateList;
        this.f1647d = true;
        d();
    }

    ColorStateList a() {
        return this.f1645b;
    }

    void a(PorterDuff.Mode mode) {
        this.f1646c = mode;
        this.e = true;
        d();
    }

    PorterDuff.Mode b() {
        return this.f1646c;
    }

    void c() {
        if (this.f) {
            this.f = false;
        } else {
            this.f = true;
            d();
        }
    }

    void d() {
        Drawable drawableA = android.support.v4.widget.e.a(this.f1644a);
        if (drawableA != null) {
            if (this.f1647d || this.e) {
                Drawable drawableMutate = android.support.v4.b.a.a.g(drawableA).mutate();
                if (this.f1647d) {
                    android.support.v4.b.a.a.a(drawableMutate, this.f1645b);
                }
                if (this.e) {
                    android.support.v4.b.a.a.a(drawableMutate, this.f1646c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.f1644a.getDrawableState());
                }
                this.f1644a.setButtonDrawable(drawableMutate);
            }
        }
    }

    int a(int i) {
        Drawable drawableA;
        if (Build.VERSION.SDK_INT < 17 && (drawableA = android.support.v4.widget.e.a(this.f1644a)) != null) {
            return i + drawableA.getIntrinsicWidth();
        }
        return i;
    }
}
