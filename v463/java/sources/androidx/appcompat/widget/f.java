package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class f extends PopupWindow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f986a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f987b;

    static {
        f986a = Build.VERSION.SDK_INT < 21;
    }

    public f(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(context, attributeSet, i, i2);
    }

    private void a(Context context, AttributeSet attributeSet, int i, int i2) {
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, a.j.PopupWindow, i, i2);
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.PopupWindow_overlapAnchor)) {
            a(tintTypedArrayObtainStyledAttributes.getBoolean(a.j.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(a.j.PopupWindow_android_popupBackground));
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        if (f986a && this.f987b) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        if (f986a && this.f987b) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        if (f986a && this.f987b) {
            i2 -= view.getHeight();
        }
        super.update(view, i, i2, i3, i4);
    }

    private void a(boolean z) {
        if (f986a) {
            this.f987b = z;
        } else {
            androidx.core.widget.h.a(this, z);
        }
    }
}
