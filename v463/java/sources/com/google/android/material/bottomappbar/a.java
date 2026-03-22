package com.google.android.material.bottomappbar;

import com.google.android.material.i.b;
import com.google.android.material.i.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f4875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f4876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f4877c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f4878d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f4879e;

    @Override // com.google.android.material.i.b
    public void a(float f, float f2, d dVar) {
        float f3 = this.f4877c;
        if (f3 == 0.0f) {
            dVar.b(f, 0.0f);
            return;
        }
        float f4 = ((this.f4876b * 2.0f) + f3) / 2.0f;
        float f5 = f2 * this.f4875a;
        float f6 = (f / 2.0f) + this.f4879e;
        float f7 = (this.f4878d * f2) + ((1.0f - f2) * f4);
        if (f7 / f4 >= 1.0f) {
            dVar.b(f, 0.0f);
            return;
        }
        float f8 = f4 + f5;
        float f9 = f7 + f5;
        float fSqrt = (float) Math.sqrt((f8 * f8) - (f9 * f9));
        float f10 = f6 - fSqrt;
        float f11 = f6 + fSqrt;
        float degrees = (float) Math.toDegrees(Math.atan(fSqrt / f9));
        float f12 = 90.0f - degrees;
        float f13 = f10 - f5;
        dVar.b(f13, 0.0f);
        float f14 = f5 * 2.0f;
        dVar.a(f13, 0.0f, f10 + f5, f14, 270.0f, degrees);
        dVar.a(f6 - f4, (-f4) - f7, f6 + f4, f4 - f7, 180.0f - f12, (f12 * 2.0f) - 180.0f);
        dVar.a(f11 - f5, 0.0f, f11 + f5, f14, 270.0f - degrees, degrees);
        dVar.b(f, 0.0f);
    }

    void a(float f) {
        this.f4879e = f;
    }

    float a() {
        return this.f4879e;
    }

    float b() {
        return this.f4878d;
    }

    void b(float f) {
        this.f4878d = f;
    }

    float c() {
        return this.f4877c;
    }

    void c(float f) {
        this.f4877c = f;
    }

    float d() {
        return this.f4876b;
    }

    void d(float f) {
        this.f4876b = f;
    }

    float e() {
        return this.f4875a;
    }

    void e(float f) {
        this.f4875a = f;
    }
}
