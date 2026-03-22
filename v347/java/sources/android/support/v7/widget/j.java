package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.v7.a.a;
import android.util.AttributeSet;
import android.widget.SeekBar;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class j extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SeekBar f1668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Drawable f1669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ColorStateList f1670c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PorterDuff.Mode f1671d;
    private boolean e;
    private boolean f;

    j(SeekBar seekBar) {
        super(seekBar);
        this.f1670c = null;
        this.f1671d = null;
        this.e = false;
        this.f = false;
        this.f1668a = seekBar;
    }

    @Override // android.support.v7.widget.i
    void a(AttributeSet attributeSet, int i) {
        super.a(attributeSet, i);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.f1668a.getContext(), attributeSet, a.j.AppCompatSeekBar, i, 0);
        Drawable drawableIfKnown = tintTypedArrayObtainStyledAttributes.getDrawableIfKnown(a.j.AppCompatSeekBar_android_thumb);
        if (drawableIfKnown != null) {
            this.f1668a.setThumb(drawableIfKnown);
        }
        a(tintTypedArrayObtainStyledAttributes.getDrawable(a.j.AppCompatSeekBar_tickMark));
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatSeekBar_tickMarkTintMode)) {
            this.f1671d = DrawableUtils.parseTintMode(tintTypedArrayObtainStyledAttributes.getInt(a.j.AppCompatSeekBar_tickMarkTintMode, -1), this.f1671d);
            this.f = true;
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatSeekBar_tickMarkTint)) {
            this.f1670c = tintTypedArrayObtainStyledAttributes.getColorStateList(a.j.AppCompatSeekBar_tickMarkTint);
            this.e = true;
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        d();
    }

    void a(Drawable drawable) {
        if (this.f1669b != null) {
            this.f1669b.setCallback(null);
        }
        this.f1669b = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f1668a);
            android.support.v4.b.a.a.b(drawable, android.support.v4.view.s.e(this.f1668a));
            if (drawable.isStateful()) {
                drawable.setState(this.f1668a.getDrawableState());
            }
            d();
        }
        this.f1668a.invalidate();
    }

    private void d() {
        if (this.f1669b != null) {
            if (this.e || this.f) {
                this.f1669b = android.support.v4.b.a.a.g(this.f1669b.mutate());
                if (this.e) {
                    android.support.v4.b.a.a.a(this.f1669b, this.f1670c);
                }
                if (this.f) {
                    android.support.v4.b.a.a.a(this.f1669b, this.f1671d);
                }
                if (this.f1669b.isStateful()) {
                    this.f1669b.setState(this.f1668a.getDrawableState());
                }
            }
        }
    }

    void b() {
        if (this.f1669b != null) {
            this.f1669b.jumpToCurrentState();
        }
    }

    void c() {
        Drawable drawable = this.f1669b;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f1668a.getDrawableState())) {
            this.f1668a.invalidateDrawable(drawable);
        }
    }

    void a(Canvas canvas) {
        int max;
        if (this.f1669b != null && (max = this.f1668a.getMax()) > 1) {
            int intrinsicWidth = this.f1669b.getIntrinsicWidth();
            int intrinsicHeight = this.f1669b.getIntrinsicHeight();
            int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
            int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
            this.f1669b.setBounds(-i, -i2, i, i2);
            float width = ((this.f1668a.getWidth() - this.f1668a.getPaddingLeft()) - this.f1668a.getPaddingRight()) / max;
            int iSave = canvas.save();
            canvas.translate(this.f1668a.getPaddingLeft(), this.f1668a.getHeight() / 2);
            for (int i3 = 0; i3 <= max; i3++) {
                this.f1669b.draw(canvas);
                canvas.translate(width, 0.0f);
            }
            canvas.restoreToCount(iSave);
        }
    }
}
