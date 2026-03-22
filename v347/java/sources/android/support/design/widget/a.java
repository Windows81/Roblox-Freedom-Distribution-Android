package android.support.design.widget;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Interpolator f358a = new LinearInterpolator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Interpolator f359b = new android.support.v4.view.b.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Interpolator f360c = new android.support.v4.view.b.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Interpolator f361d = new android.support.v4.view.b.c();
    static final Interpolator e = new DecelerateInterpolator();

    static float a(float f, float f2, float f3) {
        return ((f2 - f) * f3) + f;
    }

    static int a(int i, int i2, float f) {
        return Math.round((i2 - i) * f) + i;
    }
}
