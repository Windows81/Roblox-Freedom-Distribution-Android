package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.v7.a.a;
import android.util.AttributeSet;
import android.widget.RadioButton;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatRadioButton extends RadioButton implements android.support.v4.widget.o {
    private final f mCompoundButtonHelper;
    private final k mTextHelper;

    public AppCompatRadioButton(Context context) {
        this(context, null);
    }

    public AppCompatRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0032a.radioButtonStyle);
    }

    public AppCompatRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(TintContextWrapper.wrap(context), attributeSet, i);
        this.mCompoundButtonHelper = new f(this);
        this.mCompoundButtonHelper.a(attributeSet, i);
        this.mTextHelper = new k(this);
        this.mTextHelper.a(attributeSet, i);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        if (this.mCompoundButtonHelper != null) {
            this.mCompoundButtonHelper.c();
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(android.support.v7.b.a.b.b(getContext(), i));
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        return this.mCompoundButtonHelper != null ? this.mCompoundButtonHelper.a(compoundPaddingLeft) : compoundPaddingLeft;
    }

    @Override // android.support.v4.widget.o
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        if (this.mCompoundButtonHelper != null) {
            this.mCompoundButtonHelper.a(colorStateList);
        }
    }

    public ColorStateList getSupportButtonTintList() {
        if (this.mCompoundButtonHelper != null) {
            return this.mCompoundButtonHelper.a();
        }
        return null;
    }

    @Override // android.support.v4.widget.o
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        if (this.mCompoundButtonHelper != null) {
            this.mCompoundButtonHelper.a(mode);
        }
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        if (this.mCompoundButtonHelper != null) {
            return this.mCompoundButtonHelper.b();
        }
        return null;
    }
}
