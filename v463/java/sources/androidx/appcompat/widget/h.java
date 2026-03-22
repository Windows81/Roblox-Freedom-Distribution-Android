package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class h extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SeekBar f991a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Drawable f992b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ColorStateList f993c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PorterDuff.Mode f994d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f995e;
    private boolean f;

    h(SeekBar seekBar) {
        super(seekBar);
        this.f993c = null;
        this.f994d = null;
        this.f995e = false;
        this.f = false;
        this.f991a = seekBar;
    }

    @Override // androidx.appcompat.widget.g
    void a(AttributeSet attributeSet, int i) {
        super.a(attributeSet, i);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.f991a.getContext(), attributeSet, a.j.AppCompatSeekBar, i, 0);
        Drawable drawableIfKnown = tintTypedArrayObtainStyledAttributes.getDrawableIfKnown(a.j.AppCompatSeekBar_android_thumb);
        if (drawableIfKnown != null) {
            this.f991a.setThumb(drawableIfKnown);
        }
        a(tintTypedArrayObtainStyledAttributes.getDrawable(a.j.AppCompatSeekBar_tickMark));
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatSeekBar_tickMarkTintMode)) {
            this.f994d = DrawableUtils.parseTintMode(tintTypedArrayObtainStyledAttributes.getInt(a.j.AppCompatSeekBar_tickMarkTintMode, -1), this.f994d);
            this.f = true;
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatSeekBar_tickMarkTint)) {
            this.f993c = tintTypedArrayObtainStyledAttributes.getColorStateList(a.j.AppCompatSeekBar_tickMarkTint);
            this.f995e = true;
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        d();
    }

    void a(Drawable drawable) {
        Drawable drawable2 = this.f992b;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f992b = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f991a);
            androidx.core.graphics.drawable.a.b(drawable, androidx.core.h.r.f(this.f991a));
            if (drawable.isStateful()) {
                drawable.setState(this.f991a.getDrawableState());
            }
            d();
        }
        this.f991a.invalidate();
    }

    private void d() {
        if (this.f992b != null) {
            if (this.f995e || this.f) {
                Drawable drawableG = androidx.core.graphics.drawable.a.g(this.f992b.mutate());
                this.f992b = drawableG;
                if (this.f995e) {
                    androidx.core.graphics.drawable.a.a(drawableG, this.f993c);
                }
                if (this.f) {
                    androidx.core.graphics.drawable.a.a(this.f992b, this.f994d);
                }
                if (this.f992b.isStateful()) {
                    this.f992b.setState(this.f991a.getDrawableState());
                }
            }
        }
    }

    void b() {
        Drawable drawable = this.f992b;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    void c() {
        Drawable drawable = this.f992b;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f991a.getDrawableState())) {
            this.f991a.invalidateDrawable(drawable);
        }
    }

    void a(Canvas canvas) {
        if (this.f992b != null) {
            int max = this.f991a.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f992b.getIntrinsicWidth();
                int intrinsicHeight = this.f992b.getIntrinsicHeight();
                int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f992b.setBounds(-i, -i2, i, i2);
                float width = ((this.f991a.getWidth() - this.f991a.getPaddingLeft()) - this.f991a.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(this.f991a.getPaddingLeft(), this.f991a.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.f992b.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }
}
