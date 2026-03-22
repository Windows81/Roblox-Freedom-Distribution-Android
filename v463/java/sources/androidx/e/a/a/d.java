package androidx.e.a.a;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class d implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f1591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f1592b;

    protected d(float[] fArr) {
        this.f1591a = fArr;
        this.f1592b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f1591a;
        int iMin = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f2 = this.f1592b;
        float f3 = (f - (iMin * f2)) / f2;
        float[] fArr2 = this.f1591a;
        return fArr2[iMin] + (f3 * (fArr2[iMin + 1] - fArr2[iMin]));
    }
}
