package android.support.v7.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatTextView extends TextView implements android.support.v4.view.r, android.support.v4.widget.b {
    private final e mBackgroundTintHelper;
    private final k mTextHelper;

    public AppCompatTextView(Context context) {
        this(context, null);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) {
        super(TintContextWrapper.wrap(context), attributeSet, i);
        this.mBackgroundTintHelper = new e(this);
        this.mBackgroundTintHelper.a(attributeSet, i);
        this.mTextHelper = k.a(this);
        this.mTextHelper.a(attributeSet, i);
        this.mTextHelper.a();
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.a(drawable);
        }
    }

    @Override // android.support.v4.view.r
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.a(colorStateList);
        }
    }

    @Override // android.support.v4.view.r
    public ColorStateList getSupportBackgroundTintList() {
        if (this.mBackgroundTintHelper != null) {
            return this.mBackgroundTintHelper.a();
        }
        return null;
    }

    @Override // android.support.v4.view.r
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.a(mode);
        }
    }

    @Override // android.support.v4.view.r
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.mBackgroundTintHelper != null) {
            return this.mBackgroundTintHelper.b();
        }
        return null;
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.mTextHelper != null) {
            this.mTextHelper.a(context, i);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.c();
        }
        if (this.mTextHelper != null) {
            this.mTextHelper.a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mTextHelper != null) {
            this.mTextHelper.a(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (f1146a) {
            super.setTextSize(i, f);
        } else if (this.mTextHelper != null) {
            this.mTextHelper.a(i, f);
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.mTextHelper != null && !f1146a && this.mTextHelper.c()) {
            this.mTextHelper.b();
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (f1146a) {
            super.setAutoSizeTextTypeWithDefaults(i);
        } else if (this.mTextHelper != null) {
            this.mTextHelper.a(i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (f1146a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        } else if (this.mTextHelper != null) {
            this.mTextHelper.a(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (f1146a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
        } else if (this.mTextHelper != null) {
            this.mTextHelper.a(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (f1146a) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        if (this.mTextHelper != null) {
            return this.mTextHelper.d();
        }
        return 0;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (f1146a) {
            return super.getAutoSizeStepGranularity();
        }
        if (this.mTextHelper != null) {
            return this.mTextHelper.e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (f1146a) {
            return super.getAutoSizeMinTextSize();
        }
        if (this.mTextHelper != null) {
            return this.mTextHelper.f();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (f1146a) {
            return super.getAutoSizeMaxTextSize();
        }
        if (this.mTextHelper != null) {
            return this.mTextHelper.g();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (f1146a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        if (this.mTextHelper != null) {
            return this.mTextHelper.h();
        }
        return new int[0];
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return g.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }
}
