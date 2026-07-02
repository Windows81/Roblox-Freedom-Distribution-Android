package android.support.v7.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.v7.a.a;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatAutoCompleteTextView extends AutoCompleteTextView implements android.support.v4.view.r {
    private static final int[] TINT_ATTRS = {R.attr.popupBackground};
    private final e mBackgroundTintHelper;
    private final k mTextHelper;

    public AppCompatAutoCompleteTextView(Context context) {
        this(context, null);
    }

    public AppCompatAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0032a.autoCompleteTextViewStyle);
    }

    public AppCompatAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(TintContextWrapper.wrap(context), attributeSet, i);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getContext(), attributeSet, TINT_ATTRS, i, 0);
        if (tintTypedArrayObtainStyledAttributes.hasValue(0)) {
            setDropDownBackgroundDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(0));
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        this.mBackgroundTintHelper = new e(this);
        this.mBackgroundTintHelper.a(attributeSet, i);
        this.mTextHelper = k.a(this);
        this.mTextHelper.a(attributeSet, i);
        this.mTextHelper.a();
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(android.support.v7.b.a.b.b(getContext(), i));
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

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.mTextHelper != null) {
            this.mTextHelper.a(context, i);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return g.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }
}
