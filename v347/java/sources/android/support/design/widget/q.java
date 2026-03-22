package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.a.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f450a = {a.C0032a.colorPrimary};

    static void a(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(f450a);
        boolean z = typedArrayObtainStyledAttributes.hasValue(0) ? false : true;
        typedArrayObtainStyledAttributes.recycle();
        if (z) {
            throw new IllegalArgumentException("You need to use a Theme.AppCompat theme (or descendant) with the design library.");
        }
    }
}
