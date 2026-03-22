package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AppCompatImageHelper {
    private p mImageTint;
    private p mInternalImageTint;
    private p mTmpInfo;
    private final ImageView mView;

    public AppCompatImageHelper(ImageView imageView) {
        this.mView = imageView;
    }

    public void loadFromAttributes(AttributeSet attributeSet, int i) {
        int resourceId;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), attributeSet, a.j.AppCompatImageView, i, 0);
        try {
            Drawable drawable = this.mView.getDrawable();
            if (drawable == null && (resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = androidx.appcompat.a.a.a.b(this.mView.getContext(), resourceId)) != null) {
                this.mView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                DrawableUtils.fixDrawable(drawable);
            }
            if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatImageView_tint)) {
                androidx.core.widget.e.a(this.mView, tintTypedArrayObtainStyledAttributes.getColorStateList(a.j.AppCompatImageView_tint));
            }
            if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.AppCompatImageView_tintMode)) {
                androidx.core.widget.e.a(this.mView, DrawableUtils.parseTintMode(tintTypedArrayObtainStyledAttributes.getInt(a.j.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            tintTypedArrayObtainStyledAttributes.recycle();
        }
    }

    public void setImageResource(int i) {
        if (i != 0) {
            Drawable drawableB = androidx.appcompat.a.a.a.b(this.mView.getContext(), i);
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
            this.mImageTint = new p();
        }
        this.mImageTint.f1026a = colorStateList;
        this.mImageTint.f1029d = true;
        applySupportImageTint();
    }

    ColorStateList getSupportImageTintList() {
        p pVar = this.mImageTint;
        if (pVar != null) {
            return pVar.f1026a;
        }
        return null;
    }

    void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.mImageTint == null) {
            this.mImageTint = new p();
        }
        this.mImageTint.f1027b = mode;
        this.mImageTint.f1028c = true;
        applySupportImageTint();
    }

    PorterDuff.Mode getSupportImageTintMode() {
        p pVar = this.mImageTint;
        if (pVar != null) {
            return pVar.f1027b;
        }
        return null;
    }

    void applySupportImageTint() {
        Drawable drawable = this.mView.getDrawable();
        if (drawable != null) {
            DrawableUtils.fixDrawable(drawable);
        }
        if (drawable != null) {
            if (shouldApplyFrameworkTintUsingColorFilter() && applyFrameworkTintUsingColorFilter(drawable)) {
                return;
            }
            p pVar = this.mImageTint;
            if (pVar != null) {
                AppCompatDrawableManager.tintDrawable(drawable, pVar, this.mView.getDrawableState());
                return;
            }
            p pVar2 = this.mInternalImageTint;
            if (pVar2 != null) {
                AppCompatDrawableManager.tintDrawable(drawable, pVar2, this.mView.getDrawableState());
            }
        }
    }

    void setInternalImageTint(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.mInternalImageTint == null) {
                this.mInternalImageTint = new p();
            }
            this.mInternalImageTint.f1026a = colorStateList;
            this.mInternalImageTint.f1029d = true;
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
            this.mTmpInfo = new p();
        }
        p pVar = this.mTmpInfo;
        pVar.a();
        ColorStateList colorStateListA = androidx.core.widget.e.a(this.mView);
        if (colorStateListA != null) {
            pVar.f1029d = true;
            pVar.f1026a = colorStateListA;
        }
        PorterDuff.Mode modeB = androidx.core.widget.e.b(this.mView);
        if (modeB != null) {
            pVar.f1028c = true;
            pVar.f1027b = modeB;
        }
        if (!pVar.f1029d && !pVar.f1028c) {
            return false;
        }
        AppCompatDrawableManager.tintDrawable(drawable, pVar, this.mView.getDrawableState());
        return true;
    }
}
