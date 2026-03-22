package com.google.android.gms.internal.ads;

import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class alg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f4164a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f4165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f4166c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f4167d;
    private final int e;

    public alg(float f, float f2, float f3, float f4, int i) {
        this.f4164a = f;
        this.f4165b = f2;
        this.f4166c = f + f3;
        this.f4167d = f2 + f4;
        this.e = i;
    }

    final float a() {
        return this.f4164a;
    }

    final float b() {
        return this.f4165b;
    }

    final float c() {
        return this.f4166c;
    }

    final float d() {
        return this.f4167d;
    }

    final int e() {
        return this.e;
    }
}
