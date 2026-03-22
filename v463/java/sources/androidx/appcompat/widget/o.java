package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class o {
    private static final ThreadLocal<TypedValue> i = new ThreadLocal<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int[] f1021a = {-16842910};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final int[] f1022b = {R.attr.state_focused};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final int[] f1023c = {R.attr.state_activated};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final int[] f1024d = {R.attr.state_pressed};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int[] f1025e = {R.attr.state_checked};
    static final int[] f = {R.attr.state_selected};
    static final int[] g = {-16842919, -16842908};
    static final int[] h = new int[0];
    private static final int[] j = new int[1];

    public static int a(Context context, int i2) {
        int[] iArr = j;
        iArr[0] = i2;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, (AttributeSet) null, iArr);
        try {
            return tintTypedArrayObtainStyledAttributes.getColor(0, 0);
        } finally {
            tintTypedArrayObtainStyledAttributes.recycle();
        }
    }

    public static ColorStateList b(Context context, int i2) {
        int[] iArr = j;
        iArr[0] = i2;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, (AttributeSet) null, iArr);
        try {
            return tintTypedArrayObtainStyledAttributes.getColorStateList(0);
        } finally {
            tintTypedArrayObtainStyledAttributes.recycle();
        }
    }

    public static int c(Context context, int i2) {
        ColorStateList colorStateListB = b(context, i2);
        if (colorStateListB != null && colorStateListB.isStateful()) {
            return colorStateListB.getColorForState(f1021a, colorStateListB.getDefaultColor());
        }
        TypedValue typedValueA = a();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValueA, true);
        return a(context, i2, typedValueA.getFloat());
    }

    private static TypedValue a() {
        TypedValue typedValue = i.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        i.set(typedValue2);
        return typedValue2;
    }

    static int a(Context context, int i2, float f2) {
        return androidx.core.graphics.a.b(a(context, i2), Math.round(Color.alpha(r0) * f2));
    }
}
