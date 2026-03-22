package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.appcompat.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AppCompatButton extends Button implements androidx.core.h.q, androidx.core.widget.b {
    private final c mBackgroundTintHelper;
    private final i mTextHelper;

    public AppCompatButton(Context context) {
        this(context, null);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0012a.buttonStyle);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet, int i) {
        super(TintContextWrapper.wrap(context), attributeSet, i);
        c cVar = new c(this);
        this.mBackgroundTintHelper = cVar;
        cVar.a(attributeSet, i);
        i iVar = new i(this);
        this.mTextHelper = iVar;
        iVar.a(attributeSet, i);
        this.mTextHelper.a();
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.a(drawable);
        }
    }

    @Override // androidx.core.h.q
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.a(colorStateList);
        }
    }

    @Override // androidx.core.h.q
    public ColorStateList getSupportBackgroundTintList() {
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            return cVar.a();
        }
        return null;
    }

    @Override // androidx.core.h.q
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.a(mode);
        }
    }

    @Override // androidx.core.h.q
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            return cVar.b();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.c();
        }
        i iVar = this.mTextHelper;
        if (iVar != null) {
            iVar.a();
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        i iVar = this.mTextHelper;
        if (iVar != null) {
            iVar.a(context, i);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        i iVar = this.mTextHelper;
        if (iVar != null) {
            iVar.a(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (f1532d) {
            super.setTextSize(i, f);
            return;
        }
        i iVar = this.mTextHelper;
        if (iVar != null) {
            iVar.a(i, f);
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.mTextHelper == null || f1532d || !this.mTextHelper.c()) {
            return;
        }
        this.mTextHelper.b();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (f1532d) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        i iVar = this.mTextHelper;
        if (iVar != null) {
            iVar.a(i);
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.b
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (f1532d) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        i iVar = this.mTextHelper;
        if (iVar != null) {
            iVar.a(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (f1532d) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        i iVar = this.mTextHelper;
        if (iVar != null) {
            iVar.a(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (f1532d) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        i iVar = this.mTextHelper;
        if (iVar != null) {
            return iVar.d();
        }
        return 0;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (f1532d) {
            return super.getAutoSizeStepGranularity();
        }
        i iVar = this.mTextHelper;
        if (iVar != null) {
            return iVar.e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (f1532d) {
            return super.getAutoSizeMinTextSize();
        }
        i iVar = this.mTextHelper;
        if (iVar != null) {
            return iVar.f();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (f1532d) {
            return super.getAutoSizeMaxTextSize();
        }
        i iVar = this.mTextHelper;
        if (iVar != null) {
            return iVar.g();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (f1532d) {
            return super.getAutoSizeTextAvailableSizes();
        }
        i iVar = this.mTextHelper;
        return iVar != null ? iVar.h() : new int[0];
    }

    public void setSupportAllCaps(boolean z) {
        i iVar = this.mTextHelper;
        if (iVar != null) {
            iVar.a(z);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.i.a(this, callback));
    }
}
