package com.google.android.material.b;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.h.r;
import androidx.core.widget.i;
import com.google.android.material.a;
import com.google.android.material.internal.e;
import com.google.android.material.internal.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends AppCompatButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f4835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4836b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PorterDuff.Mode f4837c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ColorStateList f4838e;
    private Drawable f;
    private int g;
    private int h;
    private int i;

    public a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.materialButtonStyle);
    }

    public a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayA = e.a(context, attributeSet, a.i.MaterialButton, i, a.h.Widget_MaterialComponents_Button, new int[0]);
        this.f4836b = typedArrayA.getDimensionPixelSize(a.i.MaterialButton_iconPadding, 0);
        this.f4837c = f.a(typedArrayA.getInt(a.i.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f4838e = com.google.android.material.f.a.a(getContext(), typedArrayA, a.i.MaterialButton_iconTint);
        this.f = com.google.android.material.f.a.b(getContext(), typedArrayA, a.i.MaterialButton_icon);
        this.i = typedArrayA.getInteger(a.i.MaterialButton_iconGravity, 1);
        this.g = typedArrayA.getDimensionPixelSize(a.i.MaterialButton_iconSize, 0);
        c cVar = new c(this);
        this.f4835a = cVar;
        cVar.a(typedArrayA);
        typedArrayA.recycle();
        setCompoundDrawablePadding(this.f4836b);
        b();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (Build.VERSION.SDK_INT >= 21 || !c()) {
            return;
        }
        this.f4835a.a(canvas);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.h.q
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (c()) {
            this.f4835a.a(colorStateList);
        } else if (this.f4835a != null) {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.h.q
    public ColorStateList getSupportBackgroundTintList() {
        if (c()) {
            return this.f4835a.c();
        }
        return super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.h.q
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (c()) {
            this.f4835a.a(mode);
        } else if (this.f4835a != null) {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.h.q
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (c()) {
            return this.f4835a.d();
        }
        return super.getSupportBackgroundTintMode();
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (c()) {
            this.f4835a.a(i);
        } else {
            super.setBackgroundColor(i);
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? androidx.appcompat.a.a.a.b(getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (c()) {
            if (drawable != getBackground()) {
                Log.i("MaterialButton", "Setting a custom background is not supported.");
                this.f4835a.a();
                super.setBackgroundDrawable(drawable);
                return;
            }
            getBackground().setState(drawable.getState());
            return;
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        c cVar;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT != 21 || (cVar = this.f4835a) == null) {
            return;
        }
        cVar.a(i4 - i2, i3 - i);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f == null || this.i != 2) {
            return;
        }
        int iMeasureText = (int) getPaint().measureText(getText().toString());
        int intrinsicWidth = this.g;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f.getIntrinsicWidth();
        }
        int measuredWidth = (((((getMeasuredWidth() - iMeasureText) - r.h(this)) - intrinsicWidth) - this.f4836b) - r.g(this)) / 2;
        if (a()) {
            measuredWidth = -measuredWidth;
        }
        if (this.h != measuredWidth) {
            this.h = measuredWidth;
            b();
        }
    }

    private boolean a() {
        return r.f(this) == 1;
    }

    void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setIconPadding(int i) {
        if (this.f4836b != i) {
            this.f4836b = i;
            setCompoundDrawablePadding(i);
        }
    }

    public int getIconPadding() {
        return this.f4836b;
    }

    public void setIconSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.g != i) {
            this.g = i;
            b();
        }
    }

    public int getIconSize() {
        return this.g;
    }

    public void setIcon(Drawable drawable) {
        if (this.f != drawable) {
            this.f = drawable;
            b();
        }
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? androidx.appcompat.a.a.a.b(getContext(), i) : null);
    }

    public Drawable getIcon() {
        return this.f;
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f4838e != colorStateList) {
            this.f4838e = colorStateList;
            b();
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(androidx.appcompat.a.a.a.a(getContext(), i));
    }

    public ColorStateList getIconTint() {
        return this.f4838e;
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f4837c != mode) {
            this.f4837c = mode;
            b();
        }
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f4837c;
    }

    private void b() {
        Drawable drawable = this.f;
        if (drawable != null) {
            Drawable drawableMutate = drawable.mutate();
            this.f = drawableMutate;
            androidx.core.graphics.drawable.a.a(drawableMutate, this.f4838e);
            PorterDuff.Mode mode = this.f4837c;
            if (mode != null) {
                androidx.core.graphics.drawable.a.a(this.f, mode);
            }
            int intrinsicWidth = this.g;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f.getIntrinsicWidth();
            }
            int intrinsicHeight = this.g;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f;
            int i = this.h;
            drawable2.setBounds(i, 0, intrinsicWidth + i, intrinsicHeight);
        }
        i.a(this, this.f, (Drawable) null, (Drawable) null, (Drawable) null);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (c()) {
            this.f4835a.b(colorStateList);
        }
    }

    public void setRippleColorResource(int i) {
        if (c()) {
            setRippleColor(androidx.appcompat.a.a.a.a(getContext(), i));
        }
    }

    public ColorStateList getRippleColor() {
        if (c()) {
            return this.f4835a.e();
        }
        return null;
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (c()) {
            this.f4835a.c(colorStateList);
        }
    }

    public void setStrokeColorResource(int i) {
        if (c()) {
            setStrokeColor(androidx.appcompat.a.a.a.a(getContext(), i));
        }
    }

    public ColorStateList getStrokeColor() {
        if (c()) {
            return this.f4835a.f();
        }
        return null;
    }

    public void setStrokeWidth(int i) {
        if (c()) {
            this.f4835a.b(i);
        }
    }

    public void setStrokeWidthResource(int i) {
        if (c()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    public int getStrokeWidth() {
        if (c()) {
            return this.f4835a.g();
        }
        return 0;
    }

    public void setCornerRadius(int i) {
        if (c()) {
            this.f4835a.c(i);
        }
    }

    public void setCornerRadiusResource(int i) {
        if (c()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    public int getCornerRadius() {
        if (c()) {
            return this.f4835a.h();
        }
        return 0;
    }

    public int getIconGravity() {
        return this.i;
    }

    public void setIconGravity(int i) {
        this.i = i;
    }

    private boolean c() {
        c cVar = this.f4835a;
        return (cVar == null || cVar.b()) ? false : true;
    }
}
