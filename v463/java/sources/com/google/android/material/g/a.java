package com.google.android.material.g;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.StateSet;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f4952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f4953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f4954c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f4955d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f4956e;
    private static final int[] f;
    private static final int[] g;
    private static final int[] h;
    private static final int[] i;
    private static final int[] j;

    static {
        f4952a = Build.VERSION.SDK_INT >= 21;
        f4953b = new int[]{R.attr.state_pressed};
        f4954c = new int[]{R.attr.state_hovered, R.attr.state_focused};
        f4955d = new int[]{R.attr.state_focused};
        f4956e = new int[]{R.attr.state_hovered};
        f = new int[]{R.attr.state_selected, R.attr.state_pressed};
        g = new int[]{R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};
        h = new int[]{R.attr.state_selected, R.attr.state_focused};
        i = new int[]{R.attr.state_selected, R.attr.state_hovered};
        j = new int[]{R.attr.state_selected};
    }

    public static ColorStateList a(ColorStateList colorStateList) {
        if (f4952a) {
            return new ColorStateList(new int[][]{j, StateSet.NOTHING}, new int[]{a(colorStateList, f), a(colorStateList, f4953b)});
        }
        int[] iArr = f;
        int[] iArr2 = g;
        int[] iArr3 = h;
        int[] iArr4 = i;
        int[] iArr5 = f4953b;
        int[] iArr6 = f4954c;
        int[] iArr7 = f4955d;
        int[] iArr8 = f4956e;
        return new ColorStateList(new int[][]{iArr, iArr2, iArr3, iArr4, j, iArr5, iArr6, iArr7, iArr8, StateSet.NOTHING}, new int[]{a(colorStateList, iArr), a(colorStateList, iArr2), a(colorStateList, iArr3), a(colorStateList, iArr4), 0, a(colorStateList, iArr5), a(colorStateList, iArr6), a(colorStateList, iArr7), a(colorStateList, iArr8), 0});
    }

    private static int a(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return f4952a ? a(colorForState) : colorForState;
    }

    private static int a(int i2) {
        return androidx.core.graphics.a.b(i2, Math.min(Color.alpha(i2) * 2, 255));
    }
}
