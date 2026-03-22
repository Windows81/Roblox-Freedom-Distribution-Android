package com.google.android.material.a;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g implements TypeEvaluator<Matrix> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f4785a = new float[9];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float[] f4786b = new float[9];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix f4787c = new Matrix();

    @Override // android.animation.TypeEvaluator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f4785a);
        matrix2.getValues(this.f4786b);
        for (int i = 0; i < 9; i++) {
            float[] fArr = this.f4786b;
            float f2 = fArr[i];
            float[] fArr2 = this.f4785a;
            fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
        }
        this.f4787c.setValues(this.f4786b);
        return this.f4787c;
    }
}
