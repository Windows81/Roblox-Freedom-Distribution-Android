package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.google.android.material.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends LinearLayoutCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f5000a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f5001b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Drawable f5002c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Rect f5003d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Rect f5004e;
    private int f;

    public c(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public c(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5003d = new Rect();
        this.f5004e = new Rect();
        this.f = 119;
        this.f5000a = true;
        this.f5001b = false;
        TypedArray typedArrayA = e.a(context, attributeSet, a.i.ForegroundLinearLayout, i, 0, new int[0]);
        this.f = typedArrayA.getInt(a.i.ForegroundLinearLayout_android_foregroundGravity, this.f);
        Drawable drawable = typedArrayA.getDrawable(a.i.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f5000a = typedArrayA.getBoolean(a.i.ForegroundLinearLayout_foregroundInsidePadding, true);
        typedArrayA.recycle();
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f;
    }

    @Override // android.view.View
    public void setForegroundGravity(int i) {
        if (this.f != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.f = i;
            if (i == 119 && this.f5002c != null) {
                this.f5002c.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f5002c;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f5002c;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f5002c;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f5002c.setState(getDrawableState());
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f5002c;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f5002c);
            }
            this.f5002c = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f5002c;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f5001b = z | this.f5001b;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f5001b = true;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f5002c;
        if (drawable != null) {
            if (this.f5001b) {
                this.f5001b = false;
                Rect rect = this.f5003d;
                Rect rect2 = this.f5004e;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f5000a) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f5002c;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }
}
