package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.core.f.a;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AppCompatTextView extends TextView implements androidx.core.h.q, androidx.core.widget.b {
    private final c mBackgroundTintHelper;
    private Future<androidx.core.f.a> mPrecomputedTextFuture;
    private final i mTextHelper;

    public AppCompatTextView(Context context) {
        this(context, null);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) {
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

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        i iVar = this.mTextHelper;
        if (iVar != null) {
            iVar.a(context, i);
        }
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

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return e.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            androidx.core.widget.i.b(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            androidx.core.widget.i.c(this, i);
        }
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return androidx.core.widget.i.b(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return androidx.core.widget.i.c(this);
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        androidx.core.widget.i.d(this, i);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.i.a(this, callback));
    }

    public a.C0029a getTextMetricsParamsCompat() {
        return androidx.core.widget.i.d(this);
    }

    public void setTextMetricsParamsCompat(a.C0029a c0029a) {
        androidx.core.widget.i.a(this, c0029a);
    }

    public void setPrecomputedText(androidx.core.f.a aVar) {
        androidx.core.widget.i.a(this, aVar);
    }

    private void consumeTextFutureAndSetBlocking() {
        Future<androidx.core.f.a> future = this.mPrecomputedTextFuture;
        if (future != null) {
            try {
                this.mPrecomputedTextFuture = null;
                androidx.core.widget.i.a(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        consumeTextFutureAndSetBlocking();
        return super.getText();
    }

    public void setTextFuture(Future<androidx.core.f.a> future) {
        this.mPrecomputedTextFuture = future;
        requestLayout();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        consumeTextFutureAndSetBlocking();
        super.onMeasure(i, i2);
    }
}
