package android.support.v4.view.b;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
abstract class d implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f1073a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f1074b;

    public d(float[] fArr) {
        this.f1073a = fArr;
        this.f1074b = 1.0f / (this.f1073a.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        int iMin = Math.min((int) ((this.f1073a.length - 1) * f), this.f1073a.length - 2);
        return ((this.f1073a[iMin + 1] - this.f1073a[iMin]) * ((f - (iMin * this.f1074b)) / this.f1074b)) + this.f1073a[iMin];
    }
}
