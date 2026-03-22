package android.support.design.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.design.a;
import android.support.v7.widget.LinearLayoutCompat;
import android.util.AttributeSet;
import android.view.Gravity;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a extends LinearLayoutCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f252a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Drawable f254c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Rect f255d;
    private final Rect e;
    private int f;

    public a(Context context) {
        this(context, null);
    }

    public a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f255d = new Rect();
        this.e = new Rect();
        this.f = 119;
        this.f252a = true;
        this.f253b = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.ForegroundLinearLayout, i, 0);
        this.f = typedArrayObtainStyledAttributes.getInt(a.j.ForegroundLinearLayout_android_foregroundGravity, this.f);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(a.j.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f252a = typedArrayObtainStyledAttributes.getBoolean(a.j.ForegroundLinearLayout_foregroundInsidePadding, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f;
    }

    @Override // android.view.View
    public void setForegroundGravity(int i) {
        if (this.f != i) {
            int i2 = (8388615 & i) == 0 ? 8388611 | i : i;
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.f = i2;
            if (this.f == 119 && this.f254c != null) {
                this.f254c.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f254c;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.f254c != null) {
            this.f254c.jumpToCurrentState();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f254c != null && this.f254c.isStateful()) {
            this.f254c.setState(getDrawableState());
        }
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        if (this.f254c != drawable) {
            if (this.f254c != null) {
                this.f254c.setCallback(null);
                unscheduleDrawable(this.f254c);
            }
            this.f254c = drawable;
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
        return this.f254c;
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f253b |= z;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f253b = true;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f254c != null) {
            Drawable drawable = this.f254c;
            if (this.f253b) {
                this.f253b = false;
                Rect rect = this.f255d;
                Rect rect2 = this.e;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f252a) {
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
        if (this.f254c != null) {
            this.f254c.setHotspot(f, f2);
        }
    }
}
