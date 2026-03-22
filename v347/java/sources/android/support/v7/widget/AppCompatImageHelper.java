package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.support.v7.a.a;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class AppCompatImageHelper {
    private y mImageTint;
    private y mInternalImageTint;
    private y mTmpInfo;
    private final ImageView mView;

    public AppCompatImageHelper(ImageView imageView) {
        this.mView = imageView;
    }

    public void loadFromAttributes(AttributeSet attributeSet, int i) {
        int resourceId;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), attributeSet, a.j.AppCompatImageView, i, 0);
        try {
            Drawable drawable = this.mView.getDrawable();
            if (drawable == null && (resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = android.support.v7.b.a.b.b(this.mView.getContext(), resourceId)) != null) {
                this.mView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                DrawableUtils.fixDrawable(drawable);
            }
            if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatImageView_tint)) {
                android.support.v4.widget.i.a(this.mView, tintTypedArrayObtainStyledAttributes.getColorStateList(a.j.AppCompatImageView_tint));
            }
            if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatImageView_tintMode)) {
                android.support.v4.widget.i.a(this.mView, DrawableUtils.parseTintMode(tintTypedArrayObtainStyledAttributes.getInt(a.j.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            tintTypedArrayObtainStyledAttributes.recycle();
        }
    }

    public void setImageResource(int i) {
        if (i != 0) {
            Drawable drawableB = android.support.v7.b.a.b.b(this.mView.getContext(), i);
            if (drawableB != null) {
                DrawableUtils.fixDrawable(drawableB);
            }
            this.mView.setImageDrawable(drawableB);
        } else {
            this.mView.setImageDrawable(null);
        }
        applySupportImageTint();
    }

    boolean hasOverlappingRendering() {
        return Build.VERSION.SDK_INT < 21 || !(this.mView.getBackground() instanceof RippleDrawable);
    }

    void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.mImageTint == null) {
            this.mImageTint = new y();
        }
        this.mImageTint.f1728a = colorStateList;
        this.mImageTint.f1731d = true;
        applySupportImageTint();
    }

    ColorStateList getSupportImageTintList() {
        if (this.mImageTint != null) {
            return this.mImageTint.f1728a;
        }
        return null;
    }

    void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.mImageTint == null) {
            this.mImageTint = new y();
        }
        this.mImageTint.f1729b = mode;
        this.mImageTint.f1730c = true;
        applySupportImageTint();
    }

    PorterDuff.Mode getSupportImageTintMode() {
        if (this.mImageTint != null) {
            return this.mImageTint.f1729b;
        }
        return null;
    }

    void applySupportImageTint() {
        Drawable drawable = this.mView.getDrawable();
        if (drawable != null) {
            DrawableUtils.fixDrawable(drawable);
        }
        if (drawable != null) {
            if (!shouldApplyFrameworkTintUsingColorFilter() || !applyFrameworkTintUsingColorFilter(drawable)) {
                if (this.mImageTint != null) {
                    AppCompatDrawableManager.tintDrawable(drawable, this.mImageTint, this.mView.getDrawableState());
                } else if (this.mInternalImageTint != null) {
                    AppCompatDrawableManager.tintDrawable(drawable, this.mInternalImageTint, this.mView.getDrawableState());
                }
            }
        }
    }

    void setInternalImageTint(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.mInternalImageTint == null) {
                this.mInternalImageTint = new y();
            }
            this.mInternalImageTint.f1728a = colorStateList;
            this.mInternalImageTint.f1731d = true;
        } else {
            this.mInternalImageTint = null;
        }
        applySupportImageTint();
    }

    private boolean shouldApplyFrameworkTintUsingColorFilter() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.mInternalImageTint != null : i == 21;
    }

    private boolean applyFrameworkTintUsingColorFilter(Drawable drawable) {
        if (this.mTmpInfo == null) {
            this.mTmpInfo = new y();
        }
        y yVar = this.mTmpInfo;
        yVar.a();
        ColorStateList colorStateListA = android.support.v4.widget.i.a(this.mView);
        if (colorStateListA != null) {
            yVar.f1731d = true;
            yVar.f1728a = colorStateListA;
        }
        PorterDuff.Mode modeB = android.support.v4.widget.i.b(this.mView);
        if (modeB != null) {
            yVar.f1730c = true;
            yVar.f1729b = modeB;
        }
        if (!yVar.f1731d && !yVar.f1730c) {
            return false;
        }
        AppCompatDrawableManager.tintDrawable(drawable, yVar, this.mView.getDrawableState());
        return true;
    }
}
