package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.appcompat.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CompoundButton f981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ColorStateList f982b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PorterDuff.Mode f983c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f984d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f985e = false;
    private boolean f;

    d(CompoundButton compoundButton) {
        this.f981a = compoundButton;
    }

    void a(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray typedArrayObtainStyledAttributes = this.f981a.getContext().obtainStyledAttributes(attributeSet, a.j.CompoundButton, i, 0);
        try {
            if (typedArrayObtainStyledAttributes.hasValue(a.j.CompoundButton_android_button) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(a.j.CompoundButton_android_button, 0)) != 0) {
                this.f981a.setButtonDrawable(androidx.appcompat.a.a.a.b(this.f981a.getContext(), resourceId));
            }
            if (typedArrayObtainStyledAttributes.hasValue(a.j.CompoundButton_buttonTint)) {
                androidx.core.widget.c.a(this.f981a, typedArrayObtainStyledAttributes.getColorStateList(a.j.CompoundButton_buttonTint));
            }
            if (typedArrayObtainStyledAttributes.hasValue(a.j.CompoundButton_buttonTintMode)) {
                androidx.core.widget.c.a(this.f981a, DrawableUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(a.j.CompoundButton_buttonTintMode, -1), null));
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    void a(ColorStateList colorStateList) {
        this.f982b = colorStateList;
        this.f984d = true;
        d();
    }

    ColorStateList a() {
        return this.f982b;
    }

    void a(PorterDuff.Mode mode) {
        this.f983c = mode;
        this.f985e = true;
        d();
    }

    PorterDuff.Mode b() {
        return this.f983c;
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
        Drawable drawableA = androidx.core.widget.c.a(this.f981a);
        if (drawableA != null) {
            if (this.f984d || this.f985e) {
                Drawable drawableMutate = androidx.core.graphics.drawable.a.g(drawableA).mutate();
                if (this.f984d) {
                    androidx.core.graphics.drawable.a.a(drawableMutate, this.f982b);
                }
                if (this.f985e) {
                    androidx.core.graphics.drawable.a.a(drawableMutate, this.f983c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.f981a.getDrawableState());
                }
                this.f981a.setButtonDrawable(drawableMutate);
            }
        }
    }

    int a(int i) {
        Drawable drawableA;
        return (Build.VERSION.SDK_INT >= 17 || (drawableA = androidx.core.widget.c.a(this.f981a)) == null) ? i : i + drawableA.getIntrinsicWidth();
    }
}
